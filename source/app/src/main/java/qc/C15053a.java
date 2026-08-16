package qc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import java.lang.constant.ConstantDescs;

public class C15053a {

    public final f f106035a;

    public final ec.f f106036b;

    public float[] f106037c;

    public int f106038d;

    public C15053a(f paramTag, ec.f shaderParam) {
        this.f106035a = paramTag;
        this.f106036b = shaderParam;
    }

    public void a(int size) {
        float[] fArr = this.f106037c;
        if (fArr == null || fArr.length != size) {
            this.f106037c = new float[size];
            this.f106038d = size;
        }
    }

    public boolean b(String simpleName, BaseVFXEffect baseVFXEffect) {
        return this.f106036b.a().equalsIgnoreCase(oc.c.f98680k + baseVFXEffect.getUID() + ConstantDescs.DEFAULT_NAME + simpleName);
    }

    public final void c(int size) {
        float[] fArr = this.f106037c;
        if (fArr == null || fArr.length < size) {
            this.f106038d = size;
            int max = Math.max(size, fArr != null ? fArr.length : 0);
            float[] fArr2 = this.f106037c;
            float[] fArr3 = new float[max];
            this.f106037c = fArr3;
            if (fArr2 != null) {
                System.arraycopy(fArr2, 0, fArr3, 0, Math.min(fArr2.length, fArr3.length));
            }
        }
    }

    public float[] d() {
        return this.f106037c;
    }

    public f e() {
        return this.f106035a;
    }

    public ec.f f() {
        return this.f106036b;
    }

    public void g(int index, float v10) {
        c(index + 1);
        this.f106037c[index] = v10;
    }

    public int h() {
        return this.f106038d;
    }
}
