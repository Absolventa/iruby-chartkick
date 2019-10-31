# iruby-chartkick [![Build Status](https://travis-ci.com/Absolventa/iruby-chartkick.svg?branch=master)](https://travis-ci.com/Absolventa/iruby-chartkick)

You like writing [Ruby within Juypter](https://github.com/SciRuby/iruby/) notebooks?  Awesome, you're not alone - we do so, too ☀️ Since we also fell in love with the handy charting API of [ankane/chartkick](https://github.com/ankane/chartkick), we wrote this little gem bringing them together.

`iruby-chartkick` was made for easy plug-n-play plotting data using the awesomeness of chartkick within IRuby-backed Jupyter notebooks.

### Installation

		gem install iruby-chartkick

### Usage

You can either include the module `IRuby::Chartkick` and use the wrapper methods, like `line_chart`:
	
		include IRuby::Chartkick
		
		data = {
			2019 => 1,
			2020 => 122,
  			2021 => 34
		}

		line_chart(data)

Or you use the chart wrapper classes directly: 

		data = {
			2019 => 1,
			2020 => 122,
  			2021 => 34
		}

		IRuby::Chartkick::LineChart.new(data).plot