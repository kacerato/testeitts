package com.jme3.environment;

import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.asset.AssetManager;
import com.jme3.environment.baker.IBLGLEnvBakerLight;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.light.LightProbe;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Predicate;

public class EnvironmentProbeControl extends LightProbe implements Control {
    private static AtomicInteger instanceCounter = new AtomicInteger(0);
    private AssetManager assetManager;
    private boolean bakeNeeded;
    private boolean enabled;
    private int envMapSize;
    private Predicate<Geometry> filter;
    private float frustumFar;
    private float frustumNear;
    private boolean requiredSavableResults;
    private Spatial spatial;
    private String uuid;

    public EnvironmentProbeControl() {
        this.bakeNeeded = true;
        this.envMapSize = 256;
        this.requiredSavableResults = false;
        this.frustumNear = 0.001f;
        this.frustumFar = 1000.0f;
        this.uuid = "none";
        this.enabled = true;
        this.filter = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean lambda$new$0;
                lambda$new$0 = EnvironmentProbeControl.this.lambda$new$0((Geometry) obj);
                return lambda$new$0;
            }
        };
        this.uuid = System.currentTimeMillis() + ConstantDescs.DEFAULT_NAME + instanceCounter.getAndIncrement();
        setAreaType(LightProbe.AreaType.Spherical);
        getArea().setRadius(Float.MAX_VALUE);
    }

    public boolean lambda$new$0(Geometry geometry) {
        if (geometry.getUserData("tags.env") == null) {
            if (geometry.getUserData("tags.env.env" + this.uuid) == null) {
                return false;
            }
        }
        return true;
    }

    public static void tagGlobal(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                tagGlobal(it.next());
            }
        } else if (spatial instanceof Geometry) {
            spatial.setUserData("tags.env", Boolean.TRUE);
        }
    }

    public static void untagGlobal(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                untagGlobal(it.next());
            }
        } else if (spatial instanceof Geometry) {
            spatial.setUserData("tags.env", null);
        }
    }

    @Override
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException();
    }

    public float getFrustumFar() {
        return this.frustumFar;
    }

    public float getFrustumNear() {
        return this.frustumNear;
    }

    public Spatial getSpatial() {
        return this.spatial;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isRequiredSavableResults() {
        return this.requiredSavableResults;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.enabled = capsule.readBoolean("enabled", true);
        this.spatial = (Spatial) capsule.readSavable("spatial", null);
        this.envMapSize = capsule.readInt(XMLExporter.ATTRIBUTE_SIZE, 256);
        this.requiredSavableResults = capsule.readBoolean("requiredSavableResults", false);
        this.bakeNeeded = capsule.readBoolean("bakeNeeded", true);
        this.assetManager = jmeImporter.getAssetManager();
        this.frustumFar = capsule.readFloat("frustumFar", 1000.0f);
        this.frustumNear = capsule.readFloat("frustumNear", 0.001f);
        this.uuid = capsule.readString("envProbeControlUUID", "none");
    }

    public void rebake() {
        this.bakeNeeded = true;
    }

    public void rebakeNow(RenderManager renderManager) {
        AssetManager assetManager = this.assetManager;
        int i10 = this.envMapSize;
        IBLGLEnvBakerLight iBLGLEnvBakerLight = new IBLGLEnvBakerLight(renderManager, assetManager, null, null, i10, i10);
        iBLGLEnvBakerLight.setTexturePulling(isRequiredSavableResults());
        iBLGLEnvBakerLight.bakeEnvironment(this.spatial, getPosition(), this.frustumNear, this.frustumFar, this.filter);
        iBLGLEnvBakerLight.bakeSpecularIBL();
        iBLGLEnvBakerLight.bakeSphericalHarmonicsCoefficients();
        setPrefilteredMap(iBLGLEnvBakerLight.getSpecularIBL());
        int[] mipMapSizes = getPrefilteredEnvMap().getImage().getMipMapSizes();
        setNbMipMaps(mipMapSizes != null ? mipMapSizes.length : 1);
        setShCoeffs(iBLGLEnvBakerLight.getSphericalHarmonicsCoefficients());
        setPosition(Vector3f.ZERO);
        setReady(true);
        iBLGLEnvBakerLight.clean();
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
        if (isEnabled() && this.bakeNeeded) {
            this.bakeNeeded = false;
            rebakeNow(renderManager);
        }
    }

    public void setAssetManager(AssetManager assetManager) {
        this.assetManager = assetManager;
    }

    @Override
    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setFrustumFar(float f10) {
        this.frustumFar = f10;
    }

    public void setFrustumNear(float f10) {
        this.frustumNear = f10;
    }

    public void setRequiredSavableResults(boolean z10) {
        this.requiredSavableResults = z10;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        Spatial spatial2 = this.spatial;
        if (spatial2 != null && spatial != null && spatial != spatial2) {
            throw new IllegalStateException("This control has already been added to a Spatial");
        }
        this.spatial = spatial;
        if (spatial != null) {
            spatial.addLight(this);
        }
    }

    public void tag(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                tag(it.next());
            }
        } else if (spatial instanceof Geometry) {
            spatial.setUserData("tags.env.env" + this.uuid, Boolean.TRUE);
        }
    }

    public void untag(Spatial spatial) {
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                untag(it.next());
            }
        } else if (spatial instanceof Geometry) {
            spatial.setUserData("tags.env.env" + this.uuid, null);
        }
    }

    @Override
    public void update(float f10) {
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(this.spatial, "spatial", (Savable) null);
        capsule.write(this.envMapSize, XMLExporter.ATTRIBUTE_SIZE, 256);
        capsule.write(this.requiredSavableResults, "requiredSavableResults", false);
        capsule.write(this.bakeNeeded, "bakeNeeded", true);
        capsule.write(this.frustumFar, "frustumFar", 1000.0f);
        capsule.write(this.frustumNear, "frustumNear", 0.001f);
        capsule.write(this.uuid, "envProbeControlUUID", "none");
    }

    public EnvironmentProbeControl(AssetManager assetManager, int i10) {
        this();
        this.envMapSize = i10;
        this.assetManager = assetManager;
    }
}
