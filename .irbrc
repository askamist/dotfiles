$: << '/Users/amarnathsk/.gem/ruby/3.0.0/gems/amazing_print-1.5.0'
$: << '/Users/amarnathsk/.gem/ruby/3.0.0/gems/amazing_print-1.5.0/lib'

require "amazing_print"

if defined? AmazingPrint
    AmazingPrint.pry! if defined? Pry
    AmazingPrint.irb! if defined? IRB
end
