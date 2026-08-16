package com.ardor3d.scenegraph.extension;

import com.ardor3d.image.Texture;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import com.ardor3d.renderer.Renderer;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.FogState;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.renderer.state.ZBufferState;
import com.ardor3d.scenegraph.Node;
import com.ardor3d.scenegraph.hint.CullHint;
import com.ardor3d.scenegraph.hint.LightCombineMode;
import com.ardor3d.scenegraph.hint.TextureCombineMode;
import com.ardor3d.scenegraph.shape.Quad;
import com.ardor3d.util.export.CapsuleUtils;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import ga.m;
import java.io.IOException;

public class Skybox extends Node {
    private static final long serialVersionUID = 1;
    private Quad[] _skyboxQuads;
    private float _xExtent;
    private float _yExtent;
    private float _zExtent;

    public enum Face {
        North,
        South,
        East,
        West,
        Up,
        Down
    }

    public Skybox() {
    }

    public Quad getFace(Face face) {
        return this._skyboxQuads[face.ordinal()];
    }

    public Texture getTexture(Face face) {
        if (face != null) {
            return ((TextureState) this._skyboxQuads[face.ordinal()].getLocalRenderState(RenderState.StateType.Texture)).getTexture();
        }
        throw new IllegalArgumentException("Face can not be null.");
    }

    public void initialize() {
        Quad[] quadArr = new Quad[6];
        this._skyboxQuads = quadArr;
        Face face = Face.North;
        quadArr[face.ordinal()] = new Quad("north", this._xExtent * 2.0f, this._yExtent * 2.0f);
        this._skyboxQuads[face.ordinal()].setRotation(new Matrix3().fromAngles(0.0d, Math.toRadians(180.0d), 0.0d));
        this._skyboxQuads[face.ordinal()].setTranslation(new Vector3(0.0d, 0.0d, this._zExtent));
        Quad[] quadArr2 = this._skyboxQuads;
        Face face2 = Face.South;
        quadArr2[face2.ordinal()] = new Quad("south", this._xExtent * 2.0f, this._yExtent * 2.0f);
        this._skyboxQuads[face2.ordinal()].setTranslation(new Vector3(0.0d, 0.0d, -this._zExtent));
        Quad[] quadArr3 = this._skyboxQuads;
        Face face3 = Face.East;
        quadArr3[face3.ordinal()] = new Quad("east", this._zExtent * 2.0f, this._yExtent * 2.0f);
        this._skyboxQuads[face3.ordinal()].setRotation(new Matrix3().fromAngles(0.0d, Math.toRadians(90.0d), 0.0d));
        this._skyboxQuads[face3.ordinal()].setTranslation(new Vector3(-this._xExtent, 0.0d, 0.0d));
        Quad[] quadArr4 = this._skyboxQuads;
        Face face4 = Face.West;
        quadArr4[face4.ordinal()] = new Quad("west", this._zExtent * 2.0f, this._yExtent * 2.0f);
        this._skyboxQuads[face4.ordinal()].setRotation(new Matrix3().fromAngles(0.0d, Math.toRadians(270.0d), 0.0d));
        this._skyboxQuads[face4.ordinal()].setTranslation(new Vector3(this._xExtent, 0.0d, 0.0d));
        Quad[] quadArr5 = this._skyboxQuads;
        Face face5 = Face.Up;
        quadArr5[face5.ordinal()] = new Quad(m.f88236e, this._xExtent * 2.0f, this._zExtent * 2.0f);
        this._skyboxQuads[face5.ordinal()].setRotation(new Matrix3().fromAngles(Math.toRadians(90.0d), Math.toRadians(270.0d), 0.0d));
        this._skyboxQuads[face5.ordinal()].setTranslation(new Vector3(0.0d, this._yExtent, 0.0d));
        Quad[] quadArr6 = this._skyboxQuads;
        Face face6 = Face.Down;
        quadArr6[face6.ordinal()] = new Quad(m.f88237f, this._xExtent * 2.0f, this._zExtent * 2.0f);
        this._skyboxQuads[face6.ordinal()].setRotation(new Matrix3().fromAngles(Math.toRadians(270.0d), Math.toRadians(270.0d), 0.0d));
        this._skyboxQuads[face6.ordinal()].setTranslation(new Vector3(0.0d, -this._yExtent, 0.0d));
        getSceneHints().setLightCombineMode(LightCombineMode.Off);
        getSceneHints().setTextureCombineMode(TextureCombineMode.Replace);
        ZBufferState zBufferState = new ZBufferState();
        zBufferState.setEnabled(false);
        setRenderState(zBufferState);
        FogState fogState = new FogState();
        fogState.setEnabled(false);
        setRenderState(fogState);
        getSceneHints().setCullHint(CullHint.Never);
        for (int i10 = 0; i10 < 6; i10++) {
            this._skyboxQuads[i10].getSceneHints().setTextureCombineMode(TextureCombineMode.Replace);
            this._skyboxQuads[i10].getSceneHints().setLightCombineMode(LightCombineMode.Off);
            this._skyboxQuads[i10].getSceneHints().setCullHint(CullHint.Never);
            this._skyboxQuads[i10].getSceneHints().setRenderBucketType(RenderBucketType.PreBucket);
            attachChild(this._skyboxQuads[i10]);
        }
    }

