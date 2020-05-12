# Vlan config
# The following values tell the IBMCloud terraform provider the details about the new
# cluster it will create.
# If `cluster_exists` is set to `true` then these values are not needed
#
# These values apply to the following config:
# resource group: garage-dev-tools
# region: us-east
#
# The vlans selected are (id/num/router):
# public_vlan: 2745288/1798/fcr01a.wdc07
# private_vlan: 2745290/1583/bcr01a.wdc07
#
vlan_datacenter="wdc07"
public_vlan_id="2745288"
private_vlan_id="2745290"