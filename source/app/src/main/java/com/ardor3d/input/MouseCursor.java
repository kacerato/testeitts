package com.ardor3d.input;

import com.ardor3d.image.Image;
import com.ardor3d.image.ImageDataFormat;
import com.ardor3d.image.ImageDataType;
import com.ardor3d.util.geom.BufferUtils;
import w2.H;

public class MouseCursor {
    public static final MouseCursor SYSTEM_DEFAULT = new MouseCursor("system default", new Image(ImageDataFormat.RGBA, ImageDataType.UnsignedByte, 1, 1, BufferUtils.createByteBuffer(4), (int[]) null), 0, 0);
    private final int _hotspotX;
    private final int _hotspotY;
    private final Image _image;
    private final String _name;

    public MouseCursor(String str, Image image, int i10, int i11) {
        this._name = str;
        this._image = image;
        this._hotspotX = i10;
        this._hotspotY = i11;
        boolean z10 = false;
        H.B(i10 >= 0 && i10 < image.getWidth(), "hotspot X is out of bounds: 0 <= %s  < " + image.getWidth(), Integer.valueOf(i10));
        if (i11 >= 0 && i11 < image.getHeight()) {
            z10 = true;
        }
        H.B(z10, "hotspot Y is out of bounds: 0 <= %s  < " + image.getHeight(), Integer.valueOf(i11));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MouseCursor mouseCursor = (MouseCursor) obj;
        if (this._hotspotX != mouseCursor._hotspotX || this._hotspotY != mouseCursor._hotspotY) {
            return false;
        }
        Image image = this._image;
        if (image == null ? mouseCursor._image != null : !image.equals(mouseCursor._image)) {
            return false;
        }
        String str = this._name;
        String str2 = mouseCursor._name;
        return str == null ? str2 == null : str.equals(str2);
    }

    public int getHeight() {
        return this._image.getHeight();
    }

    public int getHotspotX() {
        return this._hotspotX;
    }

    public int getHotspotY() {
        return this._hotspotY;
    }

    public Image getImage() {
        return this._image;
    }

    public String getName() {
        return this._name;
    }

    public int getWidth() {
        return this._image.getWidth();
    }

    public int hashCode() {
        String str = this._name;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Image image = this._image;
        return ((((hashCode + (image != null ? image.hashCode() : 0)) * 31) + this._hotspotX) * 31) + this._hotspotY;
    }
}
