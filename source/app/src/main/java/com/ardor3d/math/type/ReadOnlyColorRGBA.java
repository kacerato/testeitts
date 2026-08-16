package com.ardor3d.math.type;

import com.ardor3d.math.ColorRGBA;

public interface ReadOnlyColorRGBA {
    ColorRGBA add(float f10, float f11, float f12, float f13, ColorRGBA colorRGBA);

    ColorRGBA add(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA);

    String asHexRRGGBBAA();

    int asIntARGB();

    int asIntRGBA();

    ColorRGBA clamp(ColorRGBA colorRGBA);

    ColorRGBA divide(float f10, ColorRGBA colorRGBA);

    ColorRGBA divide(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA);

    float getAlpha();

    float getBlue();

    float getGreen();

    float getRed();

    float getValue(int i10);

    ColorRGBA lerp(ReadOnlyColorRGBA readOnlyColorRGBA, float f10, ColorRGBA colorRGBA);

    ColorRGBA multiply(float f10, ColorRGBA colorRGBA);

    ColorRGBA multiply(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA);

    ColorRGBA subtract(float f10, float f11, float f12, float f13, ColorRGBA colorRGBA);

    ColorRGBA subtract(ReadOnlyColorRGBA readOnlyColorRGBA, ColorRGBA colorRGBA);

    float[] toArray(float[] fArr);
}
