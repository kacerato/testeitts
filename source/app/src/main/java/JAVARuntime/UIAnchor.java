package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIAnchor.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIAnchor.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Components"})
public class UIAnchor extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIAnchor$HorizontalConstraintTarget.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIAnchor$HorizontalConstraintTarget.class
  classes.dex
 */
    public enum HorizontalConstraintTarget {
        Unfixed,
        ToLeftOf,
        ToRightOf;

        public static HorizontalConstraintTarget[] valuesCustom() {
            HorizontalConstraintTarget[] valuesCustom = values();
            int length = valuesCustom.length;
            HorizontalConstraintTarget[] horizontalConstraintTargetArr = new HorizontalConstraintTarget[length];
            java.lang.System.arraycopy(valuesCustom, 0, horizontalConstraintTargetArr, 0, length);
            return horizontalConstraintTargetArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIAnchor$VerticalConstraintTarget.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIAnchor$VerticalConstraintTarget.class
  classes.dex
 */
    public enum VerticalConstraintTarget {
        Unfixed,
        ToTopOf,
        ToBottomOf;

        public static VerticalConstraintTarget[] valuesCustom() {
            VerticalConstraintTarget[] valuesCustom = values();
            int length = valuesCustom.length;
            VerticalConstraintTarget[] verticalConstraintTargetArr = new VerticalConstraintTarget[length];
            java.lang.System.arraycopy(valuesCustom, 0, verticalConstraintTargetArr, 0, length);
            return verticalConstraintTargetArr;
        }
    }

    @HideGetSet
    public VerticalConstraintTarget getBottomAnchor() {
        return null;
    }

    @HideGetSet
    public int getBottomOffset() {
        return 0;
    }

    @HideGetSet
    public SpatialObject getBottomTarget() {
        return null;
    }

    @HideGetSet
    public HorizontalConstraintTarget getLeftAnchor() {
        return null;
    }

    @HideGetSet
    public int getLeftOffset() {
        return 0;
    }

    @HideGetSet
    public SpatialObject getLeftTarget() {
        return null;
    }

    @HideGetSet
    public HorizontalConstraintTarget getRightAnchor() {
        return null;
    }

    @HideGetSet
    public int getRightOffset() {
        return 0;
    }

    @HideGetSet
    public SpatialObject getRightTarget() {
        return null;
    }

    @HideGetSet
    public VerticalConstraintTarget getTopAnchor() {
        return null;
    }

    @HideGetSet
    public int getTopOffset() {
        return 0;
    }

    @HideGetSet
    public SpatialObject getTopTarget() {
        return null;
    }

    @HideGetSet
    public boolean isExpandH() {
        return false;
    }

    @HideGetSet
    public boolean isExpandW() {
        return false;
    }

    @HideGetSet
    public void setBottomAnchor(VerticalConstraintTarget verticalConstraintTarget) {
    }

    @HideGetSet
    public void setBottomOffset(int i10) {
    }

    @HideGetSet
    public void setBottomTarget(SpatialObject spatialObject) {
    }

    @HideGetSet
    public void setExpandH(boolean z10) {
    }

    @HideGetSet
    public void setExpandW(boolean z10) {
    }

    @HideGetSet
    public void setLeftAnchor(HorizontalConstraintTarget horizontalConstraintTarget) {
    }

    @HideGetSet
    public void setLeftOffset(int i10) {
    }

    @HideGetSet
    public void setLeftTarget(SpatialObject spatialObject) {
    }

    @HideGetSet
    public void setRightAnchor(HorizontalConstraintTarget horizontalConstraintTarget) {
    }

    @HideGetSet
    public void setRightOffset(int i10) {
    }

    @HideGetSet
    public void setRightTarget(SpatialObject spatialObject) {
    }

    @HideGetSet
    public void setTopAnchor(VerticalConstraintTarget verticalConstraintTarget) {
    }

    @HideGetSet
    public void setTopOffset(int i10) {
    }

    @HideGetSet
    public void setTopTarget(SpatialObject spatialObject) {
    }
}
