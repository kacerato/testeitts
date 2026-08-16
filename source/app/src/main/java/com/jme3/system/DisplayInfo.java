package com.jme3.system;

import java.util.Objects;

public final class DisplayInfo {
    private long display;
    private int height;
    private String name;
    private boolean primary;
    private int rate;
    private int width;

    public DisplayInfo() {
        this(0L, 1080, 1920, 60, false, "Generic Monitor");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayInfo.class != obj.getClass()) {
            return false;
        }
        DisplayInfo displayInfo = (DisplayInfo) obj;
        if (this.display == displayInfo.display && this.width == displayInfo.width && this.height == displayInfo.height && this.rate == displayInfo.rate && this.primary == displayInfo.primary) {
            return Objects.equals(this.name, displayInfo.name);
        }
        return false;
    }

    public long getDisplay() {
        return this.display;
    }

    public int getHeight() {
        return this.height;
    }

    public String getName() {
        return this.name;
    }

    public int getRate() {
        return this.rate;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        long j10 = this.display;
        return ((((((((((291 + ((int) (j10 ^ (j10 >>> 32)))) * 97) + this.width) * 97) + this.height) * 97) + this.rate) * 97) + (this.primary ? 1 : 0)) * 97) + Objects.hashCode(this.name);
    }

    public boolean isPrimary() {
        return this.primary;
    }

    public void setDisplay(long j10) {
        this.display = j10;
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPrimary(boolean z10) {
        this.primary = z10;
    }

    public void setRate(int i10) {
        this.rate = i10;
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    public String toString() {
        String str;
        if (getDisplay() == 0) {
            return "NULL";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        sb2.append(getName());
        sb2.append("|");
        sb2.append(getDisplay());
        sb2.append(")");
        sb2.append(getWidth());
        sb2.append("x");
        sb2.append(getHeight());
        sb2.append("@");
        if (getRate() > 0) {
            str = getRate() + "Hz";
        } else {
            str = "[Unknown refresh rate]";
        }
        sb2.append(str);
        return sb2.toString();
    }

    public DisplayInfo(long j10, int i10, int i11, int i12, boolean z10, String str) {
        this.display = j10;
        this.width = i10;
        this.height = i11;
        this.rate = i12;
        this.primary = z10;
        this.name = str;
    }
}
