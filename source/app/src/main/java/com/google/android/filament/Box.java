package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Size;

public class Box {

    public final float[] f59907a;

    public final float[] f59908b;

    public Box() {
        this.f59907a = new float[3];
        this.f59908b = new float[3];
    }

    @NonNull
    @Size(min = 3)
    public float[] a() {
        return this.f59907a;
    }

    @NonNull
    @Size(min = 3)
    public float[] b() {
        return this.f59908b;
    }

    public void c(float f10, float f11, float f12) {
        float[] fArr = this.f59907a;
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
    }

    public void d(float f10, float f11, float f12) {
        float[] fArr = this.f59908b;
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = f12;
    }

    public Box(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f59907a = r1;
        this.f59908b = r0;
        float[] fArr = {f10, f11, f12};
        float[] fArr2 = {f13, f14, f15};
    }

    public Box(@NonNull @Size(min = 3) float[] fArr, @NonNull @Size(min = 3) float[] fArr2) {
        this.f59907a = r1;
        this.f59908b = r0;
        float[] fArr3 = {fArr[0], fArr[1], fArr[2]};
        float[] fArr4 = {fArr2[0], fArr2[1], fArr2[2]};
    }
}
