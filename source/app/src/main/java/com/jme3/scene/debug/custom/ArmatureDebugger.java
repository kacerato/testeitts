package com.jme3.scene.debug.custom;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.anim.Armature;
import com.jme3.anim.Joint;
import com.jme3.anim.SkinningControl;
import com.jme3.asset.AssetManager;
import com.jme3.collision.Collidable;
import com.jme3.collision.CollisionResults;
import com.jme3.material.Material;
import com.jme3.material.Materials;
import com.jme3.material.RenderState;
import com.jme3.renderer.Camera;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.Spatial;
import java.util.List;

public class ArmatureDebugger extends Node {
    private Armature armature;
    private ArmatureNode armatureNode;
    private ArmatureInterJointsWire interJointWires;
    private Node joints;
    private Node outlines;
    private Node wires;

    public ArmatureDebugger() {
    }

    private Material getDashedMaterial(AssetManager assetManager) {
        Material material = new Material(assetManager, "Common/MatDefs/Misc/DashedLine.j3md");
        material.getAdditionalRenderState().setDepthTest(false);
        return material;
    }

    private Material getJointMaterial(AssetManager assetManager) {
        Material material = new Material(assetManager, Materials.BILLBOARD);
        material.setTexture(SerializableShaderEntry.f81152f, assetManager.loadTexture("Common/Textures/dot.png"));
        material.getAdditionalRenderState().setDepthTest(false);
        material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
        return material;
    }

    private Material getUnshadedMaterial(AssetManager assetManager) {
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.setBoolean("VertexColor", true);
        material.getAdditionalRenderState().setDepthTest(false);
        return material;
    }

    @Override
    public int collideWith(Collidable collidable, CollisionResults collisionResults) {
        return this.armatureNode.collideWith(collidable, collisionResults);
    }

    public void displayNonDeformingJoint(boolean z10) {
        Spatial.CullHint cullHint = z10 ? Spatial.CullHint.Dynamic : Spatial.CullHint.Always;
        this.joints.getChild(0).setCullHint(cullHint);
        this.outlines.getChild(0).setCullHint(cullHint);
        this.wires.getChild(0).setCullHint(cullHint);
        ((Node) this.outlines.getChild(1)).getChild(0).setCullHint(cullHint);
        ((Node) this.wires.getChild(1)).getChild(0).setCullHint(cullHint);
    }

    public Armature getArmature() {
        return this.armature;
    }

    public ArmatureNode getBoneShapes() {
        return this.armatureNode;
    }

    public ArmatureInterJointsWire getInterJointWires() {
        return this.interJointWires;
    }

    public void initialize(AssetManager assetManager, Camera camera) {
        this.armatureNode.setCamera(camera);
        Material jointMaterial = getJointMaterial(assetManager);
        this.joints.setQueueBucket(RenderQueue.Bucket.Translucent);
        this.joints.setMaterial(jointMaterial);
        this.wires.setMaterial(getUnshadedMaterial(assetManager));
        this.wires.getChild(1).setMaterial(getDashedMaterial(assetManager));
        this.outlines.setMaterial(getUnshadedMaterial(assetManager));
        this.outlines.getChild(1).setMaterial(getDashedMaterial(assetManager));
    }

    public Joint select(Geometry geometry) {
        return this.armatureNode.select(geometry);
    }

    @Override
    public void updateLogicalState(float f10) {
        super.updateLogicalState(f10);
        this.armatureNode.updateGeometry();
    }

    public ArmatureDebugger(AssetManager assetManager, SkinningControl skinningControl) {
        this(null, skinningControl.getArmature(), skinningControl.getArmature().getJointList());
        initialize(assetManager, null);
    }

    public ArmatureDebugger(String str, Armature armature, List<Joint> list) {
        super(str);
        this.armature = armature;
        armature.update();
        this.joints = new Node("joints");
        this.outlines = new Node("outlines");
        this.wires = new Node("bones");
        attachChild(this.joints);
        attachChild(this.outlines);
        attachChild(this.wires);
        this.joints.attachChild(new Node("NonDeformingJoints"));
        this.outlines.attachChild(new Node("NonDeformingOutlines"));
        this.wires.attachChild(new Node("NonDeformingWires"));
        Node node = new Node("DashedOutlines");
        node.attachChild(new Node("DashedNonDeformingOutlines"));
        this.outlines.attachChild(node);
        Node node2 = new Node("DashedWires");
        node2.attachChild(new Node("DashedNonDeformingWires"));
        this.wires.attachChild(node2);
        ArmatureNode armatureNode = new ArmatureNode(armature, this.joints, this.wires, this.outlines, list);
        this.armatureNode = armatureNode;
        attachChild(armatureNode);
        displayNonDeformingJoint(false);
    }
}
