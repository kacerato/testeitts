package JAVARuntime;

import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Editor.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Editor.class
  classes.dex
 */
@ClassCategory(cat = {"Editor"})
public final class Editor {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Editor$AnchorSide.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Editor$AnchorSide.class
  classes.dex
 */
    public enum AnchorSide {
        Left,
        Above,
        Below,
        Right;

        public static AnchorSide[] valuesCustom() {
            AnchorSide[] valuesCustom = values();
            int length = valuesCustom.length;
            AnchorSide[] anchorSideArr = new AnchorSide[length];
            java.lang.System.arraycopy(valuesCustom, 0, anchorSideArr, 0, length);
            return anchorSideArr;
        }
    }

    private Editor() {
    }

    public static boolean isEditor() {
        return false;
    }

    public static SpatialObject getSelectedObject() {
        return null;
    }

    public static void setSelectedObject(SpatialObject spatialObject) {
    }

    public static FloatingPanelArea inflateAnchoredFloatingPanel(View view, AnchorSide anchorSide, EditorPanel editorPanel) {
        return null;
    }

    public static FloatingPanelArea inflateAnchoredFloatingPanel(View view, AnchorSide anchorSide, EditorPanel editorPanel, float f10, float f11) {
        return null;
    }

    public static FloatingPanelArea inflateAnchoredFloatingPanelInDP(View view, AnchorSide anchorSide, EditorPanel editorPanel, int i10, int i11) {
        return null;
    }

    public static FloatingPanelArea inflateFloatingPanel(EditorPanel editorPanel, float f10, float f11, float f12, float f13) {
        return null;
    }

    public static FloatingPanelArea inflateFloatingPanel(EditorPanel editorPanel, float f10, float f11) {
        return null;
    }

    public static FloatingPanelArea inflateFloatingPanelInDP(EditorPanel editorPanel, int i10, int i11, int i12, int i13) {
        return null;
    }

    public static FloatingPanelArea inflateFloatingPanelInDP(EditorPanel editorPanel, int i10, int i11) {
        return null;
    }

    public static float dpToWidthPercentage(int i10) {
        return 0.0f;
    }

    public static float dpToHeightPercentage(int i10) {
        return 0.0f;
    }

    public static float pxToWidthPercentage(int i10) {
        return 0.0f;
    }

    public static float pxToHeightPercentage(int i10) {
        return 0.0f;
    }

    public static <T extends View> T findViewByID(View view, String str) {
        return null;
    }

    public static View toView(Object obj) {
        return (View) obj;
    }

    public static String getIdOf(View view) {
        return null;
    }

    public static void requestJavaRecompile() {
    }
}
