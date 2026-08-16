package E7;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;

public final class d {
    public static boolean a(GameObject gameObject) {
        if (gameObject == null) {
            return false;
        }
        boolean z10 = true;
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if ((L10 instanceof ModelRenderer) && !b((ModelRenderer) L10)) {
                z10 = false;
            }
        }
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            if (!a(gameObject.C(i11))) {
                z10 = false;
            }
        }
        return z10;
    }

    public static boolean b(ModelRenderer modelRenderer) {
        if (modelRenderer == null || !modelRenderer.isEnabled()) {
            return true;
        }
        Vertex vertex = modelRenderer.getVertex();
        if (vertex != null && !vertex.x1() && !vertex.u1()) {
            vertex.apply();
        }
        Material material = modelRenderer.getMaterial();
        if (material != null && !material.I()) {
            material.S();
        }
        if (vertex == null && (modelRenderer.getMeshFile() == null || modelRenderer.getMeshFile().isEmpty())) {
            return true;
        }
        return vertex != null && vertex.x1() && material != null && material.I();
    }
}
