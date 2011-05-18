module Leaves
  extend self

  PATTERNS = ['show me the page', 'debug']

  def status
    `git status --porcelain`.split("\n")
  end

  def files
    status.reject { |f| f.match(/^ D/) }.map { |f| f[3..f.size] }
  end

  def find
    PATTERNS.each { |p| system "grep -H '#{p}' #{files.join(' ')}" }
  end

end
