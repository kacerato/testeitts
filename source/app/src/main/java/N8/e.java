package N8;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class e {

    public static final int f15802c = 8000;

    public static final int f15803d = 8000;

    public static final int f15804e = 3;

    public static final int f15805f = 100000;

    public static final int f15806g = 100000;

    public static final int f15807h = 3;

    public final Material f15808a;

    public final i f15809b = new i(8000, 8000, 100000, 100000, 3, 3);

    public e(Material material) {
        this.f15808a = material;
    }

    public void a(ModelRenderer mr) {
        if (mr == null) {
            throw new RuntimeException();
        }
        if (mr.f79250n == null || mr.getVertex() == null || mr.billboard) {
            return;
        }
        this.f15809b.a(mr);
    }

    public int b() {
        return this.f15809b.b();
    }

    public void c() {
        this.f15809b.e();
    }

    public Vertex d(int idx) {
        return this.f15809b.f(idx);
    }

    public boolean e() {
        return this.f15809b.g();
    }

    public void f(ModelRenderer mr) {
        if (mr == null) {
            throw new RuntimeException();
        }
        if (mr.f79250n == null || mr.getVertex() == null) {
            g(mr);
            return;
        }
        try {
            this.f15809b.h(mr);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                this.f15809b.i(mr);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public void g(ModelRenderer mr) {
        if (mr == null) {
            throw new RuntimeException();
        }
        this.f15809b.i(mr);
    }

    public void h(boolean requireTBN) {
        this.f15809b.j(requireTBN);
    }
}
