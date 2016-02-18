#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.morph_wikinames(source: 'tmtmtmtm/saint-barthelemy-council', column: 'wikiname')
EveryPolitician::Wikidata.scrape_wikidata(names: { fr: names }, output: true)
EveryPolitician::Wikidata.notify_rebuilder

