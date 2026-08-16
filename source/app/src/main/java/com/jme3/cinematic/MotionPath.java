package com.jme3.cinematic;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.cinematic.events.MotionEvent;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Spline;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.shape.Box;
import com.jme3.scene.shape.Curve;
import com.jme3.util.TempVars;
import com.jme3.util.clone.Cloner;
import com.jme3.util.clone.JmeCloneable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MotionPath implements JmeCloneable, Savable {
    private AssetManager assetManager;
    private Node debugNode;
    private List<MotionPathListener> listeners;
    private Spline spline = new Spline();
    int prevWayPoint = 0;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$math$Spline$SplineType;

        static {
            int[] iArr = new int[Spline.SplineType.values().length];
            $SwitchMap$com$jme3$math$Spline$SplineType = iArr;
            try {
                iArr[Spline.SplineType.CatmullRom.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$math$Spline$SplineType[Spline.SplineType.Linear.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void attachDebugNode(Node node) {
        if (this.debugNode == null) {
            this.debugNode = new Node();
            Material loadMaterial = this.assetManager.loadMaterial("Common/Materials/RedColor.j3m");
            for (Vector3f vector3f : this.spline.getControlPoints()) {
                Geometry geometry = new Geometry("box", new Box(0.3f, 0.3f, 0.3f));
                geometry.setLocalTranslation(vector3f);
                geometry.setMaterial(loadMaterial);
                this.debugNode.attachChild(geometry);
            }
            int i10 = AnonymousClass1.$SwitchMap$com$jme3$math$Spline$SplineType[this.spline.getType().ordinal()];
            if (i10 == 1) {
                this.debugNode.attachChild(createCatmullRomPath());
            } else if (i10 != 2) {
                this.debugNode.attachChild(createLinearPath());
            } else {
                this.debugNode.attachChild(createLinearPath());
            }
            node.attachChild(this.debugNode);
        }
    }

    private Geometry createCatmullRomPath() {
        Material material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.getAdditionalRenderState().setWireframe(true);
        material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Blue);
        Geometry geometry = new Geometry("line", new Curve(this.spline, 10));
        geometry.setMaterial(material);
        return geometry;
    }

    private Geometry createLinearPath() {
        Material material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.getAdditionalRenderState().setWireframe(true);
        material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Blue);
        Geometry geometry = new Geometry("line", new Curve(this.spline, 0));
        geometry.setMaterial(material);
        return geometry;
    }

    public void addListener(MotionPathListener motionPathListener) {
        if (this.listeners == null) {
            this.listeners = new ArrayList();
        }
        this.listeners.add(motionPathListener);
    }

    public void addWayPoint(Vector3f vector3f) {
        this.spline.addControlPoint(vector3f);
    }

    public void checkWayPoint(MotionEvent motionEvent, float f10) {
        float f11 = f10 * 4.0f;
        if (motionEvent.getCurrentWayPoint() == this.prevWayPoint || motionEvent.getCurrentValue() < 0.0f || motionEvent.getCurrentValue() >= f11) {
            return;
        }
        triggerWayPointReach(motionEvent.getCurrentWayPoint(), motionEvent);
        this.prevWayPoint = motionEvent.getCurrentWayPoint();
    }

    public void clearWayPoints() {
        this.spline.clearControlPoints();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        this.debugNode = (Node) cloner.clone(this.debugNode);
        this.spline = (Spline) cloner.clone(this.spline);
    }

    public void disableDebugShape() {
        this.debugNode.detachAllChildren();
        this.debugNode = null;
        this.assetManager = null;
    }

    public void enableDebugShape(AssetManager assetManager, Node node) {
        this.assetManager = assetManager;
        attachDebugNode(node);
    }

    public float getCurveTension() {
        return this.spline.getCurveTension();
    }

    public float getLength() {
        return this.spline.getTotalLength();
    }

    public int getNbWayPoints() {
        return this.spline.getControlPoints().size();
    }

    public Spline.SplineType getPathSplineType() {
        return this.spline.getType();
    }

    public Spline getSpline() {
        return this.spline;
    }

    public Vector3f getWayPoint(int i10) {
        return this.spline.getControlPoints().get(i10);
    }

    public Vector2f getWayPointIndexForDistance(float f10, Vector2f vector2f) {
        float f11 = 0.0f;
        if (this.spline.getTotalLength() == 0.0f) {
            vector2f.set(0.0f, 0.0f);
            return vector2f;
        }
        float totalLength = f10 % this.spline.getTotalLength();
        int i10 = 0;
        for (Float f12 : this.spline.getSegmentsLength()) {
            if (f12.floatValue() + f11 >= totalLength) {
                return new Vector2f(i10, (totalLength - f11) / f12.floatValue());
            }
            f11 += f12.floatValue();
            i10++;
        }
        vector2f.set(this.spline.getControlPoints().size() - 1.0f, 1.0f);
        return vector2f;
    }

    public float interpolatePath(float f10, MotionEvent motionEvent, float f11) {
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Vector2f vector2f = tempVars.vect2d;
        float length = f10 * (getLength() / motionEvent.getInitialDuration());
        Vector2f wayPointIndexForDistance = getWayPointIndexForDistance(length, vector2f);
        motionEvent.setCurrentWayPoint((int) wayPointIndexForDistance.f81609x);
        motionEvent.setCurrentValue(wayPointIndexForDistance.f81610y);
        getSpline().interpolate(motionEvent.getCurrentValue(), motionEvent.getCurrentWayPoint(), vector3f);
        if (motionEvent.needsDirection()) {
            vector3f2.set(vector3f);
            motionEvent.setDirection(vector3f2.subtractLocal(motionEvent.getSpatial().getLocalTranslation()).normalizeLocal());
        }
        checkWayPoint(motionEvent, f11);
        motionEvent.getSpatial().setLocalTranslation(vector3f);
        tempVars.release();
        return length;
    }

    public boolean isCycle() {
        return this.spline.isCycle();
    }

    public Iterator<Vector3f> iterator() {
        return this.spline.getControlPoints().iterator();
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        this.spline = (Spline) jmeImporter.getCapsule(this).readSavable("spline", null);
    }

    public void removeListener(MotionPathListener motionPathListener) {
        List<MotionPathListener> list = this.listeners;
        if (list != null) {
            list.remove(motionPathListener);
        }
    }

    public void removeWayPoint(Vector3f vector3f) {
        this.spline.removeControlPoint(vector3f);
    }

    public void setCurveTension(float f10) {
        this.spline.setCurveTension(f10);
        Node node = this.debugNode;
        if (node != null) {
            Node parent = node.getParent();
            this.debugNode.removeFromParent();
            this.debugNode.detachAllChildren();
            this.debugNode = null;
            attachDebugNode(parent);
        }
    }

    public void setCycle(boolean z10) {
        this.spline.setCycle(z10);
        Node node = this.debugNode;
        if (node != null) {
            Node parent = node.getParent();
            this.debugNode.removeFromParent();
            this.debugNode.detachAllChildren();
            this.debugNode = null;
            attachDebugNode(parent);
        }
    }

    public void setPathSplineType(Spline.SplineType splineType) {
        this.spline.setType(splineType);
        Node node = this.debugNode;
        if (node != null) {
            Node parent = node.getParent();
            this.debugNode.removeFromParent();
            this.debugNode.detachAllChildren();
            this.debugNode = null;
            attachDebugNode(parent);
        }
    }

    public void triggerWayPointReach(int i10, MotionEvent motionEvent) {
        List<MotionPathListener> list = this.listeners;
        if (list != null) {
            Iterator<MotionPathListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onWayPointReach(motionEvent, i10);
            }
        }
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        jmeExporter.getCapsule(this).write(this.spline, "spline", (Savable) null);
    }

    @Override
    public MotionPath jmeClone() {
        try {
            return (MotionPath) clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void removeWayPoint(int i10) {
        removeWayPoint(this.spline.getControlPoints().get(i10));
    }
}
