package com.jme3.effect;

import com.jme3.bounding.BoundingBox;
import com.jme3.effect.ParticleMesh;
import com.jme3.effect.influencers.DefaultParticleInfluencer;
import com.jme3.effect.influencers.ParticleInfluencer;
import com.jme3.effect.shapes.EmitterPointShape;
import com.jme3.effect.shapes.EmitterShape;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Matrix3f;
import com.jme3.math.Quaternion;
import com.jme3.math.Transform;
import com.jme3.math.Vector3f;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public class ParticleEmitter extends Geometry {
    private ParticleEmitterControl control;
    private boolean enabled;
    private ColorRGBA endColor;
    private float endSize;
    private Vector3f faceNormal;
    private boolean facingVelocity;
    private int firstUnUsed;
    private Vector3f gravity;
    private float highLife;
    private int imagesX;
    private int imagesY;
    private transient Vector3f lastPos;
    private int lastUsed;
    private float lowLife;
    private ParticleMesh.Type meshType;
    private ParticleInfluencer particleInfluencer;
    private ParticleMesh particleMesh;
    private Particle[] particles;
    private float particlesPerSec;
    private boolean randomAngle;
    private float rotateSpeed;
    private boolean selectRandomImage;
    private EmitterShape shape;
    private ColorRGBA startColor;
    private float startSize;
    private transient Vector3f temp;
    private float timeDifference;
    private boolean worldSpace;
    private static final EmitterShape DEFAULT_SHAPE = new EmitterPointShape(Vector3f.ZERO);
    private static final ParticleInfluencer DEFAULT_INFLUENCER = new DefaultParticleInfluencer();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$effect$ParticleMesh$Type;

        static {
            int[] iArr = new int[ParticleMesh.Type.values().length];
            $SwitchMap$com$jme3$effect$ParticleMesh$Type = iArr;
            try {
                iArr[ParticleMesh.Type.Point.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$effect$ParticleMesh$Type[ParticleMesh.Type.Triangle.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class ParticleEmitterControl implements Control, JmeCloneable {
        ParticleEmitter parentEmitter;

        public ParticleEmitterControl() {
        }

        @Override
        public void cloneFields(Cloner cloner, Object obj) {
            this.parentEmitter = (ParticleEmitter) cloner.clone(this.parentEmitter);
        }

        @Override
        @Deprecated
        public Control cloneForSpatial(Spatial spatial) {
            throw new UnsupportedOperationException();
        }

        public boolean isEnabled() {
            return this.parentEmitter.isEnabled();
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
        }

        @Override
        public void render(RenderManager renderManager, ViewPort viewPort) {
            this.parentEmitter.renderFromControl(renderManager, viewPort);
        }

        public void setEnabled(boolean z10) {
            this.parentEmitter.setEnabled(z10);
        }

        @Override
        public void setSpatial(Spatial spatial) {
        }

        @Override
        public void update(float f10) {
            this.parentEmitter.updateFromControl(f10);
        }

        @Override
        public void write(JmeExporter jmeExporter) throws IOException {
        }

        public ParticleEmitterControl(ParticleEmitter particleEmitter) {
            this.parentEmitter = particleEmitter;
        }
    }

    public ParticleEmitter(String str, ParticleMesh.Type type, int i10) {
        super(str);
        this.enabled = true;
        this.shape = DEFAULT_SHAPE;
        this.particleInfluencer = DEFAULT_INFLUENCER;
        this.particlesPerSec = 20.0f;
        this.timeDifference = 0.0f;
        this.lowLife = 3.0f;
        this.highLife = 7.0f;
        this.gravity = new Vector3f(0.0f, 0.1f, 0.0f);
        this.faceNormal = new Vector3f(Vector3f.NAN);
        this.imagesX = 1;
        this.imagesY = 1;
        this.startColor = new ColorRGBA(0.4f, 0.4f, 0.4f, 0.5f);
        this.endColor = new ColorRGBA(0.1f, 0.1f, 0.1f, 0.0f);
        this.startSize = 0.2f;
        this.endSize = 2.0f;
        this.worldSpace = true;
        this.temp = new Vector3f();
        setBatchHint(Spatial.BatchHint.Never);
        setIgnoreTransform(true);
        setShadowMode(RenderQueue.ShadowMode.Off);
        setQueueBucket(RenderQueue.Bucket.Transparent);
        this.meshType = type;
        this.shape = this.shape.deepClone();
        this.particleInfluencer = this.particleInfluencer.m1265clone();
        ParticleEmitterControl particleEmitterControl = new ParticleEmitterControl(this);
        this.control = particleEmitterControl;
        this.controls.add(particleEmitterControl);
        initParticleMesh();
        setNumParticles(i10);
    }

    private void computeBoundingVolume(Particle particle, Vector3f vector3f, Vector3f vector3f2) {
        Vector3f vector3f3 = this.temp.set(particle.position);
        float f10 = particle.size;
        vector3f3.addLocal(f10, f10, f10);
        vector3f2.maxLocal(this.temp);
        Vector3f vector3f4 = this.temp.set(particle.position);
        float f11 = particle.size;
        vector3f4.subtractLocal(f11, f11, f11);
        vector3f.minLocal(this.temp);
    }

    private Particle emitParticle(Vector3f vector3f, Vector3f vector3f2) {
        int i10 = this.lastUsed;
        int i11 = i10 + 1;
        Particle[] particleArr = this.particles;
        if (i11 >= particleArr.length) {
            return null;
        }
        Particle particle = particleArr[i11];
        if (this.selectRandomImage) {
            int nextRandomInt = FastMath.nextRandomInt(0, this.imagesY - 1);
            int i12 = this.imagesX;
            particle.imageIndex = (nextRandomInt * i12) + FastMath.nextRandomInt(0, i12 - 1);
        }
        float nextRandomFloat = this.lowLife + (FastMath.nextRandomFloat() * (this.highLife - this.lowLife));
        particle.startlife = nextRandomFloat;
        particle.life = nextRandomFloat;
        particle.color.set(this.startColor);
        particle.size = this.startSize;
        this.particleInfluencer.influenceParticle(particle, this.shape);
        if (this.worldSpace) {
            Transform transform = this.worldTransform;
            Vector3f vector3f3 = particle.position;
            transform.transformVector(vector3f3, vector3f3);
            Quaternion rotation = this.worldTransform.getRotation();
            Vector3f vector3f4 = particle.velocity;
            rotation.mult(vector3f4, vector3f4);
        }
        if (this.randomAngle) {
            particle.angle = FastMath.nextRandomFloat() * 6.2831855f;
        }
        float f10 = this.rotateSpeed;
        if (f10 != 0.0f) {
            particle.rotateSpeed = f10 * ((((FastMath.nextRandomFloat() * 2.0f) - 1.0f) * 0.8f) + 0.2f);
        }
        computeBoundingVolume(particle, vector3f, vector3f2);
        this.lastUsed++;
        this.firstUnUsed = i10 + 2;
        return particle;
    }

    private void freeParticle(int i10) {
        Particle particle = this.particles[i10];
        particle.life = 0.0f;
        particle.size = 0.0f;
        particle.color.set(0.0f, 0.0f, 0.0f, 0.0f);
        particle.imageIndex = 0;
        particle.angle = 0.0f;
        particle.rotateSpeed = 0.0f;
        if (i10 == this.lastUsed) {
            while (true) {
                int i11 = this.lastUsed;
                if (i11 < 0 || this.particles[i11].life != 0.0f) {
                    break;
                } else {
                    this.lastUsed = i11 - 1;
                }
            }
        }
        if (i10 < this.firstUnUsed) {
            this.firstUnUsed = i10;
        }
    }

    private void initParticleMesh() {
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$effect$ParticleMesh$Type[this.meshType.ordinal()];
        if (i10 == 1) {
            ParticlePointMesh particlePointMesh = new ParticlePointMesh();
            this.particleMesh = particlePointMesh;
            setMesh(particlePointMesh);
        } else if (i10 == 2) {
            ParticleTriMesh particleTriMesh = new ParticleTriMesh();
            this.particleMesh = particleTriMesh;
            setMesh(particleTriMesh);
        } else {
            throw new IllegalStateException("Unrecognized particle type: " + ((Object) this.meshType));
        }
    }

    public void renderFromControl(RenderManager renderManager, ViewPort viewPort) {
        Camera camera = viewPort.getCamera();
        if (this.meshType == ParticleMesh.Type.Point) {
            getMaterial().setFloat("Quadratic", camera.getProjectionMatrix().m00 * camera.getWidth() * 0.5f);
        }
        if (this.worldSpace) {
            this.particleMesh.updateParticleData(this.particles, camera, Matrix3f.IDENTITY);
            return;
        }
        TempVars tempVars = TempVars.get();
        this.particleMesh.updateParticleData(this.particles, camera, getWorldRotation().toRotationMatrix(tempVars.tempMat3).invertLocal());
        tempVars.release();
    }

    private void swap(int i10, int i11) {
        Particle[] particleArr = this.particles;
        Particle particle = particleArr[i10];
        particleArr[i10] = particleArr[i11];
        particleArr[i11] = particle;
    }

    private void updateParticleState(float f10) {
        Vector3f vector3f;
        getWorldTransform();
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect1.set(Vector3f.POSITIVE_INFINITY);
        Vector3f vector3f3 = tempVars.vect2.set(Vector3f.NEGATIVE_INFINITY);
        int i10 = 0;
        while (true) {
            Particle[] particleArr = this.particles;
            if (i10 >= particleArr.length) {
                break;
            }
            Particle particle = particleArr[i10];
            float f11 = particle.life;
            if (f11 != 0.0f) {
                float f12 = f11 - f10;
                particle.life = f12;
                if (f12 <= 0.0f) {
                    freeParticle(i10);
                } else {
                    updateParticle(particle, f10, vector3f2, vector3f3);
                    int i11 = this.firstUnUsed;
                    if (i11 < i10) {
                        swap(i11, i10);
                        if (i10 == this.lastUsed) {
                            this.lastUsed = this.firstUnUsed;
                        }
                        this.firstUnUsed++;
                    }
                }
            }
            i10++;
        }
        if (this.lastPos == null || !isInWorldSpace()) {
            vector3f = null;
        } else {
            Vector3f worldTranslation = getWorldTranslation();
            Vector3f vector3f4 = this.lastPos;
            vector3f = worldTranslation.subtract(vector3f4, vector3f4);
        }
        float f13 = 1.0f / this.particlesPerSec;
        float f14 = this.timeDifference + f10;
        while (f14 > f13) {
            f14 -= f13;
            Particle emitParticle = emitParticle(vector3f2, vector3f3);
            if (emitParticle != null) {
                emitParticle.life -= f14;
                if (this.lastPos != null && isInWorldSpace()) {
                    emitParticle.position.interpolateLocal(emitParticle.position.subtract(vector3f, this.temp), 1.0f - (f14 / f10));
                }
                if (emitParticle.life <= 0.0f) {
                    freeParticle(this.lastUsed);
                } else {
                    updateParticle(emitParticle, f14, vector3f2, vector3f3);
                }
            }
        }
        this.timeDifference = f14;
        if (this.lastPos == null) {
            this.lastPos = new Vector3f();
        }
        this.lastPos.set(getWorldTranslation());
        if (Vector3f.isValidVector(vector3f2) && Vector3f.isValidVector(vector3f3)) {
            ((BoundingBox) getMesh().getBound()).setMinMax(vector3f2, vector3f3);
            setBoundRefresh();
        }
        tempVars.release();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.shape = (EmitterShape) cloner.clone(this.shape);
        this.control = (ParticleEmitterControl) cloner.clone(this.control);
        this.faceNormal = (Vector3f) cloner.clone(this.faceNormal);
        this.startColor = (ColorRGBA) cloner.clone(this.startColor);
        this.endColor = (ColorRGBA) cloner.clone(this.endColor);
        this.particleInfluencer = (ParticleInfluencer) cloner.clone(this.particleInfluencer);
        this.gravity = (Vector3f) cloner.clone(this.gravity);
        setMeshType(this.meshType);
        this.temp = (Vector3f) cloner.clone(this.temp);
        this.lastPos = (Vector3f) cloner.clone(this.lastPos);
    }

    public void emitAllParticles() {
        emitParticles(this.particles.length);
    }

    public void emitParticles(int i10) {
        getWorldTransform();
        TempVars tempVars = TempVars.get();
        BoundingBox boundingBox = (BoundingBox) getMesh().getBound();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        boundingBox.getMin(vector3f);
        boundingBox.getMax(vector3f2);
        if (!Vector3f.isValidVector(vector3f)) {
            vector3f.set(Vector3f.POSITIVE_INFINITY);
        }
        if (!Vector3f.isValidVector(vector3f2)) {
            vector3f2.set(Vector3f.NEGATIVE_INFINITY);
        }
        for (int i11 = 0; i11 < i10 && emitParticle(vector3f, vector3f2) != null; i11++) {
        }
        boundingBox.setMinMax(vector3f, vector3f2);
        setBoundRefresh();
        tempVars.release();
    }

    public ColorRGBA getEndColor() {
        return this.endColor;
    }

    public float getEndSize() {
        return this.endSize;
    }

    public Vector3f getFaceNormal() {
        if (Vector3f.isValidVector(this.faceNormal)) {
            return this.faceNormal;
        }
        return null;
    }

    public Vector3f getGravity() {
        return this.gravity;
    }

    public float getHighLife() {
        return this.highLife;
    }

    public int getImagesX() {
        return this.imagesX;
    }

    public int getImagesY() {
        return this.imagesY;
    }

    @Deprecated
    public Vector3f getInitialVelocity() {
        return this.particleInfluencer.getInitialVelocity();
    }

    public float getLowLife() {
        return this.lowLife;
    }

    public int getMaxNumParticles() {
        return this.particles.length;
    }

    public ParticleMesh.Type getMeshType() {
        return this.meshType;
    }

    public int getNumVisibleParticles() {
        return this.lastUsed + 1;
    }

    public ParticleInfluencer getParticleInfluencer() {
        return this.particleInfluencer;
    }

    public Particle[] getParticles() {
        return this.particles;
    }

    public float getParticlesPerSec() {
        return this.particlesPerSec;
    }

    public float getRotateSpeed() {
        return this.rotateSpeed;
    }

    public EmitterShape getShape() {
        return this.shape;
    }

    public ColorRGBA getStartColor() {
        return this.startColor;
    }

    public float getStartSize() {
        return this.startSize;
    }

    @Deprecated
    public float getVelocityVariation() {
        return this.particleInfluencer.getVelocityVariation();
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isFacingVelocity() {
        return this.facingVelocity;
    }

    public boolean isInWorldSpace() {
        return this.worldSpace;
    }

    public boolean isRandomAngle() {
        return this.randomAngle;
    }

    public boolean isSelectRandomImage() {
        return this.selectRandomImage;
    }

    public void killAllParticles() {
        int i10 = 0;
        while (true) {
            Particle[] particleArr = this.particles;
            if (i10 >= particleArr.length) {
                return;
            }
            if (particleArr[i10].life > 0.0f) {
                freeParticle(i10);
            }
            i10++;
        }
    }

    public void killParticle(int i10) {
        freeParticle(i10);
    }

    public void preload(RenderManager renderManager, ViewPort viewPort) {
        updateParticleState(0.0f);
        this.particleMesh.updateParticleData(this.particles, viewPort.getCamera(), Matrix3f.IDENTITY);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        EmitterShape emitterShape = DEFAULT_SHAPE;
        EmitterShape emitterShape2 = (EmitterShape) capsule.readSavable("shape", emitterShape);
        this.shape = emitterShape2;
        if (emitterShape2 == emitterShape) {
            this.shape = emitterShape2.deepClone();
        }
        this.meshType = (ParticleMesh.Type) capsule.readEnum("meshType", ParticleMesh.Type.class, ParticleMesh.Type.Triangle);
        int i10 = 0;
        int readInt = capsule.readInt("numParticles", 0);
        this.enabled = capsule.readBoolean("enabled", true);
        this.particlesPerSec = capsule.readFloat("particlesPerSec", 0.0f);
        this.lowLife = capsule.readFloat("lowLife", 0.0f);
        this.highLife = capsule.readFloat("highLife", 0.0f);
        this.gravity = (Vector3f) capsule.readSavable("gravity", null);
        this.imagesX = capsule.readInt("imagesX", 1);
        this.imagesY = capsule.readInt("imagesY", 1);
        this.startColor = (ColorRGBA) capsule.readSavable("startColor", null);
        this.endColor = (ColorRGBA) capsule.readSavable("endColor", null);
        this.startSize = capsule.readFloat("startSize", 0.0f);
        this.endSize = capsule.readFloat("endSize", 0.0f);
        boolean readBoolean = capsule.readBoolean("worldSpace", false);
        this.worldSpace = readBoolean;
        setIgnoreTransform(readBoolean);
        this.facingVelocity = capsule.readBoolean("facingVelocity", false);
        this.faceNormal = (Vector3f) capsule.readSavable("faceNormal", new Vector3f(Vector3f.NAN));
        this.selectRandomImage = capsule.readBoolean("selectRandomImage", false);
        this.randomAngle = capsule.readBoolean("randomAngle", false);
        this.rotateSpeed = capsule.readFloat("rotateSpeed", 0.0f);
        initParticleMesh();
        setNumParticles(readInt);
        ParticleInfluencer particleInfluencer = DEFAULT_INFLUENCER;
        ParticleInfluencer particleInfluencer2 = (ParticleInfluencer) capsule.readSavable("influencer", particleInfluencer);
        this.particleInfluencer = particleInfluencer2;
        if (particleInfluencer2 == particleInfluencer) {
            this.particleInfluencer = particleInfluencer2.m1265clone();
        }
        if (jmeImporter.getFormatVersion() != 0) {
            ParticleEmitterControl particleEmitterControl = (ParticleEmitterControl) getControl(ParticleEmitterControl.class);
            this.control = particleEmitterControl;
            particleEmitterControl.parentEmitter = this;
            return;
        }
        while (true) {
            if (i10 >= this.controls.size()) {
                break;
            }
            if (this.controls.get(i10) instanceof ParticleEmitter) {
                this.controls.remove(i10);
                this.controls.add(new ParticleEmitterControl(this));
                break;
            }
            i10++;
        }
        if (this.gravity == null) {
            Vector3f vector3f = new Vector3f();
            this.gravity = vector3f;
            vector3f.f81612y = capsule.readFloat("gravity", 0.0f);
        }
    }

    public void setEnabled(boolean z10) {
        this.enabled = z10;
    }

    public void setEndColor(ColorRGBA colorRGBA) {
        this.endColor.set(colorRGBA);
    }

    public void setEndSize(float f10) {
        this.endSize = f10;
    }

    public void setFaceNormal(Vector3f vector3f) {
        if (vector3f == null || !Vector3f.isValidVector(vector3f)) {
            this.faceNormal.set(Vector3f.NAN);
        } else {
            this.faceNormal = vector3f;
        }
    }

    public void setFacingVelocity(boolean z10) {
        this.facingVelocity = z10;
    }

    public void setGravity(Vector3f vector3f) {
        this.gravity.set(vector3f);
    }

    public void setHighLife(float f10) {
        this.highLife = f10;
    }

    public void setImagesX(int i10) {
        this.imagesX = i10;
        this.particleMesh.setImagesXY(i10, this.imagesY);
    }

    public void setImagesY(int i10) {
        this.imagesY = i10;
        this.particleMesh.setImagesXY(this.imagesX, i10);
    }

    public void setInWorldSpace(boolean z10) {
        setIgnoreTransform(z10);
        this.worldSpace = z10;
    }

    @Deprecated
    public void setInitialVelocity(Vector3f vector3f) {
        this.particleInfluencer.setInitialVelocity(vector3f);
    }

    public void setLowLife(float f10) {
        this.lowLife = f10;
    }

    public void setMeshType(ParticleMesh.Type type) {
        this.meshType = type;
        initParticleMesh();
        setNumParticles(this.particles.length);
    }

    public final void setNumParticles(int i10) {
        this.particles = new Particle[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.particles[i11] = new Particle();
        }
        this.particleMesh.initParticleData(this, this.particles.length);
        this.particleMesh.setImagesXY(this.imagesX, this.imagesY);
        this.firstUnUsed = 0;
        this.lastUsed = -1;
    }

    public void setParticleInfluencer(ParticleInfluencer particleInfluencer) {
        this.particleInfluencer = particleInfluencer;
    }

    public void setParticlesPerSec(float f10) {
        this.particlesPerSec = f10;
        this.timeDifference = Math.min(this.timeDifference, 1.0f / f10);
    }

    public void setRandomAngle(boolean z10) {
        this.randomAngle = z10;
    }

    public void setRotateSpeed(float f10) {
        this.rotateSpeed = f10;
    }

    public void setSelectRandomImage(boolean z10) {
        this.selectRandomImage = z10;
    }

    public void setShape(EmitterShape emitterShape) {
        this.shape = emitterShape;
    }

    public void setStartColor(ColorRGBA colorRGBA) {
        this.startColor.set(colorRGBA);
    }

    public void setStartSize(float f10) {
        this.startSize = f10;
    }

    @Deprecated
    public void setVelocityVariation(float f10) {
        this.particleInfluencer.setVelocityVariation(f10);
    }

    public void updateFromControl(float f10) {
        if (this.enabled) {
            updateParticleState(f10);
        }
    }

    public void updateParticle(Particle particle, float f10, Vector3f vector3f, Vector3f vector3f2) {
        Vector3f vector3f3 = particle.velocity;
        float f11 = vector3f3.f81611x;
        Vector3f vector3f4 = this.gravity;
        vector3f3.f81611x = f11 - (vector3f4.f81611x * f10);
        vector3f3.f81612y -= vector3f4.f81612y * f10;
        vector3f3.f81613z -= vector3f4.f81613z * f10;
        this.temp.set(vector3f3).multLocal(f10);
        particle.position.addLocal(this.temp);
        float f12 = particle.startlife;
        float f13 = (f12 - particle.life) / f12;
        particle.color.interpolateLocal(this.startColor, this.endColor, f13);
        particle.size = FastMath.interpolateLinear(f13, this.startSize, this.endSize);
        particle.angle += particle.rotateSpeed * f10;
        computeBoundingVolume(particle, vector3f, vector3f2);
        if (this.selectRandomImage) {
            return;
        }
        particle.imageIndex = (int) (f13 * this.imagesX * this.imagesY);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.shape, "shape", DEFAULT_SHAPE);
        capsule.write(this.meshType, "meshType", ParticleMesh.Type.Triangle);
        capsule.write(this.enabled, "enabled", true);
        capsule.write(this.particles.length, "numParticles", 0);
        capsule.write(this.particlesPerSec, "particlesPerSec", 0.0f);
        capsule.write(this.lowLife, "lowLife", 0.0f);
        capsule.write(this.highLife, "highLife", 0.0f);
        capsule.write(this.gravity, "gravity", (Savable) null);
        capsule.write(this.imagesX, "imagesX", 1);
        capsule.write(this.imagesY, "imagesY", 1);
        capsule.write(this.startColor, "startColor", (Savable) null);
        capsule.write(this.endColor, "endColor", (Savable) null);
        capsule.write(this.startSize, "startSize", 0.0f);
        capsule.write(this.endSize, "endSize", 0.0f);
        capsule.write(this.worldSpace, "worldSpace", false);
        capsule.write(this.facingVelocity, "facingVelocity", false);
        capsule.write(this.faceNormal, "faceNormal", new Vector3f(Vector3f.NAN));
        capsule.write(this.selectRandomImage, "selectRandomImage", false);
        capsule.write(this.randomAngle, "randomAngle", false);
        capsule.write(this.rotateSpeed, "rotateSpeed", 0.0f);
        capsule.write(this.particleInfluencer, "influencer", DEFAULT_INFLUENCER);
    }

    @Override
    public ParticleEmitter oldClone(boolean z10) {
        ParticleEmitter particleEmitter = (ParticleEmitter) super.clone(z10);
        particleEmitter.shape = this.shape.deepClone();
        particleEmitter.setNumParticles(this.particles.length);
        particleEmitter.faceNormal = this.faceNormal.m1292clone();
        particleEmitter.startColor = this.startColor.m1279clone();
        particleEmitter.endColor = this.endColor.m1279clone();
        particleEmitter.particleInfluencer = this.particleInfluencer.m1265clone();
        particleEmitter.controls.remove(this.control);
        ParticleEmitterControl particleEmitterControl = new ParticleEmitterControl(particleEmitter);
        particleEmitter.control = particleEmitterControl;
        particleEmitter.controls.add(particleEmitterControl);
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$effect$ParticleMesh$Type[this.meshType.ordinal()];
        if (i10 == 1) {
            ParticlePointMesh particlePointMesh = new ParticlePointMesh();
            particleEmitter.particleMesh = particlePointMesh;
            particleEmitter.setMesh(particlePointMesh);
        } else if (i10 == 2) {
            ParticleTriMesh particleTriMesh = new ParticleTriMesh();
            particleEmitter.particleMesh = particleTriMesh;
            particleEmitter.setMesh(particleTriMesh);
        } else {
            throw new IllegalStateException("Unrecognized particle type: " + ((Object) this.meshType));
        }
        particleEmitter.particleMesh.initParticleData(particleEmitter, particleEmitter.particles.length);
        particleEmitter.particleMesh.setImagesXY(particleEmitter.imagesX, particleEmitter.imagesY);
        return particleEmitter;
    }

    public void setGravity(float f10, float f11, float f12) {
        Vector3f vector3f = this.gravity;
        vector3f.f81611x = f10;
        vector3f.f81612y = f11;
        vector3f.f81613z = f12;
    }

    @Override
    public ParticleEmitter mo1263clone() {
        return clone(true);
    }

    @Override
    public ParticleEmitter clone(boolean z10) {
        return (ParticleEmitter) super.clone(z10);
    }

    public ParticleEmitter() {
        this.enabled = true;
        this.shape = DEFAULT_SHAPE;
        this.particleInfluencer = DEFAULT_INFLUENCER;
        this.particlesPerSec = 20.0f;
        this.timeDifference = 0.0f;
        this.lowLife = 3.0f;
        this.highLife = 7.0f;
        this.gravity = new Vector3f(0.0f, 0.1f, 0.0f);
        this.faceNormal = new Vector3f(Vector3f.NAN);
        this.imagesX = 1;
        this.imagesY = 1;
        this.startColor = new ColorRGBA(0.4f, 0.4f, 0.4f, 0.5f);
        this.endColor = new ColorRGBA(0.1f, 0.1f, 0.1f, 0.0f);
        this.startSize = 0.2f;
        this.endSize = 2.0f;
        this.worldSpace = true;
        this.temp = new Vector3f();
        setBatchHint(Spatial.BatchHint.Never);
    }
}
