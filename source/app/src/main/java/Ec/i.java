package ec;

import b3.s;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ge.d0;
import he.h0;
import java.util.Collections;
import java.util.List;

public class i {

    public final MaterialBuilder.a f85484a;

    public final float f85485b;

    public final MaterialBuilder.c f85486c;

    public final boolean f85487d;

    public final d0<String> f85488e;

    public final MaterialBuilder.k f85489f;

    public final boolean f85490g;

    public final boolean f85491h;

    public class a implements h0<String> {

        public final List f85492a;

        public a(final List val$sortedConditions) {
            this.f85492a = val$sortedConditions;
        }

        @Override
        public boolean a(String key, int value) {
            this.f85492a.add(key + s.f32937c + value);
            return true;
        }
    }

    public i(MaterialBuilder.a blendingMode, MaterialBuilder.c cullingMode, boolean doubleSided) {
        this.f85488e = new d0<>();
        this.f85484a = blendingMode;
        this.f85485b = 0.0f;
        this.f85486c = cullingMode;
        this.f85487d = doubleSided;
        this.f85489f = null;
        this.f85490g = true;
        this.f85491h = true;
    }

    public MaterialBuilder.a a() {
        return this.f85484a;
    }

    public boolean b(String name) {
        return this.f85488e.get(name) == 1;
    }

    public MaterialBuilder.c c() {
        return this.f85486c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String d() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f85488e.n9(new a(steppedArrayList));
        Collections.sort(steppedArrayList);
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            sb2.append((String) steppedArrayList.get(i10));
            sb2.append("-");
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.f85484a.ordinal());
        sb3.append("-");
        sb3.append(this.f85485b);
        sb3.append("-");
        sb3.append(this.f85486c.ordinal());
        sb3.append("-");
        sb3.append(this.f85487d ? 1 : 0);
        sb3.append("-");
        MaterialBuilder.k kVar = this.f85489f;
        sb3.append(kVar != null ? kVar.ordinal() : -1);
        sb3.append("-");
        sb3.append(this.f85491h ? 1 : 0);
        sb3.append("-");
        sb3.append(this.f85490g ? 1 : 0);
        sb3.append("-");
        sb3.append((Object) sb2);
        return sb3.toString();
    }

    public float e() {
        return this.f85485b;
    }

    public MaterialBuilder.k f() {
        return this.f85489f;
    }

    public boolean g() {
        return this.f85491h;
    }

    public boolean h() {
        return this.f85490g;
    }

    public boolean i() {
        return this.f85487d;
    }

    public void j(String str, boolean z10) {
        this.f85488e.Y9(str, z10 ? 1 : 0);
    }

    public i(MaterialBuilder.a blendingMode, float maskThreshold, MaterialBuilder.c cullingMode, boolean doubleSided) {
        this.f85488e = new d0<>();
        this.f85484a = blendingMode;
        this.f85485b = maskThreshold;
        this.f85486c = cullingMode;
        this.f85487d = doubleSided;
        this.f85489f = null;
        this.f85490g = true;
        this.f85491h = true;
    }

    public i(MaterialBuilder.a blendingMode, float maskThreshold, MaterialBuilder.c cullingMode, boolean doubleSided, MaterialBuilder.k refractionType) {
        this.f85488e = new d0<>();
        this.f85484a = blendingMode;
        this.f85485b = maskThreshold;
        this.f85486c = cullingMode;
        this.f85487d = doubleSided;
        this.f85489f = refractionType;
        this.f85490g = true;
        this.f85491h = true;
    }

    public i(MaterialBuilder.a blendingMode, float maskThreshold, MaterialBuilder.c cullingMode, boolean doubleSided, MaterialBuilder.k refractionType, boolean depthWrite, boolean depthCulling) {
        this.f85488e = new d0<>();
        this.f85484a = blendingMode;
        this.f85485b = maskThreshold;
        this.f85486c = cullingMode;
        this.f85487d = doubleSided;
        this.f85489f = refractionType;
        this.f85490g = depthWrite;
        this.f85491h = depthCulling;
    }
}
