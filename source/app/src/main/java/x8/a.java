package X8;

import D8.b;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import da.C12894h;

@Deprecated
public class a {

    public ModelRenderer f28028a;

    public final Transform f28029b = new Transform();

    public void a(String matName, b gizmo) {
        if (this.f28028a != null || gizmo == null) {
            return;
        }
        ModelRenderer modelRenderer = new ModelRenderer(gizmo.b(), Boolean.valueOf(gizmo.f4958b), matName);
        this.f28028a = modelRenderer;
        modelRenderer.setCastShadow(false);
        Material material = new Material();
        material.f78885e = matName;
        material.f78886g = false;
        material.f0(gizmo.f4959c);
        material.b0(SerializableShaderEntry.f81153g, gizmo.f4962f);
        String str = gizmo.f4960d;
        if (str != null) {
            material.i0(SerializableShaderEntry.f81152f, str);
        }
        this.f28028a.f73747F = C12894h.d(material);
        ModelRenderer modelRenderer2 = this.f28028a;
        modelRenderer2.f73747F.f(modelRenderer2);
    }

    public void b() {
        ModelRenderer modelRenderer = this.f28028a;
        if (modelRenderer != null) {
            modelRenderer.onDetach();
        }
        this.f28028a = null;
    }

    public void c(GameObject o10, float[] modelMatrix) {
        ModelRenderer modelRenderer = this.f28028a;
        if (modelRenderer == null || o10 == null || modelRenderer.f73747F == null) {
            return;
        }
        modelRenderer.f79250n = o10;
        modelRenderer.setRenderMatrix(modelMatrix);
    }

    public void d(GameObject o10) {
        Material material;
        ModelRenderer modelRenderer = this.f28028a;
        if (modelRenderer == null || o10 == null || (material = modelRenderer.f73747F) == null || material == null) {
            return;
        }
        modelRenderer.f79250n = o10;
        modelRenderer.setRenderMatrix(this.f28029b.x1());
    }

    public Vector3 e() {
        return this.f28029b.Z0();
    }

    public void f(float x10, float y10, float z10) {
        try {
            this.f28029b.setPosition(x10, y10, z10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void g(Vector3 v10) {
        try {
            this.f28029b.p3(v10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void h(Quaternion q10) {
        try {
            this.f28029b.x3(q10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void i(float a10) {
        try {
            this.f28029b.setScale(a10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j(float x10, float y10, float z10) {
        try {
            this.f28029b.setScale(x10, y10, z10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void k(Vector3 scale) {
        try {
            j(scale.getX(), scale.getY(), scale.getZ());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
