package Ug;

import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public class h {

    public final float[] f26108a = new float[16];

    public g f26109b;

    public Vertex f26110c;

    public Material f26111d;

    public h(Vertex oldVertex, float[] renderMatrix) {
        this.f26110c = oldVertex;
        g(renderMatrix);
    }

    public g a() {
        return this.f26109b;
    }

    public Material b() {
        return this.f26111d;
    }

    public float[] c() {
        return this.f26108a;
    }

    public Vertex d() {
        return this.f26110c;
    }

    public void e(g atlasVertex) {
        this.f26109b = atlasVertex;
    }

    public void f(Material material) {
        this.f26111d = material;
    }

    public void g(float[] matrix) {
        Nc.c.b(matrix, this.f26108a);
    }

    public void h(Vertex oldVertex) {
        this.f26110c = oldVertex;
    }
}
