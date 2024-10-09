# iruby-chartkick [![build](https://github.com/Absolventa/iruby-chartkick/actions/workflows/build.yml/badge.svg)](https://github.com/Absolventa/iruby-chartkick/actions/workflows/build.yml)

You like writing [Ruby within Juypter](https://github.com/SciRuby/iruby/) notebooks?  Awesome, you're not alone - we do so, too ☀️ Since we also fell in love with the handy charting API of [ankane/chartkick](https://github.com/ankane/chartkick), we wrote this little gem bringing them together.

`iruby-chartkick` was made for easy plug-n-play plotting data using the awesomeness of chartkick within IRuby-backed Jupyter notebooks.

### Installation

	gem install iruby-chartkick

### Usage

You can either include the module `IRuby::Chartkick` and use the wrapper methods, like `line_chart`:

```ruby
include IRuby::Chartkick

data = {
  2019 => 1,
  2020 => 122,
  2021 => 34
}

line_chart(data)
```

Or you use the chart wrapper classes directly:

```ruby
include IRuby::Chartkick

data = {
  2019 => 1,
  2020 => 122,
  2021 => 34
}

IRuby::Chartkick::LineChart.new(data).plot
```

### Examples:

```ruby
include IRuby::Chartkick

data = [
  {
    name: "Monkeys",
    data: {
      2010 => 20,
      2011 => 190,
      2012 => 188,
      2013 => 230,
      2014 => 422,
      2015 => 56,
      2016 => 299,
      2019 => 100
    }
  },
  {
    name: "Pirates",
    data: {
      2010 => 20,
      2011 => 90,
      2012 => 488,
      2013 => 430,
      2014 => 122,
      2015 => 6,
      2016 => 399,
      2019 => 500
    }
  }
]
```

#### LineChart

```ruby
line_chart(data)
```
![LineChart](https://user-images.githubusercontent.com/3856862/136750966-3fe8908d-356c-477e-8c0e-220bc302d07e.png)

```ruby
line_chart(data, points: false)
```
![LineChart](https://user-images.githubusercontent.com/3856862/136767403-a2839f21-d6af-45af-a710-2f9f0ed2203c.png)

```ruby
line_chart(data, points: false, width: "700px", min: 50, max: 300)
```
![LineChart](https://user-images.githubusercontent.com/3856862/136751184-7d96c152-ec1f-490a-9676-0ea16606addf.png)

#### AreaChart

```ruby
area_chart(data)
```
![AreaChart](https://user-images.githubusercontent.com/3856862/136751437-9ceb092c-b1a1-4aee-a868-91a0ac3e9cbc.png)

#### ColumnChart

```ruby
column_chart(data)
```
![ColumnChart](https://user-images.githubusercontent.com/3856862/136751574-252b40cb-b842-41ff-8a25-57695eb4e5b0.png)

#### BarChart

```ruby
bar_chart(data)
```
![BarChart](https://user-images.githubusercontent.com/3856862/136751822-8383166d-894b-42fd-8ea7-fecf00964567.png)

#### ScatterChart

```ruby
scatter_chart(data)
```
![ScatterChart](https://user-images.githubusercontent.com/3856862/136751938-35acbdc7-baee-4262-ac67-1fe1262f071c.png)

#### PieChart

```ruby
include IRuby::Chartkick

data = [
  ["Blueberry", 44],
  ["Strawberry", 23],
  ["Banana", 22],
  ["Apple", 21],
  ["Grape", 13]
]

pie_chart(data)
```
![PieChart](https://user-images.githubusercontent.com/3856862/136752074-d5bc9ecb-b046-4b84-9108-546326125db4.png)
