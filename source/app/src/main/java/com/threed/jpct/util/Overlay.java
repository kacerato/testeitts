package com.threed.jpct.util;

import com.threed.jpct.Camera;
import com.threed.jpct.Config;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.GenericVertexController;
import com.threed.jpct.Interact2D;
import com.threed.jpct.Matrix;
import com.threed.jpct.Object3D;
import com.threed.jpct.PolygonManager;
import com.threed.jpct.Primitives;
import com.threed.jpct.RGBColor;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.Texture;
import com.threed.jpct.TextureInfo;
import com.threed.jpct.TextureManager;
import com.threed.jpct.World;
import java.io.Serializable;
import java.time.Year;

public class Overlay implements Serializable {
    private static int cnt = 0;
    private static final long serialVersionUID = 2;
    private MyController adjuster;
    private float depth;
    private boolean disposed;
    private int lowerRightU;
    private int lowerRightV;
    private int lowerRightX;
    private int lowerRightY;
    private int pivotX;
    private int pivotY;
    private Object3D plane;
    private boolean rotMode;
    private float rotation;
    private SimpleVector tmp1;
    private SimpleVector tmp2;
    private SimpleVector tmp3;
    private SimpleVector tmp4;
    private SimpleVector tmp5;
    private SimpleVector tmp6;
    private Matrix tmpMat;
    private int upperLeftU;
    private int upperLeftV;
    private int upperLeftX;
    private int upperLeftY;
    private boolean uvChange;
    private World world;

    public Overlay(World world, FrameBuffer frameBuffer, String str) {
        this(world, 0, 0, frameBuffer.getWidth(), frameBuffer.getHeight(), str);
    }

    public synchronized void dispose() {
        if (!this.disposed) {
            this.disposed = true;
            this.world.removeObject(this.plane);
            this.plane.setUserObject(null);
            this.world = null;
            this.plane = null;
            this.adjuster = null;
        }
    }

    public void finalize() {
        dispose();
    }

    public Object3D getObject3D() {
        return this.plane;
    }

    public void setColor(RGBColor rGBColor) {
        this.plane.setAdditionalColor(rGBColor);
    }

    public void setDepth(float f10) {
        float f11 = Config.nearPlane;
        if (f10 < f11) {
            f10 = 1.0f + f11;
        }
        this.depth = f10;
    }

    public void setNewCoordinates(int i10, int i11, int i12, int i13) {
        this.upperLeftX = i10;
        this.upperLeftY = i11;
        this.lowerRightX = i12;
        this.lowerRightY = i13;
    }

    public void setRotation(float f10) {
        this.rotation = f10;
        if (f10 != 0.0f) {
            this.rotMode = true;
        }
    }

    public void setRotationPivot(int i10, int i11) {
        this.pivotX = i10;
        this.pivotY = i11;
    }

    public void setSourceCoordinates(int i10, int i11, int i12, int i13) {
        this.upperLeftU = i10;
        this.upperLeftV = i11;
        this.lowerRightU = i12;
        this.lowerRightV = i13;
        this.uvChange = true;
    }

    public void setTexture(String str) {
        this.plane.setTexture(str);
    }

    public void setTransparency(int i10) {
        this.plane.setTransparency(i10);
    }

    public void setTransparencyMode(int i10) {
        this.plane.setTransparencyMode(i10);
    }

    public void setVisibility(boolean z10) {
        this.plane.setVisibility(z10);
    }

    public void unlink() {
        this.plane.setUserObject(null);
    }

