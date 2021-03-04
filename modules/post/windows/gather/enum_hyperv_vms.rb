##
# This module requires Metasploit: https://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

class MetasploitModule < Msf::Post
  include Msf::Post::Windows::Powershell

  def initialize(info = {})
    super(
      update_info(
        info,
        'Name' => 'Windows Hyper-V VM Enumeration',
        'Description' => %q{
          This module will check if the target machine is a Hyper-V host and, if it is, will return a list of all
          of the VMs running on the host, as well as stats such as their state, version, CPU Usage, uptime, and status.
        },
        'License' => MSF_LICENSE,
        'Platform' => ['win'],
        'SessionTypes' => ['meterpreter'],
        'Author' =>
          [
            'gwillcox-r7' # Metasploit post module
          ]
      )
      )
  end

  def run
    unless have_powershell?
      fail_with(Failure::NoAccess, "The target does not have PowerShell installed so we can't access the state of the Hyper-V VMs")
    end
    results = psh_exec('Get-VM')
    if results =~ /is not recognized as the name of a cmdlet/
      print_error('The target is not a Hyper-V host')
    elsif results =~ /do not have the required permission/
      print_error('You need to be running as an elevated admin or a user of the Hyper-V Administrators group to run this module')
      return
    end
    vprint_status(results)
    filtered_result = results.match(/^Name(?:.+\r\n){1,2000}/) # If your running more than 2000 VMs on a single host, you have my sincerest sympathy.
    if filtered_result.nil?
      print_error("Sorry, no results were found! Perhaps the target has Hyper-V installed but doesn't have any VMs set up?")
      return
    end
    print_status(filtered_result.to_s)
    loot_location = store_loot('host.hyperv_vms', 'text/plain', session, filtered_result.to_s, "#{session.session_host}.hyperv_vm_information.txt", "#{session.session_host} Hyper-V VM Information")
    print_good("Stored loot at #{loot_location}")
  end
end
