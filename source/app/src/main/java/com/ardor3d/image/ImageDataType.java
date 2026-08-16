package com.ardor3d.image;

public enum ImageDataType {
    UnsignedByte(1.0f),
    Byte(1.0f),
    UnsignedShort(2.0f),
    Short(2.0f),
    UnsignedInt(4.0f),
    Int(4.0f),
    Float(4.0f),
    HalfFloat(2.0f);

    final float _bytesPerComponent;

    ImageDataType(float f10) {
        this._bytesPerComponent = f10;
    }

    public float getBytesPerComponent() {
        return this._bytesPerComponent;
    }
}
