package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoMatrix.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoMatrix.class
  classes.dex
 */
@ClassCategory(cat = {"Debug"})
public class GizmoMatrix extends GizmoElement {
    private transient float[] matrix = new float[16];

    @Override
    @HideGetSet
    public float[] getMatrix() {
        return null;
    }

    @HideGetSet
    public void setMatrix(float[] fArr) {
        java.lang.System.arraycopy(fArr, 0, this.matrix, 0, 16);
    }
}
