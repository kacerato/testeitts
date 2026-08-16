package com.ardor3d.renderer.state;

import com.ardor3d.bounding.BoundingVolume;
import com.ardor3d.light.Light;
import com.ardor3d.light.PointLight;
import com.ardor3d.light.SpotLight;
import com.ardor3d.math.Plane;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyPlane;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.Spatial;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public abstract class LightUtil {
    private static LightComparator lightComparator = new LightComparator();

    public static class LightComparator implements Comparator<Light> {
        private Spatial _sp;

        private LightComparator() {
        }

        public void setSpatial(Spatial spatial) {
            this._sp = spatial;
        }

        @Override
        public int compare(Light light, Light light2) {
            double valueFor = LightUtil.getValueFor(light, this._sp.getWorldBound()) - LightUtil.getValueFor(light2, this._sp.getWorldBound());
            if (0.0d > valueFor) {
                return 1;
            }
            return 0.0d < valueFor ? -1 : 0;
        }
    }

    public static double getColorValue(Light light) {
        return strength(light.getAmbient()) + strength(light.getDiffuse());
    }

    public static double getValueFor(Light light, BoundingVolume boundingVolume) {
        if (!light.isEnabled()) {
            return 0.0d;
        }
        if (light.getType() == Light.Type.Directional) {
            return getColorValue(light);
        }
        if (light.getType() == Light.Type.Point) {
            return getValueFor((PointLight) light, boundingVolume);
        }
        if (light.getType() == Light.Type.Spot) {
            return getValueFor((SpotLight) light, boundingVolume);
        }
        return 0.3d;
    }

    public static void sort(Mesh mesh, List<Light> list) {
        lightComparator.setSpatial(mesh);
        Collections.sort(list, lightComparator);
    }

    public static double strength(ReadOnlyColorRGBA readOnlyColorRGBA) {
        return Math.sqrt((readOnlyColorRGBA.getRed() * readOnlyColorRGBA.getRed()) + (readOnlyColorRGBA.getGreen() * readOnlyColorRGBA.getGreen()) + (readOnlyColorRGBA.getBlue() * readOnlyColorRGBA.getBlue()));
    }

    public static double getValueFor(PointLight pointLight, BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return 0.0d;
        }
        if (pointLight.isAttenuate()) {
            double distanceTo = boundingVolume.distanceTo(pointLight.getLocation());
            return getColorValue(pointLight) / ((pointLight.getConstant() + (pointLight.getLinear() * distanceTo)) + ((pointLight.getQuadratic() * distanceTo) * distanceTo));
        }
        return getColorValue(pointLight);
    }

    public static double getValueFor(SpotLight spotLight, BoundingVolume boundingVolume) {
        if (boundingVolume == null) {
            return 0.0d;
        }
        ReadOnlyVector3 direction = spotLight.getDirection();
        if (boundingVolume.whichSide(new Plane(direction, direction.dot(spotLight.getLocation()))) != ReadOnlyPlane.Side.Inside) {
            return getValueFor((PointLight) spotLight, boundingVolume);
        }
        return 0.0d;
    }
}
