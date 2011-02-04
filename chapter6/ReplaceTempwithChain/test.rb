require 'sample'

select = Select.with_option(1999)
select.add_option(2000)
select.add_option(2001)
select.add_option(2002)
p select
