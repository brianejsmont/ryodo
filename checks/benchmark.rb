#!/usr/bin/env ruby
# encoding: utf-8
$: << "../lib"
require "ryodo"
require "public_suffix"
require "benchmark"

DOMAINS = %w[
  NULL
  COM
  example.COM
  WwW.example.COM
  .com
  .example
  .example.com
  .example.example
  com.
  example.com.
  www.example.com.
  www.subdomain.example.com.
  example
  example.example
  b.example.example
  a.b.example.example
  local
  example.local
  b.example.local
  a.b.example.local
  biz
  domain.biz
  b.domain.biz
  a.b.domain.biz
  com
  example.com
  b.example.com
  a.b.example.com
  uk.com
  example.uk.com
  b.example.uk.com
  a.b.example.uk.com
  test.ac
  cy
  c.cy
  b.c.cy
  a.b.c.cy
  jp
  test.jp
  www.test.jp
  ac.jp
  test.ac.jp
  www.test.ac.jp
  kyoto.jp
  c.kyoto.jp
  b.c.kyoto.jp
  a.b.c.kyoto.jp
  pref.kyoto.jp
  www.pref.kyoto.jp
  city.kyoto.jp
  www.city.kyoto.jp
  om
  test.om
  b.test.om
  a.b.test.om
  songfest.om
  www.songfest.om
  us
  test.us
  www.test.us
  ak.us
  test.ak.us
  www.test.ak.us
  k12.ak.us
  test.k12.ak.us
  www.test.k12.ak.us
  this.is.a.long.domain.com
  this.is.a.longer.domain.com
  this.is.an.even.longer.domain.com
  this.is.a.much.more.longer.domain.com
  this.is.an.super.awesome.long.long.domain.com
  this.is.an.super.awesome.long.and.longer.domain.com
  this.is.an.super.duper.awesome.long.and.longer.domain.com
  this.is.an.super.duper.incredible.awesome.long.and.longer.domain.com
  this.is.an.super.duper.incredible.and.awesome.long.and.longer.domain.com
  this.is.an.super.duper.unbelievable.incredible.and.awesome.long.and.longer.domain.com
]

LOOPS = 1_000

Benchmark.bmbm(15) do |b|

  b.report "ryodo" do
    LOOPS.times do
      DOMAINS.each do |domain|
        Ryodo.parse(domain).domain # returns nil if not valid
      end
    end
  end

  b.report "public_suffix" do
    LOOPS.times do
      DOMAINS.each do |domain|
        PublicSuffix.parse(domain).domain rescue nil # it raises if not valid in any way, so we rescue it
      end
    end
  end

end
