package qc;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.BaseVFXEffect;
import java.lang.constant.ConstantDescs;

public class e {

    public final f f106051a;

    public final ec.f f106052b;

    public int[] f106053c;

    public int f106054d;

    public e(f paramTag, ec.f shaderParam) {
        this.f106051a = paramTag;
        this.f106052b = shaderParam;
    }

    public void a(int size) {
        int[] iArr = this.f106053c;
        if (iArr == null || iArr.length != size) {
            this.f106053c = new int[size];
            this.f106054d = size;
        }
    }

    public boolean b(String simpleName, BaseVFXEffect baseVFXEffect) {
        return this.f106052b.a().equalsIgnoreCase(oc.c.f98680k + baseVFXEffect.getUID() + ConstantDescs.DEFAULT_NAME + simpleName);
    }

    public final void c(int size) {
        int[] iArr = this.f106053c;
        if (iArr == null || iArr.length < size) {
            this.f106054d = size;
            int max = Math.max(size, iArr != null ? iArr.length : 0);
            int[] iArr2 = this.f106053c;
            int[] iArr3 = new int[max];
            this.f106053c = iArr3;
            if (iArr2 != null) {
                System.arraycopy(iArr2, 0, iArr3, 0, Math.min(iArr2.length, iArr3.length));
            }
        }
    }

    public int[] d() {
        return this.f106053c;
    }

    public f e() {
        return this.f106051a;
    }

    public ec.f f() {
        return this.f106052b;
    }

    public void g(int index, int v10) {
        c(index + 1);
        this.f106053c[index] = v10;
    }

    public int h() {
        return this.f106054d;
    }
}
