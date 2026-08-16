package com.jme3.environment;

import com.jme3.app.Application;
import com.jme3.asset.AssetManager;
import com.jme3.environment.generation.IrradianceSphericalHarmonicsGenerator;
import com.jme3.environment.generation.JobProgressAdapter;
import com.jme3.environment.generation.JobProgressListener;
import com.jme3.environment.generation.PrefilteredEnvMapFaceGenerator;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.light.LightProbe;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.texture.TextureCubeMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;

public class LightProbeFactory {

    public static class JobListener extends JobProgressAdapter<Integer> {
        JobProgressListener<LightProbe> globalListener;
        int index;
        JobState jobState;
        LightProbe probe;

        public JobListener(JobProgressListener<LightProbe> jobProgressListener, JobState jobState, LightProbe lightProbe, int i10) {
            this.globalListener = jobProgressListener;
            this.jobState = jobState;
            this.probe = lightProbe;
            this.index = i10;
        }

        @Override
        public void progress(double d10) {
            this.jobState.progress[this.index] = d10;
            JobProgressListener<LightProbe> jobProgressListener = this.globalListener;
            if (jobProgressListener != null) {
                jobProgressListener.progress(r0.getProgress());
            }
        }

        @Override
        public void start() {
            JobProgressListener<LightProbe> jobProgressListener = this.globalListener;
            if (jobProgressListener != null) {
                JobState jobState = this.jobState;
                if (jobState.started) {
                    return;
                }
                jobState.started = true;
                jobProgressListener.start();
            }
        }

        @Override
        public void done(Integer num) {
            if (this.globalListener != null) {
                if (num.intValue() < 6) {
                    this.globalListener.step("Prefiltered env map face " + ((Object) num) + " generated");
                } else {
                    this.globalListener.step("Irradiance map generated");
                }
            }
            JobState jobState = this.jobState;
            jobState.done[this.index] = true;
            if (jobState.isDone()) {
                LightProbe lightProbe = this.probe;
                lightProbe.setNbMipMaps(lightProbe.getPrefilteredEnvMap().getImage().getMipMapSizes().length);
                this.probe.setReady(true);
                JobProgressListener<LightProbe> jobProgressListener = this.globalListener;
                if (jobProgressListener != null) {
                    jobProgressListener.done(this.probe);
                }
                this.jobState.executor.shutdownNow();
            }
        }
    }

    public static class JobState {
        ScheduledThreadPoolExecutor executor;
        double[] progress = new double[7];
        boolean[] done = new boolean[7];
        boolean started = false;

        public JobState(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            this.executor = scheduledThreadPoolExecutor;
        }

        public float getProgress() {
            float f10 = 0.0f;
            for (double d10 : this.progress) {
                f10 = (float) (f10 + d10);
            }
            return f10 / 7.0f;
        }

        public boolean isDone() {
            for (boolean z10 : this.done) {
                if (!z10) {
                    return false;
                }
            }
            return true;
        }
    }

    private LightProbeFactory() {
    }

    public static void generatePbrMaps(TextureCubeMap textureCubeMap, LightProbe lightProbe, Application application, EnvMapUtils.GenerationType generationType, JobProgressListener<LightProbe> jobProgressListener) {
        PrefilteredEnvMapFaceGenerator[] prefilteredEnvMapFaceGeneratorArr = new PrefilteredEnvMapFaceGenerator[6];
        JobState jobState = new JobState(new ScheduledThreadPoolExecutor(7));
        IrradianceSphericalHarmonicsGenerator irradianceSphericalHarmonicsGenerator = new IrradianceSphericalHarmonicsGenerator(application, new JobListener(jobProgressListener, jobState, lightProbe, 6));
        int width = textureCubeMap.getImage().getWidth();
        irradianceSphericalHarmonicsGenerator.setGenerationParam(EnvMapUtils.duplicateCubeMap(textureCubeMap), lightProbe);
        jobState.executor.execute(irradianceSphericalHarmonicsGenerator);
        for (int i10 = 0; i10 < 6; i10++) {
            PrefilteredEnvMapFaceGenerator prefilteredEnvMapFaceGenerator = new PrefilteredEnvMapFaceGenerator(application, i10, new JobListener(jobProgressListener, jobState, lightProbe, i10));
            prefilteredEnvMapFaceGeneratorArr[i10] = prefilteredEnvMapFaceGenerator;
            prefilteredEnvMapFaceGenerator.setGenerationParam(EnvMapUtils.duplicateCubeMap(textureCubeMap), width, EnvMapUtils.FixSeamsMethod.None, generationType, lightProbe.getPrefilteredEnvMap());
            jobState.executor.execute(prefilteredEnvMapFaceGeneratorArr[i10]);
        }
    }

