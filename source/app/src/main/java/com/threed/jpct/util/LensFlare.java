package com.threed.jpct.util;

import com.threed.jpct.Camera;
import com.threed.jpct.FrameBuffer;
import com.threed.jpct.Interact2D;
import com.threed.jpct.RGBColor;
import com.threed.jpct.SimpleVector;
import com.threed.jpct.Texture;
import com.threed.jpct.TextureManager;
import com.threed.jpct.World;
import java.io.Serializable;
import java.lang.reflect.Array;

public class LensFlare implements Serializable {
    private static final long serialVersionUID = 1;
    private Texture burst;
    private Texture halo1;
    private Texture halo2;
    private Texture halo3;
    private SimpleVector sunPos;
    private Texture[] types = new Texture[7];
    private float[][] scales = (float[][]) Array.newInstance(Float.TYPE, 7, 2);
    private float globalScale = 1.0f;
    private int trans = 1;
    private boolean cover = true;
    private float maxDistance = -1.0f;
    private boolean revertDirection = false;
    private boolean visible = false;
    private SimpleVector light2D = null;
    private SimpleVector tmp1 = new SimpleVector();
    private SimpleVector tmp2 = new SimpleVector();
    private SimpleVector tmp3 = new SimpleVector();

    public LensFlare(SimpleVector simpleVector, String str, String str2, String str3, String str4) {
        this.burst = null;
        this.halo1 = null;
        this.halo2 = null;
        this.halo3 = null;
        this.sunPos = null;
        TextureManager textureManager = TextureManager.getInstance();
        this.burst = textureManager.getTexture(str);
        this.halo1 = textureManager.getTexture(str2);
        this.halo2 = textureManager.getTexture(str3);
        this.halo3 = textureManager.getTexture(str4);
        this.sunPos = new SimpleVector(simpleVector);
        Texture[] textureArr = this.types;
        Texture texture = this.burst;
        textureArr[0] = texture;
        textureArr[1] = this.halo1;
        textureArr[2] = texture;
        textureArr[3] = this.halo2;
        textureArr[4] = texture;
        textureArr[5] = this.halo3;
        textureArr[6] = texture;
        float[][] fArr = this.scales;
        float[] fArr2 = fArr[0];
        fArr2[0] = 1.0f;
        fArr2[1] = 1.0f;
        float[] fArr3 = fArr[1];
        fArr3[0] = 2.0f;
        fArr3[1] = 0.5f;
        float[] fArr4 = fArr[2];
        fArr4[0] = 3.0f;
        fArr4[1] = 0.25f;
        float[] fArr5 = fArr[3];
        fArr5[0] = 8.0f;
        fArr5[1] = 1.0f;
        float[] fArr6 = fArr[4];
        fArr6[0] = -2.0f;
        fArr6[1] = 0.5f;
        float[] fArr7 = fArr[5];
        fArr7[0] = -4.0f;
        fArr7[1] = 0.25f;
        float[] fArr8 = fArr[6];
        fArr8[0] = -5.5f;
        fArr8[1] = 0.25f;
    }

    public void render(FrameBuffer frameBuffer) {
        SimpleVector simpleVector = this.light2D;
        if (simpleVector == null || !this.visible) {
            return;
        }
        SimpleVector simpleVector2 = this.tmp1;
        simpleVector2.set(simpleVector);
        float centerX = frameBuffer.getCenterX();
        float centerY = frameBuffer.getCenterY();
        simpleVector2.f83627z = 0.0f;
        SimpleVector simpleVector3 = this.tmp2;
        simpleVector3.set(centerX, centerY, 0.0f);
        simpleVector3.scalarMul(-1.0f);
        simpleVector2.add(simpleVector3);
        float length = simpleVector2.length();
        SimpleVector normalize = simpleVector2.normalize(simpleVector2);
        SimpleVector simpleVector4 = this.tmp2;
        simpleVector4.set(0.0f, 0.0f, 0.0f);
        for (int i10 = 0; i10 < this.types.length; i10++) {
            simpleVector4.set(normalize);
            Texture texture = this.types[i10];
            float[] fArr = this.scales[i10];
            float f10 = fArr[0];
            float f11 = fArr[1] * this.globalScale;
            simpleVector4.scalarMul((1.0f / f10) * length);
            int width = texture.getWidth();
            int height = texture.getHeight();
            frameBuffer.blit(texture, 0, 0, ((int) (simpleVector4.f83625x - ((width >> 1) * f11))) + ((int) centerX), ((int) (simpleVector4.f83626y - ((height >> 1) * f11))) + ((int) centerY), width, height, (int) (width * f11), (int) (height * f11), this.trans, true, RGBColor.WHITE);
        }
    }

    public void setDirection(boolean z10) {
        this.revertDirection = z10;
    }

    public void setGlobalScale(float f10) {
        this.globalScale = f10;
    }

    public void setHiding(boolean z10) {
        this.cover = z10;
    }

    public void setLightPosition(SimpleVector simpleVector) {
        this.sunPos.set(simpleVector);
    }

    public void setMaximumDistance(float f10) {
        this.maxDistance = f10;
    }

    public void setTransparency(int i10) {
        this.trans = i10;
    }

    public void update(FrameBuffer frameBuffer, World world) {
        Camera camera = world.getCamera();
        this.light2D = Interact2D.project3D2D(camera, frameBuffer, this.sunPos, this.tmp3);
        boolean z10 = true;
        this.visible = true;
        if (this.cover) {
            SimpleVector position = camera.getPosition(this.tmp1);
            if (this.revertDirection) {
                this.tmp2.set(this.sunPos);
                this.tmp2.scalarMul(-1.0f);
                position.add(this.tmp2);
                float length = position.length();
                SimpleVector simpleVector = this.sunPos;
                SimpleVector normalize = position.normalize(position);
                float f10 = this.maxDistance;
                float f11 = 1.05f * length;
                if (f10 != -1.0f) {
                    f11 = Math.min(f10, f11);
                }
                float calcMinDistance = world.calcMinDistance(simpleVector, normalize, f11);
                if (calcMinDistance != 1.0E12f && calcMinDistance <= length - 5.0f) {
                    z10 = false;
                }
                this.visible = z10;
                return;
            }
            this.tmp2.set(position);
            position.scalarMul(-1.0f);
            position.add(this.sunPos);
            float length2 = position.length();
            SimpleVector simpleVector2 = this.tmp2;
            SimpleVector normalize2 = position.normalize(position);
            float f12 = this.maxDistance;
            float f13 = 1.05f * length2;
            if (f12 != -1.0f) {
                f13 = Math.min(f12, f13);
            }
            float calcMinDistance2 = world.calcMinDistance(simpleVector2, normalize2, f13);
            if (calcMinDistance2 != 1.0E12f && calcMinDistance2 <= length2 - 5.0f) {
                z10 = false;
            }
            this.visible = z10;
        }
    }
}