    public void update(FrameBuffer frameBuffer) {
        boolean z10;
        if (!this.plane.getVisibility() || this.disposed) {
            return;
        }
        if (this.uvChange) {
            PolygonManager polygonManager = this.plane.getPolygonManager();
            int polygonTexture = polygonManager.getPolygonTexture(0);
            Texture textureByID = TextureManager.getInstance().getTextureByID(polygonTexture);
            float width = this.upperLeftU / textureByID.getWidth();
            float height = this.upperLeftV / textureByID.getHeight();
            float width2 = this.lowerRightU / textureByID.getWidth();
            float height2 = this.lowerRightV / textureByID.getHeight();
            polygonManager.setPolygonTexture(0, new TextureInfo(polygonTexture, width, height, width, height2, width2, height));
            z10 = true;
            polygonManager.setPolygonTexture(1, new TextureInfo(polygonTexture, width, height2, width2, height2, width2, height));
        } else {
            z10 = true;
        }
        Camera camera = this.world.getCamera();
        boolean z11 = this.pivotX != -999999999 ? z10 : false;
        SimpleVector reproject2D3D = Interact2D.reproject2D3D(camera, frameBuffer, this.upperLeftX, this.upperLeftY, this.depth, this.tmp1);
        SimpleVector reproject2D3D2 = Interact2D.reproject2D3D(camera, frameBuffer, this.upperLeftX, this.lowerRightY, this.depth, this.tmp2);
        SimpleVector reproject2D3D3 = Interact2D.reproject2D3D(camera, frameBuffer, this.lowerRightX, this.lowerRightY, this.depth, this.tmp3);
        SimpleVector reproject2D3D4 = Interact2D.reproject2D3D(camera, frameBuffer, this.lowerRightX, this.upperLeftY, this.depth, this.tmp4);
        SimpleVector reproject2D3D5 = z11 ? Interact2D.reproject2D3D(camera, frameBuffer, this.pivotX, this.pivotY, this.depth, this.tmp6) : null;
        Matrix back = this.world.getCamera().getBack();
        SimpleVector position = this.world.getCamera().getPosition(this.tmp5);
        position.matMul(back);
        reproject2D3D.add(position);
        reproject2D3D2.add(position);
        reproject2D3D3.add(position);
        reproject2D3D4.add(position);
        Matrix invert = back.invert(this.tmpMat);
        reproject2D3D.matMul(invert);
        reproject2D3D2.matMul(invert);
        reproject2D3D3.matMul(invert);
        reproject2D3D4.matMul(invert);
        if (z11) {
            reproject2D3D5.add(position);
            reproject2D3D5.matMul(invert);
        }
        this.adjuster.setNewBounds(reproject2D3D, reproject2D3D2, reproject2D3D4, reproject2D3D3);
        this.plane.getMesh().applyVertexController();
        if (this.rotMode) {
            this.plane.getRotationMatrix().setIdentity();
            SimpleVector simpleVector = this.tmp1;
            if (z11) {
                simpleVector.set(reproject2D3D5);
            } else {
                simpleVector.set(reproject2D3D);
                simpleVector.add(reproject2D3D2);
                simpleVector.add(reproject2D3D4);
                simpleVector.add(reproject2D3D3);
                simpleVector.scalarMul(0.25f);
            }
            this.plane.setRotationPivot(simpleVector);
            this.plane.rotateAxis(invert.getZAxis(), this.rotation);
        }
        this.plane.touch();
    }

    public static class MyController extends GenericVertexController {
        private static final long serialVersionUID = 1;
        private SimpleVector[] poss;

        private MyController() {
            this.poss = new SimpleVector[4];
        }

        @Override
        public void apply() {
            SimpleVector[] destinationMesh = getDestinationMesh();
            for (int i10 = 0; i10 < 4; i10++) {
                destinationMesh[i10] = this.poss[i10];
            }
        }

        public void setNewBounds(SimpleVector simpleVector, SimpleVector simpleVector2, SimpleVector simpleVector3, SimpleVector simpleVector4) {
            SimpleVector[] simpleVectorArr = this.poss;
            simpleVectorArr[0] = simpleVector;
            simpleVectorArr[1] = simpleVector2;
            simpleVectorArr[2] = simpleVector3;
            simpleVectorArr[3] = simpleVector4;
        }

        public MyController(MyController myController) {
            this();
        }
    }

    public Overlay(World world, int i10, int i11, int i12, int i13, String str) {
        this(world, i10, i11, i12, i13, str, false);
    }

    public void setTexture(TextureInfo textureInfo) {
        this.plane.setTexture(textureInfo);
    }

    public Overlay(World world, int i10, int i11, int i12, int i13, String str, boolean z10) {
        MyController myController = null;
        this.adjuster = null;
        this.pivotX = Year.MIN_VALUE;
        this.pivotY = Year.MIN_VALUE;
        this.depth = Config.nearPlane + 5.0f;
        this.disposed = false;
        this.uvChange = false;
        this.rotation = 0.0f;
        this.rotMode = false;
        this.tmp1 = new SimpleVector();
        this.tmp2 = new SimpleVector();
        this.tmp3 = new SimpleVector();
        this.tmp4 = new SimpleVector();
        this.tmp5 = new SimpleVector();
        this.tmp6 = new SimpleVector();
        this.tmpMat = new Matrix();
        this.world = world;
        this.upperLeftX = i10;
        this.upperLeftY = i11;
        this.lowerRightX = i12;
        this.lowerRightY = i13;
        Object3D plane = Primitives.getPlane(1, 1.0f);
        this.plane = plane;
        if (str != null) {
            plane.setTexture(str);
            TextureManager.getInstance().getTexture(str).setMipmap(false);
        }
        Object3D object3D = this.plane;
        StringBuilder sb2 = new StringBuilder("__overlay plane ");
        int i14 = cnt;
        cnt = i14 + 1;
        sb2.append(i14);
        sb2.append("__");
        object3D.setName(sb2.toString());
        this.plane.setAdditionalColor(RGBColor.WHITE);
        this.plane.setLighting(1);
        this.plane.setUserObject(this);
        world.addObject(this.plane);
        this.adjuster = new MyController(myController);
        this.plane.getMesh().setVertexController(this.adjuster, false);
        this.plane.build(!z10);
    }
}
