package com.jme3.environment;

import com.jme3.asset.AssetManager;
import com.jme3.environment.baker.IBLGLEnvBakerLight;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.light.LightProbe;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;

public class FastLightProbeFactory {
    public static Node getDebugGui(AssetManager assetManager, LightProbe lightProbe) {
        if (!lightProbe.isReady()) {
            throw new UnsupportedOperationException("This EnvProbe is not ready yet, try to test isReady()");
        }
        Node node = new Node("debug gui probe");
        Node cubeMapCrossDebugViewWithMipMaps = EnvMapUtils.getCubeMapCrossDebugViewWithMipMaps(lightProbe.getPrefilteredEnvMap(), assetManager);
        node.attachChild(cubeMapCrossDebugViewWithMipMaps);
        cubeMapCrossDebugViewWithMipMaps.setLocalTranslation(520.0f, 0.0f, 0.0f);
        return node;
    }

    public static LightProbe makeProbe(RenderManager renderManager, AssetManager assetManager, int i10, Vector3f vector3f, float f10, float f11, Spatial spatial) {
        IBLGLEnvBakerLight iBLGLEnvBakerLight = new IBLGLEnvBakerLight(renderManager, assetManager, null, null, i10, i10);
        iBLGLEnvBakerLight.setTexturePulling(true);
        iBLGLEnvBakerLight.bakeEnvironment(spatial, vector3f, f10, f11, null);
        iBLGLEnvBakerLight.bakeSpecularIBL();
        iBLGLEnvBakerLight.bakeSphericalHarmonicsCoefficients();
        LightProbe lightProbe = new LightProbe();
        lightProbe.setPosition(vector3f);
        lightProbe.setPrefilteredMap(iBLGLEnvBakerLight.getSpecularIBL());
        int[] mipMapSizes = lightProbe.getPrefilteredEnvMap().getImage().getMipMapSizes();
        lightProbe.setNbMipMaps(mipMapSizes != null ? mipMapSizes.length : 1);
        lightProbe.setShCoeffs(iBLGLEnvBakerLight.getSphericalHarmonicsCoefficients());
        lightProbe.setReady(true);
        iBLGLEnvBakerLight.clean();
        return lightProbe;
    }
}
