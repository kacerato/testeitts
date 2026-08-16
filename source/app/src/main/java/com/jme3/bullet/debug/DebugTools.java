package com.jme3.bullet.debug;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector3f;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.ViewPort;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.debug.Arrow;
import java.util.logging.Logger;

public class DebugTools {
    public Material DEBUG_BLUE;
    public Material DEBUG_GREEN;
    public Material DEBUG_MAGENTA;
    public Material DEBUG_PINK;
    public Material DEBUG_RED;
    public Material DEBUG_YELLOW;
    public Arrow arrowBlue;
    public Geometry arrowBlueGeom;
    public Arrow arrowGreen;
    public Geometry arrowGreenGeom;
    public Arrow arrowMagenta;
    public Geometry arrowMagentaGeom;
    public Arrow arrowPink;
    public Geometry arrowPinkGeom;
    public Arrow arrowRed;
    public Geometry arrowRedGeom;
    public Arrow arrowYellow;
    public Geometry arrowYellowGeom;
    public Node debugNode;
    protected final AssetManager manager;
    public static final Logger logger = Logger.getLogger(DebugTools.class.getName());
    protected static final Vector3f UNIT_XYZ_CHECK = new Vector3f(1.0f, 1.0f, 1.0f);
    protected static final Vector3f UNIT_X_CHECK = new Vector3f(1.0f, 0.0f, 0.0f);
    protected static final Vector3f UNIT_Y_CHECK = new Vector3f(0.0f, 1.0f, 0.0f);
    protected static final Vector3f UNIT_Z_CHECK = new Vector3f(0.0f, 0.0f, 1.0f);
    protected static final Vector3f ZERO_CHECK = new Vector3f(0.0f, 0.0f, 0.0f);

    public DebugTools(AssetManager assetManager) {
        Vector3f vector3f = Vector3f.ZERO;
        this.arrowBlue = new Arrow(vector3f);
        this.arrowGreen = new Arrow(vector3f);
        this.arrowMagenta = new Arrow(vector3f);
        this.arrowPink = new Arrow(vector3f);
        this.arrowRed = new Arrow(vector3f);
        this.arrowYellow = new Arrow(vector3f);
        this.arrowBlueGeom = new Geometry("Blue Arrow", this.arrowBlue);
        this.arrowGreenGeom = new Geometry("Green Arrow", this.arrowGreen);
        this.arrowMagentaGeom = new Geometry("Magenta Arrow", this.arrowMagenta);
        this.arrowPinkGeom = new Geometry("Pink Arrow", this.arrowPink);
        this.arrowRedGeom = new Geometry("Red Arrow", this.arrowRed);
        this.arrowYellowGeom = new Geometry("Yellow Arrow", this.arrowYellow);
        this.debugNode = new Node("Debug Node");
        this.manager = assetManager;
        setupMaterials();
        setupDebugNode();
    }

    public void setBlueArrow(Vector3f vector3f, Vector3f vector3f2) {
        this.arrowBlueGeom.setLocalTranslation(vector3f);
        this.arrowBlue.setArrowExtent(vector3f2);
    }

    public void setGreenArrow(Vector3f vector3f, Vector3f vector3f2) {
        this.arrowGreenGeom.setLocalTranslation(vector3f);
        this.arrowGreen.setArrowExtent(vector3f2);
    }

    public void setMagentaArrow(Vector3f vector3f, Vector3f vector3f2) {
        this.arrowMagentaGeom.setLocalTranslation(vector3f);
        this.arrowMagenta.setArrowExtent(vector3f2);
    }

    public void setPinkArrow(Vector3f vector3f, Vector3f vector3f2) {
        this.arrowPinkGeom.setLocalTranslation(vector3f);
        this.arrowPink.setArrowExtent(vector3f2);
    }

    public void setRedArrow(Vector3f vector3f, Vector3f vector3f2) {
        this.arrowRedGeom.setLocalTranslation(vector3f);
        this.arrowRed.setArrowExtent(vector3f2);
    }

    public void setYellowArrow(Vector3f vector3f, Vector3f vector3f2) {
        this.arrowYellowGeom.setLocalTranslation(vector3f);
        this.arrowYellow.setArrowExtent(vector3f2);
    }

    public void setupDebugNode() {
        this.arrowBlueGeom.setMaterial(this.DEBUG_BLUE);
        this.arrowGreenGeom.setMaterial(this.DEBUG_GREEN);
        this.arrowRedGeom.setMaterial(this.DEBUG_RED);
        this.arrowMagentaGeom.setMaterial(this.DEBUG_MAGENTA);
        this.arrowYellowGeom.setMaterial(this.DEBUG_YELLOW);
        this.arrowPinkGeom.setMaterial(this.DEBUG_PINK);
        this.debugNode.attachChild(this.arrowBlueGeom);
        this.debugNode.attachChild(this.arrowGreenGeom);
        this.debugNode.attachChild(this.arrowRedGeom);
        this.debugNode.attachChild(this.arrowMagentaGeom);
        this.debugNode.attachChild(this.arrowYellowGeom);
        this.debugNode.attachChild(this.arrowPinkGeom);
    }

    public void setupMaterials() {
        Material material = new Material(this.manager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.DEBUG_BLUE = material;
        material.getAdditionalRenderState().setWireframe(true);
        this.DEBUG_BLUE.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Blue);
        Material material2 = new Material(this.manager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.DEBUG_GREEN = material2;
        material2.getAdditionalRenderState().setWireframe(true);
        this.DEBUG_GREEN.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Green);
        Material material3 = new Material(this.manager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.DEBUG_RED = material3;
        material3.getAdditionalRenderState().setWireframe(true);
        this.DEBUG_RED.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Red);
        Material material4 = new Material(this.manager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.DEBUG_YELLOW = material4;
        material4.getAdditionalRenderState().setWireframe(true);
        this.DEBUG_YELLOW.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Yellow);
        Material material5 = new Material(this.manager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.DEBUG_MAGENTA = material5;
        material5.getAdditionalRenderState().setWireframe(true);
        this.DEBUG_MAGENTA.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Magenta);
        Material material6 = new Material(this.manager, "Common/MatDefs/Misc/Unshaded.j3md");
        this.DEBUG_PINK = material6;
        material6.getAdditionalRenderState().setWireframe(true);
        this.DEBUG_PINK.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Pink);
    }

    public void show(RenderManager renderManager, ViewPort viewPort) {
        Vector3f vector3f = Vector3f.UNIT_X;
        if (vector3f.equals(UNIT_X_CHECK) && Vector3f.UNIT_Y.equals(UNIT_Y_CHECK) && Vector3f.UNIT_Z.equals(UNIT_Z_CHECK) && Vector3f.UNIT_XYZ.equals(UNIT_XYZ_CHECK) && Vector3f.ZERO.equals(ZERO_CHECK)) {
            this.debugNode.updateLogicalState(0.0f);
            this.debugNode.updateGeometricState();
            renderManager.renderScene(this.debugNode, viewPort);
            return;
        }
        throw new IllegalStateException("Unit vectors compromised!\nX: " + ((Object) vector3f) + "\nY: " + ((Object) Vector3f.UNIT_Y) + "\nZ: " + ((Object) Vector3f.UNIT_Z) + "\nXYZ: " + ((Object) Vector3f.UNIT_XYZ) + "\nZERO: " + ((Object) Vector3f.ZERO));
    }
}
