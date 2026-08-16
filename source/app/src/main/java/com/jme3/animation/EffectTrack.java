package com.jme3.animation;

import com.jme3.effect.ParticleEmitter;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.AbstractControl;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import java.io.IOException;
import java.util.Iterator;
import java.util.logging.Level;
import java.util.logging.Logger;

@Deprecated
public class EffectTrack implements ClonableTrack {
    private static final Logger logger = Logger.getLogger(EffectTrack.class.getName());
    private boolean emitted;
    private ParticleEmitter emitter;
    private boolean initialized;
    private final KillParticleControl killParticles;
    private float length;
    private float particlesPerSeconds;
    private float startOffset;

    public static class KillParticleControl extends AbstractControl {
        ParticleEmitter emitter;
        boolean stopRequested = false;
        boolean remove = false;

        @Override
        public void controlRender(RenderManager renderManager, ViewPort viewPort) {
        }

        @Override
        public void controlUpdate(float f10) {
            if (this.remove) {
                this.emitter.removeControl(this);
            } else if (this.emitter.getNumVisibleParticles() == 0) {
                this.emitter.setCullHint(Spatial.CullHint.Always);
                this.emitter.setEnabled(false);
                this.emitter.removeControl(this);
                this.stopRequested = false;
            }
        }

        @Override
        public Object jmeClone() {
            KillParticleControl killParticleControl = new KillParticleControl();
            killParticleControl.remove = true;
            killParticleControl.spatial = this.spatial;
            return killParticleControl;
        }

        @Override
        public void setSpatial(Spatial spatial) {
            super.setSpatial(spatial);
            if (spatial != null) {
                if (!(spatial instanceof ParticleEmitter)) {
                    throw new IllegalArgumentException("KillParticleEmitter can only ba attached to ParticleEmitter");
                }
                this.emitter = (ParticleEmitter) spatial;
            }
        }
    }

    public class OnEndListener implements AnimEventListener {
        private OnEndListener() {
        }

        @Override
        public void onAnimChange(AnimControl animControl, AnimChannel animChannel, String str) {
        }

        @Override
        public void onAnimCycleDone(AnimControl animControl, AnimChannel animChannel, String str) {
            EffectTrack.this.stop();
        }
    }

    public EffectTrack() {
        this.startOffset = 0.0f;
        this.particlesPerSeconds = 0.0f;
        this.length = 0.0f;
        this.emitted = false;
        this.initialized = false;
        this.killParticles = new KillParticleControl();
    }

    private ParticleEmitter findEmitter(Spatial spatial) {
        if (spatial instanceof ParticleEmitter) {
            ParticleEmitter particleEmitter = (ParticleEmitter) spatial;
            TrackInfo trackInfo = (TrackInfo) particleEmitter.getUserData("TrackInfo");
            if (trackInfo == null || !trackInfo.getTracks().contains(this)) {
                return null;
            }
            return particleEmitter;
        }
        if (spatial instanceof Node) {
            Iterator<Spatial> it = ((Node) spatial).getChildren().iterator();
            while (it.hasNext()) {
                ParticleEmitter findEmitter = findEmitter(it.next());
                if (findEmitter != null) {
                    return findEmitter;
                }
            }
        }
        return null;
    }

    private void removeUserData(EffectTrack effectTrack) {
        TrackInfo trackInfo = (TrackInfo) effectTrack.emitter.getUserData("TrackInfo");
        if (trackInfo == null) {
            return;
        }
        trackInfo.getTracks().remove(effectTrack);
    }

    private void setUserData(EffectTrack effectTrack) {
        TrackInfo trackInfo = (TrackInfo) effectTrack.emitter.getUserData("TrackInfo");
        if (trackInfo == null) {
            trackInfo = new TrackInfo();
            effectTrack.emitter.setUserData("TrackInfo", trackInfo);
        }
        trackInfo.addTrack(effectTrack);
    }

    public void stop() {
        this.emitter.setParticlesPerSec(0.0f);
        this.emitted = false;
        KillParticleControl killParticleControl = this.killParticles;
        if (killParticleControl.stopRequested) {
            return;
        }
        this.emitter.addControl(killParticleControl);
        this.killParticles.stopRequested = true;
    }

