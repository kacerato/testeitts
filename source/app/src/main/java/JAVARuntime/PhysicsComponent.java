package JAVARuntime;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PhysicsComponent.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PhysicsComponent.class
  classes.dex
 */
@ClassCategory(cat = {"Physics"})
public class PhysicsComponent extends Component {
    public boolean colliderWithName(String str) {
        return false;
    }

    public boolean isColliding() {
        return false;
    }

    public List<Collision> getCollisionList() {
        return null;
    }

    public int getCollisionsCount() {
        return 0;
    }

    public Collision getCollisionAt(int i10) {
        return null;
    }

    @HideGetSet
    public Vector3 getVelocity() {
        return null;
    }
}
