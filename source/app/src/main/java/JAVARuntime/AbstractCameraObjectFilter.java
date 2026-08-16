package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AbstractCameraObjectFilter.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AbstractCameraObjectFilter.class
  classes.dex
 */
@ClassCategory(cat = {"Utils"})
public class AbstractCameraObjectFilter implements CameraObjectFilter {
    @Override
    public boolean renderFog() {
        return true;
    }

    @Override
    public Color overrideAmbientLight() {
        return null;
    }
}
