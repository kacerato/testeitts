package xn;

import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import wn.C16029g;

public class d implements c {

    public final float[] f129873a;

    public final float[] f129874b;

    public final List<e> f129875c = new ArrayList();

    public d() {
        this.f129873a = r1;
        this.f129874b = r0;
        float[] fArr = {Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY};
        float[] fArr2 = {Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY};
    }

    @Override
    public Iterable<C16029g> a() {
        return Collections.emptyList();
    }

    @Override
    public Iterable<e> b() {
        return this.f129875c;
    }

    @Override
    public float[] c() {
        return this.f129873a;
    }

    @Override
    public float[] d() {
        return this.f129874b;
    }

    public void e(e mesh) {
        synchronized (this.f129875c) {
            this.f129875c.add(mesh);
        }
    }

    public void f() {
        synchronized (this.f129875c) {
            try {
                float[] fArr = this.f129873a;
                fArr[2] = Float.POSITIVE_INFINITY;
                fArr[1] = Float.POSITIVE_INFINITY;
                fArr[0] = Float.POSITIVE_INFINITY;
                float[] fArr2 = this.f129874b;
                fArr2[2] = Float.NEGATIVE_INFINITY;
                fArr2[1] = Float.NEGATIVE_INFINITY;
                fArr2[0] = Float.NEGATIVE_INFINITY;
                Vector3 vector3 = new Vector3();
                for (int i10 = 0; i10 < this.f129875c.size(); i10++) {
                    e eVar = this.f129875c.get(i10);
                    int capacity = eVar.c().capacity();
                    for (int i11 = 0; i11 < capacity; i11 += 3) {
                        try {
                            vector3.setX(eVar.c().get(i11));
                            vector3.setY(eVar.c().get(i11 + 1));
                            vector3.setZ(eVar.c().get(i11 + 2));
                            float[] fArr3 = this.f129873a;
                            fArr3[0] = Math.min(fArr3[0], vector3.getX());
                            float[] fArr4 = this.f129873a;
                            fArr4[1] = Math.min(fArr4[1], vector3.getY());
                            float[] fArr5 = this.f129873a;
                            fArr5[2] = Math.min(fArr5[2], vector3.getZ());
                            float[] fArr6 = this.f129874b;
                            fArr6[0] = Math.max(fArr6[0], vector3.getX());
                            float[] fArr7 = this.f129874b;
                            fArr7[1] = Math.max(fArr7[1], vector3.getY());
                            float[] fArr8 = this.f129874b;
                            fArr8[2] = Math.max(fArr8[2], vector3.getZ());
                        } catch (IndexOutOfBoundsException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int g() {
        return this.f129875c.size();
    }
}
