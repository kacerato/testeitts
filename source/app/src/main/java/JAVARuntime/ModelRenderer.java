package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ModelRenderer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ModelRenderer.class
  classes.dex
 */
@ClassCategory(cat = {"Rendering", "Components"})
public final class ModelRenderer extends Component {
    public static final int CUBE = 456;
    public static final int SPHERE = 457;
    public static final int CONE = 458;
    public static final int CYLINDER = 459;
    public static final int CIRCLE = 460;
    public static final int TORUS = 461;
    public static final int SQUARE = 462;
    public static final int SQUARE90 = 463;

    public ModelRenderer() {
    }

    public ModelRenderer(Vertex vertex) {
    }

    public void setModelFile(VertexFile vertexFile) {
    }

    public void setMaterialFile(MaterialFile materialFile) {
    }

    @HideGetSet
    public Material getMaterial() {
        return null;
    }

    @HideGetSet
    public void setMaterial(Material material) {
    }

    @HideGetSet
    public Vertex getVertex() {
        return null;
    }

    @HideGetSet
    public void setVertex(Vertex vertex) {
    }

    @HideGetSet
    public boolean isCastShadowEnabled() {
        return false;
    }

    @HideGetSet
    public void setCastShadowEnabled(boolean z10) {
    }

    @HideGetSet
    public boolean isEnableOutline() {
        return false;
    }

    @HideGetSet
    public void setEnableOutline(boolean z10) {
    }

    @HideGetSet
    public Color getOutlineColor() {
        return null;
    }

    @HideGetSet
    public void setOutlineColor(Color color) {
    }

    public void attachPrimitive(int i10) {
    }

    @HideGetSet
    public float[] getRenderMatrix() {
        return null;
    }

    @HideGetSet
    public void setRenderMatrix(float[] fArr) {
    }

    public float getOutlineScale() {
        return 0.0f;
    }

    @HideGetSet
    public void setOutlineScale(float f10) {
    }

    @HideGetSet
    public boolean isDrawWireframeGizmo() {
        return false;
    }

    @HideGetSet
    public void setDrawWireframeGizmo(boolean z10) {
    }
}
