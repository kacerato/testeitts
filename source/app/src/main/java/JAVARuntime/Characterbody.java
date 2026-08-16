package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Characterbody.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Characterbody.class
  classes.dex
 */
@ClassCategory(cat = {"Physics"})
public final class Characterbody extends PhysicsComponent {
    @HideGetSet
    public boolean isGravityEnabled() {
        return false;
    }

    @HideGetSet
    public void setGravityEnabled(boolean z10) {
    }

    @HideGetSet
    public boolean isGlobalDirections() {
        return false;
    }

    @HideGetSet
    public void setGlobalDirections(boolean z10) {
    }

    public boolean isGrounded() {
        return false;
    }

    public boolean onGround() {
        return false;
    }

    public boolean canJump() {
        return false;
    }

    public void jump() {
    }

    public void setSpeed(float f10, float f11) {
    }

    @HideGetSet
    public float getForwardSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setForwardSpeed(float f10) {
    }

    @HideGetSet
    public float getSideSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setSideSpeed(float f10) {
    }

    @HideGetSet
    public PhysicsLayer getPhysicsLayer() {
        return null;
    }

    @HideGetSet
    public void setPhysicsLayer(PhysicsLayer physicsLayer) {
    }

    @HideGetSet
    public Vector3 getGravityMultiplier() {
        return null;
    }

    @HideGetSet
    public void setGravityMultiplier(Vector3 vector3) {
    }

    public void zeroSpeed() {
    }

    @HideGetSet
    public float getHeight() {
        return 0.0f;
    }

    @HideGetSet
    public void setHeight(float f10) {
    }

    @HideGetSet
    public float getWidth() {
        return 0.0f;
    }

    @HideGetSet
    public void setWidth(float f10) {
    }

    @HideGetSet
    public float getJumpSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setJumpSpeed(float f10) {
    }

    @HideGetSet
    public float getStepHeight() {
        return 0.0f;
    }

    @HideGetSet
    public void setStepHeight(float f10) {
    }

    @HideGetSet
    public Vector3 getPhysicsVelocity() {
        return null;
    }

    @HideGetSet
    public Vector2 getHorizontalPhysicsVelocity() {
        return null;
    }
}
