require "requirement"
require "requirements/fortran_requirement"
require "requirements/linux_requirement"
require "requirements/macos_requirement"
require "requirements/maximum_macos_requirement"
require "requirements/mpi_requirement"
require "requirements/osxfuse_requirement"
require "requirements/perl_requirement"
require "requirements/python_requirement"
require "requirements/java_requirement"
require "requirements/ruby_requirement"
require "requirements/tuntap_requirement"
require "requirements/unsigned_kext_requirement"
require "requirements/x11_requirement"
require "requirements/emacs_requirement"
require "requirements/arch_requirement"
require "requirements/xcode_requirement"

class GitRequirement < Requirement
  fatal true
  default_formula "git"
  satisfy { Utils.git_available? }
end

class SubversionRequirement < Requirement
  fatal true
  default_formula "subversion"
  satisfy { Utils.svn_available? }
end
