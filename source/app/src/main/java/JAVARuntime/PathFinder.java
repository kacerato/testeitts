package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PathFinder.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PathFinder.class
  classes.dex
 */
@ClassCategory(cat = {"AI", "Components"})
public final class PathFinder extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PathFinder$LookTo.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PathFinder$LookTo.class
  classes.dex
 */
    public enum LookTo {
        Disabled,
        Path,
        Target;

        public static LookTo[] valuesCustom() {
            LookTo[] valuesCustom = values();
            int length = valuesCustom.length;
            LookTo[] lookToArr = new LookTo[length];
            java.lang.System.arraycopy(valuesCustom, 0, lookToArr, 0, length);
            return lookToArr;
        }
    }

    @HideGetSet
    public SpatialObject getTarget() {
        return null;
    }

    @HideGetSet
    public void setTarget(SpatialObject spatialObject) {
    }

    @HideGetSet
    public float getSearchDelay() {
        return 0.0f;
    }

    @HideGetSet
    public void setSearchDelay(float f10) {
    }

    public float getTargetDistance() {
        return 0.0f;
    }

    public float getTargetDistanceInPath() {
        return 0.0f;
    }

    public boolean hasPath() {
        return false;
    }

    public boolean hasTarget() {
        return false;
    }
}
