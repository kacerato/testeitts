package com.jme3.environment.generation;

import com.jme3.app.Application;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.light.LightProbe;
import com.jme3.math.Vector3f;
import com.jme3.texture.TextureCubeMap;
import java.util.concurrent.Callable;

public class IrradianceSphericalHarmonicsGenerator extends RunnableWithProgress {
    private final Application app;
    private TextureCubeMap sourceMap;
    private LightProbe store;

    public IrradianceSphericalHarmonicsGenerator(Application application, JobProgressListener<Integer> jobProgressListener) {
        super(jobProgressListener);
        this.app = application;
    }

    @Override
    public void run() {
        this.app.enqueue(new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                IrradianceSphericalHarmonicsGenerator.this.listener.start();
                return null;
            }
        });
        try {
            Vector3f[] sphericalHarmonicsCoefficents = EnvMapUtils.getSphericalHarmonicsCoefficents(this.sourceMap);
            EnvMapUtils.prepareShCoefs(sphericalHarmonicsCoefficents);
            this.store.setShCoeffs(sphericalHarmonicsCoefficents);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.app.enqueue(new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                IrradianceSphericalHarmonicsGenerator.this.listener.done(6);
                return null;
            }
        });
    }

    public void setGenerationParam(TextureCubeMap textureCubeMap, LightProbe lightProbe) {
        this.sourceMap = textureCubeMap;
        this.store = lightProbe;
        reset();
    }
}
