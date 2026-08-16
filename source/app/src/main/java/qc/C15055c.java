package qc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import java.lang.constant.ConstantDescs;

public class C15055c {

    public final f f106043a;

    public final ec.f f106044b;

    public float[] f106045c;

    public int f106046d;

    public C15055c(f paramTag, ec.f shaderParam) {
        this.f106043a = paramTag;
        this.f106044b = shaderParam;
    }

    public void a(int size) {
        int i10 = size * 3;
        float[] fArr = this.f106045c;
        if (fArr == null || fArr.length != i10) {
            this.f106045c = new float[i10];
            this.f106046d = size;
        }
    }

    public boolean b(String simpleName, BaseVFXEffect baseVFXEffect) {
        String a10 = this.f106044b.a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(oc.c.f98680k);
        sb2.append(baseVFXEffect.getUID());
        sb2.append(ConstantDescs.DEFAULT_NAME);
        sb2.append(simpleName);
        return a10.equalsIgnoreCase(sb2.toString());
    }

    public final void c(int size) {
        int i10 = size * 3;
        float[] fArr = this.f106045c;
        if (fArr == null || fArr.length < i10) {
            this.f106046d = size;
            int max = Math.max(i10, fArr != null ? fArr.length : 0);
            float[] fArr2 = this.f106045c;
            float[] fArr3 = new float[max];
            this.f106045c = fArr3;
            if (fArr2 != null) {
                System.arraycopy(fArr2, 0, fArr3, 0, Math.min(fArr2.length, fArr3.length));
            }
        }
    }

    public float[] d() {
        return this.f106045c;
    }

    public f e() {
        return this.f106043a;
    }

    public ec.f f() {
        return this.f106044b;
    }

    public void g(int index, float x10, float y10, float z10) {
        c(index + 1);
        float[] fArr = this.f106045c;
        int i10 = index * 3;
        fArr[i10] = x10;
        fArr[i10 + 1] = y10;
        fArr[i10 + 2] = z10;
    }

    public void h(int index, Vector3 v10) {
        g(index, v10.getX(), v10.getY(), v10.getZ());
    }

    public int i() {
        return this.f106046d;
    }
}
