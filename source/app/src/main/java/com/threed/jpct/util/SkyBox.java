package com.threed.jpct.util;

import com.threed.jpct.FrameBuffer;
import com.threed.jpct.Logger;
import com.threed.jpct.Object3D;
import com.threed.jpct.Primitives;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.Texture;
import com.threed.jpct.TextureManager;
import com.threed.jpct.World;
import ga.m;
import java.io.Serializable;

public class SkyBox implements Serializable {
    private static final long serialVersionUID = 1;
    private Object3D box;
    private boolean disposed;
    private float size;
    private World world;

    public SkyBox(float f10) {
        this(m.f88234c, "front", "right", m.f88233b, m.f88236e, m.f88237f, f10);
    }

    public void compile() {
        this.box.compile();
    }

    public synchronized void dispose() {
        if (!this.disposed) {
            this.world.removeAllObjects();
            this.box = null;
            this.world = null;
            this.disposed = true;
        }
    }

    public void finalize() {
        dispose();
    }

    public World getWorld() {
        return this.world;
    }

    public void render(World world, FrameBuffer frameBuffer) {
        if (this.disposed) {
            return;
        }
        this.world.getCamera().getBack().setTo(world.getCamera().getBack());
        this.world.renderScene(frameBuffer);
        this.world.draw(frameBuffer);
    }

    public void setCenter(SimpleVector simpleVector) {
        SimpleVector create = SimpleVector.create(simpleVector.f83625x, simpleVector.f83626y, simpleVector.f83627z);
        create.scalarMul(-1.0f);
        this.world.getCamera().setPosition(create);
        this.world.setClippingPlanes(100.0f, this.size + Math.max(Math.max(Math.abs(simpleVector.f83625x), Math.abs(simpleVector.f83626y)), Math.abs(simpleVector.f83627z)));
    }

    public SkyBox(String str, String str2, String str3, String str4, String str5, String str6, float f10) {
        this.world = null;
        this.box = null;
        this.disposed = false;
        this.size = f10;
        this.world = new World();
        this.box = Object3D.createDummyObj();
        TextureManager textureManager = TextureManager.getInstance();
        Texture texture = textureManager.getTexture(str);
        Texture texture2 = textureManager.getTexture(str2);
        Texture texture3 = textureManager.getTexture(str4);
        Texture texture4 = textureManager.getTexture(str3);
        Texture texture5 = textureManager.getTexture(str5);
        Texture texture6 = textureManager.getTexture(str6);
        if (texture != null && texture4 != null && texture2 != null && texture3 != null && texture5 != null && texture6 != null) {
            texture.setClamping(true);
            texture2.setClamping(true);
            texture3.setClamping(true);
            texture4.setClamping(true);
            texture5.setClamping(true);
            texture6.setClamping(true);
            Object3D plane = Primitives.getPlane(1, f10);
            Object3D plane2 = Primitives.getPlane(1, f10);
            Object3D plane3 = Primitives.getPlane(1, f10);
            Object3D plane4 = Primitives.getPlane(1, f10);
            Object3D plane5 = Primitives.getPlane(1, f10);
            Object3D plane6 = Primitives.getPlane(1, f10);
            plane5.rotateX(1.5707964f);
            plane6.rotateX(-1.5707964f);
            plane6.rotateY(-1.5707964f);
            plane2.rotateY(-1.5707964f);
            plane3.rotateY(1.5707964f);
            plane4.rotateX(-3.1415927f);
            plane4.rotateZ(-3.1415927f);
            plane5.rotateY(-1.5707964f);
            plane5.rotateMesh();
            plane6.rotateMesh();
            plane2.rotateMesh();
            plane3.rotateMesh();
            plane4.rotateMesh();
            plane.clearRotation();
            plane6.clearRotation();
            plane5.clearRotation();
            plane2.clearRotation();
            plane3.clearRotation();
            plane4.clearRotation();
            float f11 = f10 / 2.0f;
            plane.translate(0.0f, 0.0f, f11);
            float f12 = -f11;
            plane4.translate(0.0f, 0.0f, f12);
            plane2.translate(f12, 0.0f, 0.0f);
            plane3.translate(f11, 0.0f, 0.0f);
            plane6.translate(0.0f, f12, 0.0f);
            plane5.translate(0.0f, f11, 0.0f);
            plane.translateMesh();
            plane6.translateMesh();
            plane5.translateMesh();
            plane2.translateMesh();
            plane3.translateMesh();
            plane4.translateMesh();
            plane.setTexture(str2);
            plane6.setTexture(str5);
            plane2.setTexture(str);
            plane3.setTexture(str3);
            plane4.setTexture(str4);
            plane5.setTexture(str6);
            Object3D mergeAll = Object3D.mergeAll(new Object3D[]{plane, plane6, plane2, plane3, plane4, plane5});
            this.box = mergeAll;
            mergeAll.build();
            this.world.setAmbientLight(255, 255, 255);
            this.box.setLighting(1);
            this.world.addObject(this.box);
            this.world.setClippingPlanes(1.0f, f10);
            return;
        }
        Logger.log("Skybox textures not found!", 1);
    }
}
