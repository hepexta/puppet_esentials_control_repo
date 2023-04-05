node puppet.local {
  include role::master
}
node master.puppet.vm {
  include role::master
}
