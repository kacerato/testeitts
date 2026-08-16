package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:EnemyAI.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:EnemyAI.class
  classes.dex
 */
@ClassCategory(cat = {"AI", "Components"})
public class EnemyAI extends Component {
    @HideGetSet
    public float getWalkSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setWalkSpeed(float f10) {
    }

    @HideGetSet
    public SpatialObject getTarget() {
        return null;
    }

    @HideGetSet
    public void setTarget(SpatialObject spatialObject) {
    }
}
