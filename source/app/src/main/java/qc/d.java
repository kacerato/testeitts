package qc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import java.lang.constant.ConstantDescs;

public class d {

    public final f f106047a;

    public final ec.f f106048b;

    public float[] f106049c;

    public int f106050d;

    public d(f paramTag, ec.f shaderParam) {
        this.f106047a = paramTag;
        this.f106048b = shaderParam;
    }

    public void a(int size) {
        int i10 = size * 4;
        float[] fArr = this.f106049c;
        if (fArr == null || fArr.length != i10) {
            this.f106049c = new float[i10];
            this.f106050d = size;
        }
    }

    public boolean b(String simpleName, BaseVFXEffect baseVFXEffect) {
        return this.f106048b.a().equalsIgnoreCase(oc.c.f98680k + baseVFXEffect.getUID() + ConstantDescs.DEFAULT_NAME + simpleName);
    }

    public final void c(int size) {
        int i10 = size * 4;
        float[] fArr = this.f106049c;
        if (fArr == null || fArr.length < i10) {
            this.f106050d = size;
            int max = Math.max(i10, fArr != null ? fArr.length : 0);
            float[] fArr2 = this.f106049c;
            float[] fArr3 = new float[max];
            this.f106049c = fArr3;
            if (fArr2 != null) {
                System.arraycopy(fArr2, 0, fArr3, 0, Math.min(fArr2.length, fArr3.length));
            }
        }
    }

    public float[] d() {
        return this.f106049c;
    }

    public f e() {
        return this.f106047a;
    }

    public ec.f f() {
        return this.f106048b;
    }

    public void g(int index, float x10, float y10, float z10, float w10) {
        c(index + 1);
        int i10 = index * 4;
        float[] fArr = this.f106049c;
        fArr[i10] = x10;
        fArr[i10 + 1] = y10;
        fArr[i10 + 2] = z10;
        fArr[i10 + 3] = w10;
    }

    public void h(int index, Vector4 v10) {
        g(index, v10.getX(), v10.getY(), v10.getZ(), v10.f());
    }

    public int i() {
        return this.f106050d;
    }
}
