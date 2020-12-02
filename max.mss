@buffer:            512;

@xlight:    'Noto Sans ExtraLight',
            'Noto Sans Arabic ExtraLight',
            'Noto Sans Armenian ExtraLight',
            'Noto Sans CJK JP Light',
            'Noto Sans Georgian ExtraLight',
            'Noto Sans Hebrew ExtraLight',
            'Noto Sans Khmer ExtraLight',
            'Noto Sans Lao ExtraLight',
            'Noto Sans Myanmar ExtraLight',
            'Noto Sans Tamil ExtraLight',
            'Noto Sans Thai ExtraLight',
            'Unifont Medium';
@light:     'Noto Sans Light',
            'Noto Sans Arabic Light',
            'Noto Sans Armenian Light',
            'Noto Sans CJK JP Light',
            'Noto Sans Georgian Light',
            'Noto Sans Hebrew Light',
            'Noto Sans Khmer Light',
            'Noto Sans Lao Light',
            'Noto Sans Myanmar Light',
            'Noto Sans Tamil Light',
            'Noto Sans Thai Light',
            'Unifont Medium';
@lighti:    'Noto Sans Light Italic',
            'Noto Sans Arabic Light',
            'Noto Sans Armenian Light',
            'Noto Sans CJK JP Light',
            'Noto Sans Georgian Light',
            'Noto Sans Hebrew Light',
            'Noto Sans Khmer Light',
            'Noto Sans Lao Light',
            'Noto Sans Myanmar Light',
            'Noto Sans Tamil Light',
            'Noto Sans Thai Light',
            'Unifont Medium';
@regular:   'Noto Sans Regular',
            'Noto Sans Arabic Regular',
            'Noto Sans Armenian Regular',
            'Noto Sans CJK JP Regular',
            'Noto Sans Georgian Regular',
            'Noto Sans Hebrew Regular',
            'Noto Sans Khmer Regular',
            'Noto Sans Lao Regular',
            'Noto Sans Myanmar Regular',
            'Noto Sans Tamil Regular',
            'Noto Sans Thai Regular',
            'Unifont Medium';
@medium:    'Noto Sans Medium',
            'Noto Sans Arabic Medium',
            'Noto Sans Armenian Medium',
            'Noto Sans CJK JP Medium',
            'Noto Sans Georgian Medium',
            'Noto Sans Hebrew Medium',
            'Noto Sans Khmer Medium',
            'Noto Sans Lao Medium',
            'Noto Sans Myanmar Medium',
            'Noto Sans Tamil Medium',
            'Noto Sans Thai Medium',
            'Unifont Medium';
@bold:      'Noto Sans Bold',
            'Noto Sans Arabic Bold',
            'Noto Sans Armenian Bold',
            'Noto Sans CJK JP Bold',
            'Noto Sans Georgian Bold',
            'Noto Sans Hebrew Bold',
            'Noto Sans Khmer Bold',
            'Noto Sans Lao Bold',
            'Noto Sans Myanmar Bold',
            'Noto Sans Tamil Bold',
            'Noto Sans Thai Bold',
            'Unifont Medium';


Map {
  buffer-size: @buffer;
  font-directory: url(./fonts);
}


#gabarits [zoom>=13]
{
  ::road {
    line-color: grey;
    line-width: 8;
    line-join: round;
    image-filters: agg-stack-blur(4,4);
    opacity: 0.75;
  }

  [rank<=1],
  [rank<=2][zoom>=14],
  [rank<=3][zoom>=15],
  [rank<=5][zoom>=16],
  [zoom>=17] {
    [maxheight =~ '^\d.*'] {
      height/shield-file: url('shield/France_road_sign_B12.svg');
      height/shield-transform: scale(0.07,0.07);
      height/shield-name: [maxheight]+"m";
      height/shield-size: 10;
      height/shield-line-spacing: -4;
      height/shield-face-name: @bold;
      height/shield-fill: #333;
      height/shield-spacing: 100;
      height/shield-margin: 4;
      height/shield-min-padding: 1;
      height/shield-allow-overlap: false;
    }
    [maxweight =~ '^\d.*'] {
      maxweight/shield-file: url('shield/France_road_sign_B13.svg');
      maxweight/shield-transform: scale(0.07,0.07);
      maxweight/shield-name: [maxweight]+"t";
      maxweight/shield-size: 10;
      maxweight/shield-line-spacing: -4;
      maxweight/shield-face-name: @bold;
      maxweight/shield-fill: #333;
      maxweight/shield-spacing: 100;
      maxweight/shield-margin: 4;
      maxweight/shield-min-padding: 1;
      maxweight/shield-allow-overlap: false;
    }
    [maxwidth =~ '^\d.*'] {
      maxwidth/shield-file: url('shield/France_road_sign_B11.svg');
      maxwidth/shield-transform: scale(0.07,0.07);
      maxwidth/shield-name: [maxwidth];
      maxwidth/shield-size: 10;
      maxwidth/shield-line-spacing: -4;
      maxwidth/shield-face-name: @bold;
      maxwidth/shield-fill: #333;
      maxwidth/shield-spacing: 100;
      maxwidth/shield-margin: 4;
      maxwidth/shield-min-padding: 1;
      maxwidth/shield-allow-overlap: false;
    }
    [hgv = 'no'],
    [goods = 'no'] {
      hgv/shield-file: url('shield/France_road_sign_B8.svg');
      hgv/shield-transform: scale(0.07,0.07);
      hgv/shield-name: '';
      hgv/shield-size: 10;
      hgv/shield-line-spacing: -4;
      hgv/shield-face-name: @bold;
      hgv/shield-fill: #333;
      hgv/shield-spacing: 100;
      hgv/shield-margin: 4;
      hgv/shield-min-padding: 1;
      hgv/shield-allow-overlap: false;
    }
    [hazmat = 'no'] {
      hgv/shield-file: url('shield/France_road_sign_B18c.svg');
      hgv/shield-transform: scale(0.07,0.07);
      hgv/shield-name: '';
      hgv/shield-size: 10;
      hgv/shield-line-spacing: -4;
      hgv/shield-face-name: @bold;
      hgv/shield-fill: #333;
      hgv/shield-spacing: 150;
      hgv/shield-margin: 4;
      hgv/shield-min-padding: 1;
      hgv/shield-allow-overlap: false;
    }
  }
}




