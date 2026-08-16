package com.itsmagic.engine.Engines.Engine.Gradient;

import JAVARuntime.ColorGradient;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;

public class Entry {

    public ColorGradient.Point f77948a;

    @Expose
    private final ColorINT color;

    @Expose
    private float f77949p;

    public Entry() {
        this.color = new ColorINT();
    }

    public ColorINT a(Entry entry, float blendFactor) {
        return this.color.f(entry.color, blendFactor);
    }

    public Entry clone() {
        Entry entry = new Entry();
        entry.f77949p = this.f77949p;
        entry.color.K(this.color);
        return entry;
    }

    public ColorINT c() {
        return ColorINT.k(this.color);
    }

    public float d() {
        return this.f77949p;
    }

    public void e(ColorINT color) {
        this.color.K(color);
    }

    public void f(float p10) {
        this.f77949p = p10;
    }

    public ColorGradient.Point g() {
        ColorGradient.Point point = this.f77948a;
        if (point != null) {
            return point;
        }
        ColorGradient.Point point2 = new ColorGradient.Point(this);
        this.f77948a = point2;
        return point2;
    }

    public Entry(float p10, ColorINT color) {
        ColorINT colorINT = new ColorINT();
        this.color = colorINT;
        this.f77949p = p10;
        colorINT.K(color);
    }
}
