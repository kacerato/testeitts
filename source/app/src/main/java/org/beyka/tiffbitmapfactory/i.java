package org.beyka.tiffbitmapfactory;

public enum i {
    NONE(1),
    INCH(2),
    CENTIMETER(3);

    final int ordinal;

    i(int i10) {
        this.ordinal = i10;
    }
}
