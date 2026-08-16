package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SkinnedModelRenderer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SkinnedModelRenderer.class
  classes.dex
 */
@ClassCategory(cat = {"Rendering", "Components"})
public final class SkinnedModelRenderer extends Component {
    public static final int CUBE = 456;
    public static final int SPHERE = 457;
    public static final int CONE = 458;
    public static final int CYLINDER = 459;
    public static final int CIRCLE = 460;
    public static final int TORUS = 461;
    public static final int SQUARE = 462;
    public static final int SQUARE90 = 463;

    @DeprecatedInfo(info = {"PFile is now obsolete, use SkinnedModelRenderer.setVertex(Vertex) instead"})
    @Deprecated
    public void setModelFile(VertexFile vertexFile) {
    }

    @DeprecatedInfo(info = {"PFile is now obsolete, use SkinnedModelRenderer.setMaterial(Material) instead"})
    @Deprecated
    public void setMaterialFile(MaterialFile materialFile) {
    }

    public Material getMaterial() {
        return null;
    }

    public void setMaterial(Material material) {
    }

    public Vertex getVertex() {
        return null;
    }

    public void setVertex(Vertex vertex) {
    }

    public void attachPrimitive(int i10) {
    }
}
