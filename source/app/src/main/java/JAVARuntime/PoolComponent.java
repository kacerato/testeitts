package JAVARuntime;

import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PoolComponent.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PoolComponent.class
  classes.dex
 */
@ClassCategory(cat = {com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.ObjectPool.f74700L8, "Components"})
public class PoolComponent extends Component {
    public PoolComponent() {
        throw new RuntimeException("This is an abstract class, use ObjectPool or PrefabPool instead.");
    }

    public PooledObject add(Vector3 vector3) {
        return null;
    }

    public int objectCount() {
        return 0;
    }

    public boolean getStickToTerrain() {
        return false;
    }

    public void setStickToTerrain(boolean z10) {
    }

    public boolean getEnableImpostorSystem() {
        return false;
    }

    public void setEnableImpostorSystem(boolean z10) {
    }

    public boolean getImpostorLighting() {
        return true;
    }

    public void setImpostorLighting(boolean z10) {
    }

    public float getImpostorStartDistance() {
        return 0.0f;
    }

    public void setImpostorStartDistance(float f10) {
    }

    public float getImpostorWindEffect() {
        return 0.0f;
    }

    public void setImpostorWindEffect(float f10) {
    }

    public int getImpostorTextureResolutionID() {
        return 0;
    }

    public void setImpostorTextureResolutionID(int i10) {
    }

    public PooledObject getObject(int i10) {
        return null;
    }

    public void notifyObjectChanged(PooledObject pooledObject) {
    }

    public void delete(List<PoolSearchResult> list) {
    }

    public void delete(PooledObject pooledObject) {
    }

    public List<PoolSearchResult> findInCircle(Vector3 vector3, float f10) {
        return null;
    }

    public List<PoolSearchResult> findInSphere(Vector3 vector3, float f10) {
        return null;
    }

    public List<PoolSearchResult> findInSquare(Vector2 vector2, Vector2 vector22) {
        return null;
    }
}
