package qc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import java.lang.constant.ConstantDescs;

public class C15054b {

    public final f f106039a;

    public final ec.f f106040b;

    public float[] f106041c;

    public int f106042d;

    public C15054b(f paramTag, ec.f shaderParam) {
        this.f106039a = paramTag;
        this.f106040b = shaderParam;
    }

    public void a(int size) {
        int i10 = size * 2;
        float[] fArr = this.f106041c;
        if (fArr == null || fArr.length != i10) {
            this.f106041c = new float[i10];
            this.f106042d = size;
        }
    }

    public boolean b(String simpleName, BaseVFXEffect baseVFXEffect) {
        return this.f106040b.a().equalsIgnoreCase(oc.c.f98680k + baseVFXEffect.getUID() + ConstantDescs.DEFAULT_NAME + simpleName);
    }

    public final void c(int size) {
        int i10 = size * 2;
        float[] fArr = this.f106041c;
        if (fArr == null || fArr.length < i10) {
            this.f106042d = size;
            int max = Math.max(i10, fArr != null ? fArr.length : 0);
            float[] fArr2 = this.f106041c;
            float[] fArr3 = new float[max];
            this.f106041c = fArr3;
            if (fArr2 != null) {
                System.arraycopy(fArr2, 0, fArr3, 0, Math.min(fArr2.length, fArr3.length));
            }
        }
    }

    public float[] d() {
        return this.f106041c;
    }

    public f e() {
        return this.f106039a;
    }

    public ec.f f() {
        return this.f106040b;
    }

    public void g(int index, float x10, float y10) {
        c(index + 1);
        int i10 = index * 2;
        float[] fArr = this.f106041c;
        fArr[i10] = x10;
        fArr[i10 + 1] = y10;
    }

    public void h(int index, Vector2 v10) {
        g(index, v10.getX(), v10.getY());
    }

    public int i() {
        return this.f106042d;
    }
}
