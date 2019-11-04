# iruby-chartkick [![Build Status](https://travis-ci.com/Absolventa/iruby-chartkick.svg?branch=master)](https://travis-ci.com/Absolventa/iruby-chartkick)

You like writing [Ruby within Juypter](https://github.com/SciRuby/iruby/) notebooks?  Awesome, you're not alone - we do so, too ☀️ Since we also fell in love with the handy charting API of [ankane/chartkick](https://github.com/ankane/chartkick), we wrote this little gem bringing them together.

`iruby-chartkick` was made for easy plug-n-play plotting data using the awesomeness of chartkick within IRuby-backed Jupyter notebooks.

### Installation

	gem install iruby-chartkick

### Usage

You can either include the module `IRuby::Chartkick` and use the wrapper methods, like `line_chart`:
	
```Ruby
include IRuby::Chartkick
		
data = {
  2019 => 1,
  2020 => 122,
  2021 => 34
}
 
line_chart(data)
```

Or you use the chart wrapper classes directly: 

```Ruby
include IRuby::Chartkick
		
data = {
  2019 => 1,
  2020 => 122,
  2021 => 34
}

IRuby::Chartkick::LineChart.new(data).plot
```

### Examples:


![Bildschirmfoto 2019-11-04 um 16 57 36](https://user-images.githubusercontent.com/3685123/68135598-3be0bb00-ff24-11e9-9d09-237c8aeb15d8.png)
![Bildschirmfoto 2019-11-04 um 16 54 38](https://user-images.githubusercontent.com/3685123/68135613-426f3280-ff24-11e9-96a0-0e3cfe834524.png)
![Bildschirmfoto 2019-11-04 um 16 55 35](https://user-images.githubusercontent.com/3685123/68135621-456a2300-ff24-11e9-8de9-a95d6b5d67c6.png)
![Bildschirmfoto 2019-11-04 um 16 56 04](https://user-images.githubusercontent.com/3685123/68135631-47cc7d00-ff24-11e9-982a-90885b8ddf94.png)
![Bildschirmfoto 2019-11-04 um 16 56 17](https://user-images.githubusercontent.com/3685123/68135638-48fdaa00-ff24-11e9-9a51-36494509c3b7.png)
![Bildschirmfoto 2019-11-04 um 16 56 31](https://user-images.githubusercontent.com/3685123/68135648-4bf89a80-ff24-11e9-8ba0-fae17d670995.png)
![Bildschirmfoto 2019-11-04 um 16 47 49](https://user-images.githubusercontent.com/3685123/68135661-5024b800-ff24-11e9-96ad-9c4deba61c57.png)
![Bildschirmfoto 2019-11-04 um 16 56 17](https://user-images.githubusercontent.com/3685123/68135689-59158980-ff24-11e9-8fab-8ab529dfaeb4.png)
![Bildschirmfoto 2019-11-04 um 16 43 15](https://user-images.githubusercontent.com/3685123/68135699-5d41a700-ff24-11e9-9267-ee37516620c8.png)
![Bildschirmfoto 2019-11-04 um 16 46 17](https://user-images.githubusercontent.com/3685123/68135704-5f0b6a80-ff24-11e9-8165-e682ea70975d.png)
