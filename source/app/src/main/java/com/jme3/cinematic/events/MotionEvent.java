package com.jme3.cinematic.events;

import androidx.constraintlayout.motion.widget.Key;
import com.jme3.animation.AnimationUtils;
import com.jme3.animation.LoopMode;
import com.jme3.app.Application;
import com.jme3.cinematic.Cinematic;
import com.jme3.cinematic.MotionPath;
import com.jme3.cinematic.PlayState;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Spatial;
import com.jme3.scene.control.Control;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;

public class MotionEvent extends AbstractCinematicEvent implements Control, JmeCloneable {
    protected float currentValue;
    protected int currentWayPoint;
    protected Vector3f direction;
    protected Direction directionType;
    private boolean isControl;
    protected Vector3f lookAt;
    protected MotionPath path;
    protected Quaternion rotation;
    protected Spatial spatial;
    private final Quaternion tempRotation;
    protected float traveledDistance;
    protected Vector3f upVector;

    public enum Direction {
        None,
        Path,
        PathAndRotation,
        Rotation,
        LookAt
    }

    public MotionEvent() {
        this.direction = new Vector3f();
        this.lookAt = null;
        this.upVector = Vector3f.UNIT_Y;
        this.rotation = null;
        this.directionType = Direction.None;
        this.isControl = true;
        this.tempRotation = new Quaternion();
        this.traveledDistance = 0.0f;
    }

    private void computeTargetDirection() {
        Vector3f vector3f;
        int ordinal = this.directionType.ordinal();
        if (ordinal == 1) {
            this.tempRotation.lookAt(this.direction, this.upVector);
            this.spatial.setLocalRotation(this.tempRotation);
            return;
        }
        if (ordinal == 2) {
            if (this.rotation != null) {
                this.tempRotation.lookAt(this.direction, this.upVector);
                this.tempRotation.multLocal(this.rotation);
                this.spatial.setLocalRotation(this.tempRotation);
                return;
            }
            return;
        }
        if (ordinal != 3) {
            if (ordinal == 4 && (vector3f = this.lookAt) != null) {
                this.spatial.lookAt(vector3f, this.upVector);
                return;
            }
            return;
        }
        Quaternion quaternion = this.rotation;
        if (quaternion != null) {
            this.spatial.setLocalRotation(quaternion);
        }
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.lookAt = (Vector3f) cloner.clone(this.lookAt);
        this.path = (MotionPath) cloner.clone(this.path);
        this.rotation = (Quaternion) cloner.clone(this.rotation);
        this.spatial = (Spatial) cloner.clone(this.spatial);
    }

    @Override
    @Deprecated
    public Control cloneForSpatial(Spatial spatial) {
        throw new UnsupportedOperationException();
    }

    public float getCurrentValue() {
        return this.currentValue;
    }

    public int getCurrentWayPoint() {
        return this.currentWayPoint;
    }

    public Vector3f getDirection() {
        return this.direction;
    }

    public Direction getDirectionType() {
        return this.directionType;
    }

    public MotionPath getPath() {
        return this.path;
    }

    public Quaternion getRotation() {
        return this.rotation;
    }

    public Spatial getSpatial() {
        return this.spatial;
    }

    public float getTraveledDistance() {
        return this.traveledDistance;
    }

    @Override
    public void initEvent(Application application, Cinematic cinematic) {
        super.initEvent(application, cinematic);
        this.isControl = false;
    }

    @Override
    public void internalUpdate(float f10) {
        if (this.playState == PlayState.Playing) {
            float f11 = this.time + (this.speed * f10);
            this.time = f11;
            LoopMode loopMode = this.loopMode;
            if (loopMode == LoopMode.Loop && f11 < 0.0f) {
                this.time = this.initialDuration;
            }
            float f12 = this.time;
            float f13 = this.initialDuration;
            if ((f12 >= f13 || f12 < 0.0f) && loopMode == LoopMode.DontLoop) {
                if (f12 >= f13) {
                    this.path.triggerWayPointReach(r6.getNbWayPoints() - 1, this);
                }
                stop();
                return;
            }
            float clampWrapTime = AnimationUtils.clampWrapTime(f12, f13, loopMode);
            this.time = clampWrapTime;
            if (clampWrapTime < 0.0f) {
                this.speed = -this.speed;
                this.time = -clampWrapTime;
            }
            onUpdate(f10);
        }
    }

    public boolean isEnabled() {
        return this.playState != PlayState.Stopped;
    }

    @Override
    public Object jmeClone() {
        MotionEvent motionEvent = new MotionEvent();
        motionEvent.path = this.path;
        motionEvent.playState = this.playState;
        motionEvent.currentWayPoint = this.currentWayPoint;
        motionEvent.currentValue = this.currentValue;
        motionEvent.direction = this.direction.m1292clone();
        motionEvent.lookAt = this.lookAt;
        motionEvent.upVector = this.upVector.m1292clone();
        motionEvent.rotation = this.rotation;
        motionEvent.initialDuration = this.initialDuration;
        motionEvent.speed = this.speed;
        motionEvent.loopMode = this.loopMode;
        motionEvent.directionType = this.directionType;
        motionEvent.spatial = this.spatial;
        return motionEvent;
    }

