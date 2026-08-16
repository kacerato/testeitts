package com.itsmagic.engine.Engines.Engine.Quaternion;

import K8.f;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;

public class a extends f {

    public final Vector3 f79466b = new Vector3();

    public void d(float w10, float x10, float y10, float z10) {
        float f10 = y10 * y10;
        double atan2 = Math.atan2(((w10 * x10) + (y10 * z10)) * 2.0f, 1.0f - (((x10 * x10) + f10) * 2.0f));
        double d10 = ((w10 * y10) - (z10 * x10)) * 2.0f;
        double copySign = Math.abs(d10) >= 1.0d ? Math.copySign(1.5707963267948966d, d10) : Math.asin(d10);
        double atan22 = Math.atan2(((w10 * z10) + (x10 * y10)) * 2.0f, 1.0f - ((f10 + (z10 * z10)) * 2.0f));
        this.f79466b.setX((float) Math.toDegrees(atan2));
        this.f79466b.setY((float) Math.toDegrees(copySign));
        this.f79466b.setZ((float) Math.toDegrees(atan22));
    }

    public void e(Quaternion quat) {
        if (quat != null) {
            d(quat.I(), quat.getX(), quat.getY(), quat.getZ());
        }
    }

    @NonNull
    public String toString() {
        return this.f79466b.toString();
    }

    public String toString(int decimals) {
        return this.f79466b.toString(decimals);
    }
}
