package org.beyka.tiffbitmapfactory;

public enum e {
    TOP_LEFT(1),
    TOP_RIGHT(2),
    BOT_RIGHT(3),
    BOT_LEFT(4),
    LEFT_TOP(5),
    RIGHT_TOP(6),
    RIGHT_BOT(7),
    LEFT_BOT(8),
    UNAVAILABLE(0);

    final int ordinal;

    e(int i10) {
        this.ordinal = i10;
    }
}