    public boolean needsDirection() {
        Direction direction = this.directionType;
        return direction == Direction.Path || direction == Direction.PathAndRotation;
    }

    @Override
    public void onPause() {
    }

    @Override
    public void onPlay() {
        this.traveledDistance = 0.0f;
    }

    @Override
    public void onStop() {
        this.currentWayPoint = 0;
    }

    @Override
    public void onUpdate(float f10) {
        this.traveledDistance = this.path.interpolatePath(this.time, this, f10);
        computeTargetDirection();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.lookAt = (Vector3f) capsule.readSavable("lookAt", null);
        this.upVector = (Vector3f) capsule.readSavable("upVector", Vector3f.UNIT_Y);
        this.rotation = (Quaternion) capsule.readSavable(Key.ROTATION, null);
        this.directionType = (Direction) capsule.readEnum("directionType", Direction.class, Direction.None);
        this.path = (MotionPath) capsule.readSavable("path", null);
        this.spatial = (Spatial) capsule.readSavable("spatial", null);
    }

    @Override
    public void render(RenderManager renderManager, ViewPort viewPort) {
    }

    public void setCurrentValue(float f10) {
        this.currentValue = f10;
    }

    public void setCurrentWayPoint(int i10) {
        this.currentWayPoint = i10;
    }

    public void setDirection(Vector3f vector3f) {
        setDirection(vector3f, Vector3f.UNIT_Y);
    }

    public void setDirectionType(Direction direction) {
        this.directionType = direction;
    }

    public void setEnabled(boolean z10) {
        if (z10) {
            play();
        } else {
            pause();
        }
    }

    public void setLookAt(Vector3f vector3f, Vector3f vector3f2) {
        this.lookAt = vector3f;
        this.upVector = vector3f2;
    }

    public void setPath(MotionPath motionPath) {
        this.path = motionPath;
    }

    public void setRotation(Quaternion quaternion) {
        this.rotation = quaternion;
    }

    @Override
    public void setSpatial(Spatial spatial) {
        this.spatial = spatial;
    }

    @Override
    public void setTime(float f10) {
        super.setTime(f10);
        onUpdate(0.0f);
    }

    @Override
    public void update(float f10) {
        if (this.isControl) {
            internalUpdate(f10);
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.lookAt, "lookAt", (Savable) null);
        capsule.write(this.upVector, "upVector", Vector3f.UNIT_Y);
        capsule.write(this.rotation, Key.ROTATION, (Savable) null);
        capsule.write(this.directionType, "directionType", Direction.None);
        capsule.write(this.path, "path", (Savable) null);
        capsule.write(this.spatial, "spatial", (Savable) null);
    }

    public void setDirection(Vector3f vector3f, Vector3f vector3f2) {
        this.direction.set(vector3f);
        this.upVector.set(vector3f2);
    }

    public MotionEvent(Spatial spatial, MotionPath motionPath) {
        this.direction = new Vector3f();
        this.lookAt = null;
        this.upVector = Vector3f.UNIT_Y;
        this.rotation = null;
        this.directionType = Direction.None;
        this.isControl = true;
        this.tempRotation = new Quaternion();
        this.traveledDistance = 0.0f;
        spatial.addControl(this);
        this.path = motionPath;
    }

    public MotionEvent(Spatial spatial, MotionPath motionPath, float f10) {
        super(f10);
        this.direction = new Vector3f();
        this.lookAt = null;
        this.upVector = Vector3f.UNIT_Y;
        this.rotation = null;
        this.directionType = Direction.None;
        this.isControl = true;
        this.tempRotation = new Quaternion();
        this.traveledDistance = 0.0f;
        spatial.addControl(this);
        this.path = motionPath;
    }

    public MotionEvent(Spatial spatial, MotionPath motionPath, LoopMode loopMode) {
        this.direction = new Vector3f();
        this.lookAt = null;
        this.upVector = Vector3f.UNIT_Y;
        this.rotation = null;
        this.directionType = Direction.None;
        this.isControl = true;
        this.tempRotation = new Quaternion();
        this.traveledDistance = 0.0f;
        spatial.addControl(this);
        this.path = motionPath;
        this.loopMode = loopMode;
    }

    public MotionEvent(Spatial spatial, MotionPath motionPath, float f10, LoopMode loopMode) {
        super(f10);
        this.direction = new Vector3f();
        this.lookAt = null;
        this.upVector = Vector3f.UNIT_Y;
        this.rotation = null;
        this.directionType = Direction.None;
        this.isControl = true;
        this.tempRotation = new Quaternion();
        this.traveledDistance = 0.0f;
        spatial.addControl(this);
        this.path = motionPath;
        this.loopMode = loopMode;
    }
}
