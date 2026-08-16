package com.ardor3d.image.util.dds;

enum D3d10ResourceDimension {
    D3D10_RESOURCE_DIMENSION_UNKNOWN(0),
    D3D10_RESOURCE_DIMENSION_BUFFER(1),
    D3D10_RESOURCE_DIMENSION_TEXTURE1D(2),
    D3D10_RESOURCE_DIMENSION_TEXTURE2D(3),
    D3D10_RESOURCE_DIMENSION_TEXTURE3D(4);

    int _value;

    D3d10ResourceDimension(int i10) {
        this._value = i10;
    }

    public static D3d10ResourceDimension forInt(int i10) {
        for (D3d10ResourceDimension d3d10ResourceDimension : values()) {
            if (d3d10ResourceDimension._value == i10) {
                return d3d10ResourceDimension;
            }
        }
        throw new Error("unknown D3D10ResourceDimension: " + i10);
    }
}
