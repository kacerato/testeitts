package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Rigidbody.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Rigidbody.class
  classes.dex
 */
@ClassCategory(cat = {"Physics"})
public final class Rigidbody extends PhysicsComponent {
    @HideGetSet
    public boolean isGravityEnabled() {
        return false;
    }

    @HideGetSet
    public void setGravityEnabled(boolean z10) {
    }

    @HideGetSet
    public float getMass() {
        return 0.0f;
    }

    @HideGetSet
    public void setMass(float f10) {
    }

    @HideGetSet
    public float getFriction() {
        return 0.0f;
    }

    @HideGetSet
    public void setFriction(float f10) {
    }

    @HideGetSet
    public float getLinearDamping() {
        return 0.0f;
    }

    @HideGetSet
    public void setLinearDamping(float f10) {
    }

    @HideGetSet
    public float getBounciness() {
        return 0.0f;
    }

    @HideGetSet
    public void setBounciness(float f10) {
    }

    @HideGetSet
    public float getAngularDamping() {
        return 0.0f;
    }

    @HideGetSet
    public void setAngularDamping(float f10) {
    }

    public void addForce(Vector3 vector3) {
    }

    public void addForce(float f10, float f11, float f12) {
    }

    public void addForce(Vector3 vector3, Vector3 vector32) {
    }

    @HideGetSet
    public PhysicsLayer getPhysicsLayer() {
        return null;
    }

    @HideGetSet
    public void setPhysicsLayer(PhysicsLayer physicsLayer) {
    }

    public void addVelocity(Vector3 vector3) {
    }

    public void addVelocity(float f10, float f11, float f12) {
    }

    public void addVelocityBySecond(Vector3 vector3) {
    }

    public void addVelocityBySecond(float f10, float f11, float f12) {
    }

    @HideGetSet
    public Vector3 getGravityMultiplier() {
        return null;
    }

    @HideGetSet
    public void setGravityMultiplier(Vector3 vector3) {
    }

    @Override
    @HideGetSet
    public Vector3 getVelocity() {
        return null;
    }

    @HideGetSet
    public void setVelocity(Vector3 vector3) {
    }

    public void setVelocity(float f10, float f11, float f12) {
    }

    @HideGetSet
    public Vector3 getAngularVelocity() {
        return null;
    }

    @HideGetSet
    public void setAngularVelocity(Vector3 vector3) {
    }

    @HideGetSet
    public boolean isFreezePX() {
        return false;
    }

    @HideGetSet
    public void setFreezePX(boolean z10) {
    }

    @HideGetSet
    public boolean isFreezePY() {
        return false;
    }

    @HideGetSet
    public void setFreezePY(boolean z10) {
    }

    @HideGetSet
    public boolean isFreezePZ() {
        return false;
    }

    @HideGetSet
    public void setFreezePZ(boolean z10) {
    }

    @HideGetSet
    public boolean isFreezeRX() {
        return false;
    }

    @HideGetSet
    public void setFreezeRX(boolean z10) {
    }

    @HideGetSet
    public boolean isFreezeRY() {
        return false;
    }

    @HideGetSet
    public void setFreezeRY(boolean z10) {
    }

    @HideGetSet
    public boolean isFreezeRZ() {
        return false;
    }

    @HideGetSet
    public void setFreezeRZ(boolean z10) {
    }
}
