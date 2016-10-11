class profile::base {
  notify { "Hello, my name is ${::hostname}": },
  notify { "This is a new message.": }
}