    public void preloadTexture(Face face, Renderer renderer) {
        Quad quad = this._skyboxQuads[face.ordinal()];
        RenderState.StateType stateType = RenderState.StateType.Texture;
        TextureState textureState = (TextureState) quad.getLocalRenderState(stateType);
        if (textureState != null) {
            renderer.applyState(stateType, textureState);
        }
    }

    public void preloadTextures(Renderer renderer) {
        for (int i10 = 0; i10 < 6; i10++) {
            Quad quad = this._skyboxQuads[i10];
            RenderState.StateType stateType = RenderState.StateType.Texture;
            TextureState textureState = (TextureState) quad.getLocalRenderState(stateType);
            if (textureState != null) {
                renderer.applyState(stateType, textureState);
            }
        }
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._xExtent = inputCapsule.readFloat("xExtent", 0.0f);
        this._yExtent = inputCapsule.readFloat("yExtent", 0.0f);
        this._zExtent = inputCapsule.readFloat("zExtent", 0.0f);
        this._skyboxQuads = (Quad[]) CapsuleUtils.asArray(inputCapsule.readSavableArray("skyboxQuads", null), Quad.class);
    }

    public void setTexture(Face face, Texture texture) {
        if (face != null) {
            this._skyboxQuads[face.ordinal()].clearRenderState(RenderState.StateType.Texture);
            setTexture(face, texture, 0);
            return;
        }
        throw new IllegalArgumentException("Face can not be null.");
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._xExtent, "xExtent", 0.0f);
        outputCapsule.write(this._yExtent, "yExtent", 0.0f);
        outputCapsule.write(this._zExtent, "zExtent", 0.0f);
        outputCapsule.write(this._skyboxQuads, "skyboxQuads", (Savable[]) null);
    }

    public Skybox(String str, float f10, float f11, float f12) {
        super(str);
        this._xExtent = f10;
        this._yExtent = f11;
        this._zExtent = f12;
        initialize();
    }

    public void setTexture(Face face, Texture texture, int i10) {
        if (face != null) {
            TextureState textureState = (TextureState) this._skyboxQuads[face.ordinal()].getLocalRenderState(RenderState.StateType.Texture);
            if (textureState == null) {
                textureState = new TextureState();
            }
            textureState.setTexture(texture, i10);
            textureState.setEnabled(true);
            texture.setWrap(Texture.WrapMode.EdgeClamp);
            this._skyboxQuads[face.ordinal()].setRenderState(textureState);
            return;
        }
        throw new IllegalArgumentException("Face can not be null.");
    }
}
