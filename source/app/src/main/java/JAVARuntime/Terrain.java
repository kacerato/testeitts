package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Terrain.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Terrain.class
  classes.dex
 */
@ClassCategory(cat = {com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain.f76979i9, "Components"})
public final class Terrain extends Component {

    public class AnonymousClass1 implements Brush {
        public AnonymousClass1() {
        }

        @Override
        public float getIntensity(float x10, float y10) {
            return 1.0f;
        }
    }

    public class AnonymousClass2 implements Brush {
        public AnonymousClass2() {
        }

        @Override
        public float getIntensity(float x10, float y10) {
            return 1.0f;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Terrain$Layer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Terrain$Layer.class
  classes.dex
 */
    public static class Layer {
        @HideGetSet
        public Texture getAlbedo() {
            return null;
        }

        @HideGetSet
        public Texture getNormal() {
            return null;
        }

        @HideGetSet
        public float getSize() {
            return 0.0f;
        }

        @HideGetSet
        public void setSize(float f10) {
        }

        @HideGetSet
        public float getRoughness() {
            return 0.0f;
        }

        @HideGetSet
        public void setRoughness(float f10) {
        }
    }

    @HideGetSet
    public float getWidth() {
        return 0.0f;
    }

    @HideGetSet
    public void setWidth(float f10) {
    }

    @HideGetSet
    public float getMaxHeight() {
        return 0.0f;
    }

    @HideGetSet
    public void setMaxHeight(float f10) {
    }

    public boolean isInsideTerrain(float f10, float f11) {
        return false;
    }

    public boolean isInsideTerrain(Vector3 vector3) {
        return false;
    }

    public Point2 nearestVerticeAt(Vector3 vector3) {
        return null;
    }

    public Point2 nearestLayerVerticeAt(Vector3 vector3) {
        return null;
    }

    public float getWorldY(float f10, float f11) {
        return 0.0f;
    }

    public float getWorldY(Vector3 vector3) {
        return 0.0f;
    }

    @HideGetSet
    public int getResolution() {
        return 0;
    }

    @HideGetSet
    public int getLodLevels() {
        return 0;
    }

    public float getHeight(Point2 point2) {
        return 0.0f;
    }

    public float getHeight(int i10, int i11) {
        return 0.0f;
    }

    public void setHeight(Point2 point2, float f10) {
    }

    public void setHeight(int i10, int i11, float f10) {
    }

    public float getLayerIntensity(int i10, int i11, int i12) {
        return 0.0f;
    }

    public void setLayerIntensity(int i10, int i11, int i12, float f10) {
    }

    public int getLayersCount() {
        return 0;
    }

    public Layer getLayerAt(int i10) {
        return null;
    }

    public void addLayer(Layer layer) {
    }

    public LaserHit traceRay(Vector3 vector3, Vector3 vector32) {
        return traceRay(vector3, vector32, 0.0f);
    }

    public LaserHit traceRay(Vector3 vector3, Vector3 vector32, float f10) {
        return null;
    }

    public void applyRaiseLower(Vector2 vector2, float f10, float f11, Brush brush) {
    }

    public void applyPaint(Vector2 vector2, float f10, float f11, float f12, int i10, Brush brush) {
    }
}