    @Override
    public void cleanUp() {
        TrackInfo trackInfo = (TrackInfo) this.emitter.getUserData("TrackInfo");
        trackInfo.getTracks().remove(this);
        if (trackInfo.getTracks().isEmpty()) {
            this.emitter.setUserData("TrackInfo", null);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.emitter = (ParticleEmitter) cloner.clone(this.emitter);
    }

    @Override
    public Track cloneForSpatial(Spatial spatial) {
        EffectTrack effectTrack = new EffectTrack();
        effectTrack.particlesPerSeconds = this.particlesPerSeconds;
        effectTrack.length = this.length;
        effectTrack.startOffset = this.startOffset;
        ParticleEmitter findEmitter = findEmitter(spatial);
        effectTrack.emitter = findEmitter;
        if (findEmitter == null) {
            logger.log(Level.WARNING, "{0} was not found in {1} or is not bound to this track", new Object[]{this.emitter.getName(), spatial.getName()});
            effectTrack.emitter = this.emitter;
        }
        removeUserData(this);
        setUserData(effectTrack);
        effectTrack.emitter.setParticlesPerSec(0.0f);
        return effectTrack;
    }

    public ParticleEmitter getEmitter() {
        return this.emitter;
    }

    @Override
    public float[] getKeyFrameTimes() {
        return new float[]{this.startOffset};
    }

    @Override
    public float getLength() {
        return this.length;
    }

    public float getStartOffset() {
        return this.startOffset;
    }

    @Override
    public Object jmeClone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException("Error cloning", e10);
        }
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.particlesPerSeconds = capsule.readFloat("particlesPerSeconds", 0.0f);
        ParticleEmitter particleEmitter = (ParticleEmitter) capsule.readSavable("emitter", null);
        this.emitter = particleEmitter;
        particleEmitter.setParticlesPerSec(0.0f);
        this.length = capsule.readFloat("length", this.length);
        this.startOffset = capsule.readFloat("startOffset", 0.0f);
    }

    public void setEmitter(ParticleEmitter particleEmitter) {
        if (this.emitter != null) {
            ((TrackInfo) particleEmitter.getUserData("TrackInfo")).getTracks().remove(this);
        }
        this.emitter = particleEmitter;
        this.particlesPerSeconds = particleEmitter.getParticlesPerSec();
        this.emitter.setParticlesPerSec(0.0f);
        setUserData(this);
    }

    public void setStartOffset(float f10) {
        this.startOffset = f10;
    }

    @Override
    public void setTime(float f10, float f11, AnimControl animControl, AnimChannel animChannel, TempVars tempVars) {
        if (f10 >= this.length) {
            return;
        }
        if (!this.initialized) {
            animControl.addListener(new OnEndListener());
            this.initialized = true;
        }
        if (this.emitted || f10 < this.startOffset) {
            return;
        }
        this.emitted = true;
        this.emitter.setCullHint(Spatial.CullHint.Dynamic);
        this.emitter.setEnabled(true);
        float f12 = this.particlesPerSeconds;
        if (f12 != 0.0f) {
            this.emitter.setParticlesPerSec(f12);
            return;
        }
        this.emitter.emitAllParticles();
        KillParticleControl killParticleControl = this.killParticles;
        if (killParticleControl.stopRequested) {
            return;
        }
        this.emitter.addControl(killParticleControl);
        this.killParticles.stopRequested = true;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        this.emitter.setParticlesPerSec(this.particlesPerSeconds);
        capsule.write(this.emitter, "emitter", (Savable) null);
        capsule.write(this.particlesPerSeconds, "particlesPerSeconds", 0.0f);
        capsule.write(this.length, "length", 0.0f);
        capsule.write(this.startOffset, "startOffset", 0.0f);
        this.emitter.setParticlesPerSec(0.0f);
    }

    @Override
    public EffectTrack m1257clone() {
        return new EffectTrack(this.emitter, this.length, this.startOffset);
    }

    public EffectTrack(ParticleEmitter particleEmitter, float f10) {
        this.startOffset = 0.0f;
        this.particlesPerSeconds = 0.0f;
        this.length = 0.0f;
        this.emitted = false;
        this.initialized = false;
        this.killParticles = new KillParticleControl();
        this.emitter = particleEmitter;
        this.particlesPerSeconds = particleEmitter.getParticlesPerSec();
        this.emitter.setParticlesPerSec(0.0f);
        this.length = f10;
        setUserData(this);
    }

    public EffectTrack(ParticleEmitter particleEmitter, float f10, float f11) {
        this(particleEmitter, f10);
        this.startOffset = f11;
    }
}