    public static Node getDebugGui(AssetManager assetManager, LightProbe lightProbe) {
        if (!lightProbe.isReady()) {
            throw new IllegalStateException("The LightProbe is not ready yet, please test isReady().");
        }
        Node node = new Node("debug gui probe");
        Node cubeMapCrossDebugViewWithMipMaps = EnvMapUtils.getCubeMapCrossDebugViewWithMipMaps(lightProbe.getPrefilteredEnvMap(), assetManager);
        node.attachChild(cubeMapCrossDebugViewWithMipMaps);
        cubeMapCrossDebugViewWithMipMaps.setLocalTranslation(520.0f, 0.0f, 0.0f);
        return node;
    }

    public static LightProbe makeProbe(EnvironmentCamera environmentCamera, Spatial spatial) {
        return makeProbe(environmentCamera, spatial, null);
    }

    public static LightProbe updateProbe(final LightProbe lightProbe, final EnvironmentCamera environmentCamera, Spatial spatial, final EnvMapUtils.GenerationType generationType, final JobProgressListener<LightProbe> jobProgressListener) {
        environmentCamera.setPosition(lightProbe.getPosition());
        lightProbe.setReady(false);
        if (lightProbe.getPrefilteredEnvMap() != null) {
            lightProbe.getPrefilteredEnvMap().getImage().dispose();
        }
        lightProbe.setPrefilteredMap(EnvMapUtils.createPrefilteredEnvMap(environmentCamera.getSize(), environmentCamera.getImageFormat(environmentCamera.getApplication().getRenderManager().getRenderer())));
        environmentCamera.snapshot(spatial, new JobProgressAdapter<TextureCubeMap>() {
            @Override
            public void done(TextureCubeMap textureCubeMap) {
                LightProbeFactory.generatePbrMaps(textureCubeMap, LightProbe.this, environmentCamera.getApplication(), generationType, jobProgressListener);
            }
        });
        return lightProbe;
    }

    public static LightProbe makeProbe(final EnvironmentCamera environmentCamera, Spatial spatial, final EnvMapUtils.GenerationType generationType, final JobProgressListener<LightProbe> jobProgressListener) {
        final LightProbe lightProbe = new LightProbe();
        lightProbe.setPosition(environmentCamera.getPosition());
        lightProbe.setPrefilteredMap(EnvMapUtils.createPrefilteredEnvMap(environmentCamera.getSize(), environmentCamera.getImageFormat(environmentCamera.getApplication().getRenderManager().getRenderer())));
        environmentCamera.snapshot(spatial, new JobProgressAdapter<TextureCubeMap>() {
            @Override
            public void done(TextureCubeMap textureCubeMap) {
                LightProbeFactory.generatePbrMaps(textureCubeMap, LightProbe.this, environmentCamera.getApplication(), generationType, jobProgressListener);
            }
        });
        return lightProbe;
    }

    public static LightProbe makeProbe(EnvironmentCamera environmentCamera, Spatial spatial, JobProgressListener<LightProbe> jobProgressListener) {
        return makeProbe(environmentCamera, spatial, EnvMapUtils.GenerationType.Fast, jobProgressListener);
    }

    public static LightProbe updateProbe(LightProbe lightProbe, EnvironmentCamera environmentCamera, Spatial spatial, JobProgressListener<LightProbe> jobProgressListener) {
        return updateProbe(lightProbe, environmentCamera, spatial, EnvMapUtils.GenerationType.Fast, jobProgressListener);
    }
}
