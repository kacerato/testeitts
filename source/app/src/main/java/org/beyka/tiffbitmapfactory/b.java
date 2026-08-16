package org.beyka.tiffbitmapfactory;

public enum b {
    NONE(1),
    CCITTRLE(2),
    CCITTFAX3(3),
    CCITTFAX4(4),
    LZW(5),
    JPEG(7),
    PACKBITS(32773),
    DEFLATE(32946),
    ADOBE_DEFLATE(8),
    OTHER(0);

    final int ordinal;

    b(int i10) {
        this.ordinal = i10;
    }
}
