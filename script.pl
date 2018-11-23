#!/usr/bin/env perl

use warnings;
use strict;
use feature 'say';

# xs = $$('#FnStickerDetail > div.mdBox03Inner01 > div.MdCMN09DetailView.mdCMN09Sticker > div.mdCMN09ImgList > div > ul > li > div > span').map(x => x.style.backgroundImage).map(x => x.slice(5).split(';')[0]).join('\n')

my $images = <<"END";

https://stickershop......

END

my @images = split /\n/, $images;

for my $image (@images) {
  if ($image) {
    print `wget $image`;
  }
}
