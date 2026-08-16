package com.jme3.environment.util;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.scene.Geometry;
import com.jme3.scene.Node;
import com.jme3.scene.shape.Quad;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.image.ColorSpace;
import com.jme3.ui.Picture;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import java.nio.ByteBuffer;
import java.util.Iterator;
import sk.C15316b;

public class EnvMapUtils {
    public static final int NUM_SH_COEFFICIENT = 9;
    private static final float sqrtPi = FastMath.sqrt(3.1415927f);
    private static final float sqrt3Pi = FastMath.sqrt(0.95492965f);
    private static final float sqrt5Pi = FastMath.sqrt(1.5915494f);
    private static final float sqrt15Pi = FastMath.sqrt(4.774648f);
    public static float[] shBandFactor = {1.0f, 0.6666667f, 0.6666667f, 0.6666667f, 0.25f, 0.25f, 0.25f, 0.25f, 0.25f};

    public enum FixSeamsMethod {
        Wrap,
        Stretch,
        None
    }

    public enum GenerationType {
        Fast,
        HighQuality
    }

    private EnvMapUtils() {
    }

    private static float areaElement(float f10, float f11) {
        return (float) Math.atan2(f10 * f11, FastMath.sqrt((f10 * f10) + (f11 * f11) + 1.0f));
    }

    public static TextureCubeMap createIrradianceMap(int i10, Image.Format format) {
        TextureCubeMap textureCubeMap = new TextureCubeMap(i10, i10, format);
        textureCubeMap.setMagFilter(Texture.MagFilter.Bilinear);
        textureCubeMap.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
        textureCubeMap.getImage().setColorSpace(ColorSpace.Linear);
        return textureCubeMap;
    }

    public static TextureCubeMap createPrefilteredEnvMap(int i10, Image.Format format) {
        TextureCubeMap textureCubeMap = new TextureCubeMap(i10, i10, format);
        textureCubeMap.setMagFilter(Texture.MagFilter.Bilinear);
        textureCubeMap.setMinFilter(Texture.MinFilter.Trilinear);
        textureCubeMap.getImage().setColorSpace(ColorSpace.Linear);
        new CubeMapWrapper(textureCubeMap).initMipMaps(Math.min(6, (int) (Math.log(i10) / Math.log(2.0d))));
        return textureCubeMap;
    }

    public static TextureCubeMap duplicateCubeMap(TextureCubeMap textureCubeMap) {
        Image image = textureCubeMap.getImage();
        Image image2 = new Image(image.getFormat(), image.getWidth(), image.getHeight(), (ByteBuffer) null, image.getColorSpace());
        Iterator<ByteBuffer> it = image.getData().iterator();
        while (it.hasNext()) {
            image2.addData(it.next().duplicate());
        }
        image2.setMipMapSizes(image.getMipMapSizes());
        TextureCubeMap textureCubeMap2 = new TextureCubeMap(image2);
        textureCubeMap2.setAnisotropicFilter(textureCubeMap.getAnisotropicFilter());
        textureCubeMap2.setMagFilter(textureCubeMap.getMagFilter());
        textureCubeMap2.setMinFilter(textureCubeMap.getMinFilter());
        textureCubeMap2.setWrap(textureCubeMap.getWrap(Texture.WrapAxis.S));
        return textureCubeMap2;
    }

    public static void evalShBasis(Vector3f vector3f, float[] fArr) {
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        fArr[0] = 1.0f / (sqrtPi * 2.0f);
        float f13 = sqrt3Pi;
        fArr[1] = (-(f13 * f11)) / 2.0f;
        fArr[2] = (f13 * f12) / 2.0f;
        fArr[3] = (-(f13 * f10)) / 2.0f;
        float f14 = sqrt15Pi;
        fArr[4] = ((f14 * f10) * f11) / 2.0f;
        fArr[5] = (-((f11 * f14) * f12)) / 2.0f;
        fArr[6] = (sqrt5Pi * (((f12 * f12) * 3.0f) - 1.0f)) / 4.0f;
        fArr[7] = (-((f10 * f14) * f12)) / 2.0f;
        fArr[8] = (f14 * ((f10 * f10) - (f11 * f11))) / 4.0f;
    }

    public static Node getCubeMapCrossDebugView(TextureCubeMap textureCubeMap, AssetManager assetManager) {
        Node node = new Node("CubeMapDebug" + textureCubeMap.getName());
        int width = textureCubeMap.getImage().getWidth();
        Picture[] pictureArr = new Picture[6];
        float f10 = width;
        float f11 = 128.0f / f10;
        int i10 = 0;
        for (int i11 = 6; i10 < i11; i11 = 6) {
            pictureArr[i10] = new Picture("bla");
            pictureArr[i10].setTexture(assetManager, new Texture2D(new Image(textureCubeMap.getImage().getFormat(), width, width, textureCubeMap.getImage().getData(i10), textureCubeMap.getImage().getColorSpace())), true);
            pictureArr[i10].setWidth(f10);
            pictureArr[i10].setHeight(f10);
            node.attachChild(pictureArr[i10]);
            i10++;
        }
        float f12 = width * 2;
        pictureArr[0].setLocalTranslation(f10, f12, 1.0f);
        Picture picture = pictureArr[0];
        Quaternion quaternion = new Quaternion();
        Vector3f vector3f = Vector3f.UNIT_Z;
        picture.setLocalRotation(quaternion.fromAngleAxis(3.1415927f, vector3f));
        float f13 = width * 3;
        pictureArr[1].setLocalTranslation(f13, f12, 1.0f);
        pictureArr[1].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
        pictureArr[2].setLocalTranslation(f12, f13, 1.0f);
        pictureArr[2].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
        pictureArr[3].setLocalTranslation(f12, f10, 1.0f);
        pictureArr[3].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
        pictureArr[4].setLocalTranslation(f12, f12, 1.0f);
        pictureArr[4].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
        float f14 = width * 4;
        pictureArr[5].setLocalTranslation(f14, f12, 1.0f);
        pictureArr[5].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
        Geometry geometry = new Geometry("bg", new Quad(f14, f13));
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Black);
        geometry.setMaterial(material);
        geometry.setLocalTranslation(0.0f, 0.0f, 0.0f);
        node.attachChild(geometry);
        node.setLocalScale(f11);
        return node;
    }

    public static Node getCubeMapCrossDebugViewWithMipMaps(TextureCubeMap textureCubeMap, AssetManager assetManager) {
        Node node = new Node("CubeMapDebug" + textureCubeMap.getName());
        int width = textureCubeMap.getImage().getWidth();
        int length = textureCubeMap.getImage().getMipMapSizes().length;
        Picture[] pictureArr = new Picture[length * 6];
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i11 < length) {
            width = Math.max(1, textureCubeMap.getImage().getWidth() >> i11);
            int i14 = textureCubeMap.getImage().getMipMapSizes()[i11];
            byte[] bArr = new byte[i14];
            int i15 = i10;
            while (i15 < 6) {
                ByteBuffer data = textureCubeMap.getImage().getData(i15);
                data.rewind();
                data.position(i13);
                data.get(bArr, i10, i14);
                ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(bArr);
                pictureArr[i15] = new Picture("bla");
                int i16 = i15;
                pictureArr[i16].setTexture(assetManager, new Texture2D(new Image(textureCubeMap.getImage().getFormat(), width, width, createByteBuffer, textureCubeMap.getImage().getColorSpace())), true);
                float f10 = width;
                pictureArr[i16].setWidth(f10);
                pictureArr[i16].setHeight(f10);
                node.attachChild(pictureArr[i16]);
                i15 = i16 + 1;
                bArr = bArr;
                i14 = i14;
            }
            int i17 = i14;
            float f11 = i12 + width;
            int i18 = width * 2;
            float f12 = i12 + i18;
            pictureArr[i10].setLocalTranslation(f11, f12, 1.0f);
            Picture picture = pictureArr[i10];
            Quaternion quaternion = new Quaternion();
            Vector3f vector3f = Vector3f.UNIT_Z;
            picture.setLocalRotation(quaternion.fromAngleAxis(3.1415927f, vector3f));
            float f13 = (width * 3) + i12;
            pictureArr[1].setLocalTranslation(f13, f12, 1.0f);
            pictureArr[1].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
            pictureArr[2].setLocalTranslation(f12, f13, 1.0f);
            pictureArr[2].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
            pictureArr[3].setLocalTranslation(f12, f11, 1.0f);
            pictureArr[3].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
            pictureArr[4].setLocalTranslation(f12, f12, 1.0f);
            pictureArr[4].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
            pictureArr[5].setLocalTranslation((width * 4) + i12, f12, 1.0f);
            pictureArr[5].setLocalRotation(new Quaternion().fromAngleAxis(3.1415927f, vector3f));
            i12 += i18 + 1;
            i13 += i17;
            i11++;
            i10 = 0;
        }
        Geometry geometry = new Geometry("bg", new Quad((textureCubeMap.getImage().getWidth() * 4) + length, i12 + width));
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
        material.setColor(SerializableShaderEntry.f81153g, ColorRGBA.Black);
        geometry.setMaterial(material);
        geometry.setLocalTranslation(0.0f, 0.0f, 0.0f);
        node.attachChild(geometry);
        node.setLocalScale(1.0f);
        return node;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getCubemapFaceTexCoordFromVector(Vector3f vector3f, int i10, Vector2f vector2f, FixSeamsMethod fixSeamsMethod) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float round;
        int round2;
        float abs = FastMath.abs(vector3f.f81611x);
        float abs2 = FastMath.abs(vector3f.f81612y);
        float max = Math.max(Math.max(abs, abs2), FastMath.abs(vector3f.f81613z));
        float f16 = 0.0f;
        int i11 = max == abs ? vector3f.f81611x > 0.0f ? 0 : 1 : max == abs2 ? vector3f.f81612y > 0.0f ? 2 : 3 : vector3f.f81613z > 0.0f ? 4 : 5;
        if (i11 == 0) {
            f10 = 1.0f / vector3f.f81611x;
            f11 = -vector3f.f81613z;
            f12 = vector3f.f81612y;
        } else if (i11 == 1) {
            f10 = (-1.0f) / vector3f.f81611x;
            f11 = vector3f.f81613z;
            f12 = vector3f.f81612y;
        } else {
            if (i11 == 2) {
                f10 = 1.0f / vector3f.f81612y;
                f11 = vector3f.f81611x;
                f13 = vector3f.f81613z;
                float f17 = f11;
                f14 = f13;
                f15 = f10;
                f16 = f17;
                float f18 = f16 * f15;
                float f19 = f14 * f15;
                if (fixSeamsMethod == FixSeamsMethod.Stretch) {
                }
                vector2f.set(round, round2);
                return i11;
            }
            if (i11 == 3) {
                f10 = (-1.0f) / vector3f.f81612y;
                f11 = vector3f.f81611x;
                f12 = vector3f.f81613z;
            } else if (i11 == 4) {
                f10 = 1.0f / vector3f.f81613z;
                f11 = vector3f.f81611x;
                f12 = vector3f.f81612y;
            } else {
                if (i11 != 5) {
                    f15 = 0.0f;
                    f14 = 0.0f;
                    float f182 = f16 * f15;
                    float f192 = f14 * f15;
                    if (fixSeamsMethod == FixSeamsMethod.Stretch) {
                        float f20 = i10 - 1.0f;
                        round = Math.round((f182 + 1.0f) * f20 * 0.5f);
                        round2 = Math.round((f192 + 1.0f) * f20 * 0.5f);
                    } else {
                        float f21 = i10;
                        round = Math.round((((f182 + 1.0f) * f21) * 0.5f) - 0.5f);
                        round2 = Math.round((((f192 + 1.0f) * f21) * 0.5f) - 0.5f);
                    }
                    vector2f.set(round, round2);
                    return i11;
                }
                f10 = (-1.0f) / vector3f.f81613z;
                f11 = -vector3f.f81611x;
                f12 = vector3f.f81612y;
            }
        }
        f13 = -f12;
        float f172 = f11;
        f14 = f13;
        f15 = f10;
        f16 = f172;
        float f1822 = f16 * f15;
        float f1922 = f14 * f15;
        if (fixSeamsMethod == FixSeamsMethod.Stretch) {
        }
        vector2f.set(round, round2);
        return i11;
    }

    public static Vector4f getHammersleyPoint(int i10, int i11, Vector4f vector4f) {
        if (vector4f == null) {
            vector4f = new Vector4f();
        }
        long j10 = i10;
        vector4f.setX(i10 / i11);
        long j11 = (j10 >> 16) | (j10 << 16);
        long j12 = ((j11 & (-1431655766)) >>> 1) | ((C15316b.f109660a & j11) << 1);
        long j13 = ((j12 & (-858993460)) >>> 2) | ((858993459 & j12) << 2);
        long j14 = ((j13 & (-252645136)) >>> 4) | ((252645135 & j13) << 4);
        vector4f.setY(((float) (((j14 & (-16711936)) >>> 8) | ((16711935 & j14) << 8))) * 2.3283064E-10f);
        float f10 = vector4f.f81616y * 6.2831855f;
        vector4f.setZ(FastMath.cos(f10));
        vector4f.setW(FastMath.sin(f10));
        return vector4f;
    }

    public static float getMipFromRoughness(float f10, int i10) {
        return FastMath.sqrt(f10) * (i10 - 1);
    }

    public static float getRoughnessFromMip(int i10, int i11) {
        float f10 = (1.0f / (i11 - 1.0f)) * i10;
        return f10 * f10;
    }

    public static int getSampleFromMip(int i10, int i11) {
        if (i10 == 0) {
            return 1;
        }
        return Math.min(1 << ((i11 - 1) + (i10 * 2)), 8192);
    }

    public static float getSolidAngleAndVector(int i10, int i11, int i12, int i13, Vector3f vector3f, FixSeamsMethod fixSeamsMethod) {
        if (vector3f == null) {
            throw new IllegalArgumentException("the store parameter must not be null");
        }
        float f10 = i12;
        float f11 = (((i10 + 0.5f) * 2.0f) / f10) - 1.0f;
        float f12 = (((i11 + 0.5f) * 2.0f) / f10) - 1.0f;
        getVectorFromCubemapFaceTexCoord(i10, i11, i12, i13, vector3f, fixSeamsMethod);
        float f13 = 1.0f / f10;
        float f14 = f11 - f13;
        float f15 = f12 - f13;
        float f16 = f11 + f13;
        float f17 = f12 + f13;
        return ((areaElement(f14, f15) - areaElement(f14, f17)) - areaElement(f16, f15)) + areaElement(f16, f17);
    }

    public static Vector3f[] getSphericalHarmonicsCoefficents(TextureCubeMap textureCubeMap) {
        return getSphericalHarmonicsCoefficents(textureCubeMap, FixSeamsMethod.Wrap);
    }

    public static Vector3f getVectorFromCubemapFaceTexCoord(int i10, int i11, int i12, int i13, Vector3f vector3f, FixSeamsMethod fixSeamsMethod) {
        float f10;
        float f11;
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        if (fixSeamsMethod == FixSeamsMethod.Stretch) {
            float f12 = i12 - 1.0f;
            f10 = ((i10 * 2.0f) / f12) - 1.0f;
            f11 = (i11 * 2.0f) / f12;
        } else {
            float f13 = i12;
            f10 = (((i10 + 0.5f) * 2.0f) / f13) - 1.0f;
            f11 = ((i11 + 0.5f) * 2.0f) / f13;
        }
        float f14 = f11 - 1.0f;
        if (fixSeamsMethod == FixSeamsMethod.Wrap) {
            float f15 = i12;
            float pow = FastMath.pow(f15, 2.0f) / FastMath.pow(f15 - 1.0f, 3.0f);
            f10 += FastMath.pow(f10, 3.0f) * pow;
            f14 += pow * FastMath.pow(f14, 3.0f);
        }
        if (i13 == 0) {
            vector3f.set(1.0f, -f14, -f10);
        } else if (i13 == 1) {
            vector3f.set(-1.0f, -f14, f10);
        } else if (i13 == 2) {
            vector3f.set(f10, 1.0f, f14);
        } else if (i13 == 3) {
            vector3f.set(f10, -1.0f, -f14);
        } else if (i13 == 4) {
            vector3f.set(f10, -f14, 1.0f);
        } else if (i13 == 5) {
            vector3f.set(-f10, -f14, -1.0f);
        }
        return vector3f.normalizeLocal();
    }

    public static Vector3f importanceSampleGGX(Vector4f vector4f, float f10, Vector3f vector3f, Vector3f vector3f2, TempVars tempVars) {
        if (vector3f2 == null) {
            vector3f2 = new Vector3f();
        }
        float f11 = vector4f.f81615x;
        float sqrt = FastMath.sqrt((1.0f - f11) / (((f10 - 1.0f) * f11) + 1.0f));
        float sqrt2 = FastMath.sqrt(1.0f - (sqrt * sqrt));
        float f12 = vector4f.f81617z * sqrt2;
        float f13 = sqrt2 * vector4f.f81614w;
        Vector3f vector3f3 = Vector3f.UNIT_X;
        if (FastMath.abs(vector3f.f81613z) < 0.999d) {
            vector3f3 = Vector3f.UNIT_Y;
        }
        Vector3f normalizeLocal = tempVars.vect3.set(vector3f3).crossLocal(vector3f).normalizeLocal();
        Vector3f crossLocal = tempVars.vect4.set(vector3f).crossLocal(normalizeLocal);
        normalizeLocal.multLocal(f12);
        crossLocal.multLocal(f13);
        tempVars.vect5.set(vector3f).multLocal(sqrt);
        vector3f2.set(normalizeLocal).addLocal(crossLocal).addLocal(tempVars.vect5);
        return vector3f2;
    }

    public static TextureCubeMap makeCubeMap(Image image, Image image2, Image image3, Image image4, Image image5, Image image6, Image.Format format) {
        Image image7 = new Image(format, image2.getWidth(), image2.getHeight(), (ByteBuffer) null, ColorSpace.Linear);
        image7.addData(image.getData(0));
        image7.addData(image2.getData(0));
        image7.addData(image3.getData(0));
        image7.addData(image4.getData(0));
        image7.addData(image5.getData(0));
        image7.addData(image6.getData(0));
        image7.setMipMapSizes(image.getMipMapSizes());
        TextureCubeMap textureCubeMap = new TextureCubeMap(image7);
        textureCubeMap.setAnisotropicFilter(0);
        textureCubeMap.setMagFilter(Texture.MagFilter.Bilinear);
        textureCubeMap.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
        textureCubeMap.setWrap(Texture.WrapMode.EdgeClamp);
        return textureCubeMap;
    }

    public static void prepareShCoefs(Vector3f[] vector3fArr) {
        float f10 = 1.0f / (sqrtPi * 2.0f);
        float f11 = (-sqrt3Pi) / 2.0f;
        float f12 = sqrt15Pi;
        float f13 = f12 / 2.0f;
        float f14 = -f13;
        float f15 = sqrt5Pi / 4.0f;
        vector3fArr[0].multLocal(f10).multLocal(shBandFactor[0]);
        vector3fArr[1].multLocal(f11).multLocal(shBandFactor[1]);
        vector3fArr[2].multLocal(-f11).multLocal(shBandFactor[2]);
        vector3fArr[3].multLocal(f11).multLocal(shBandFactor[3]);
        vector3fArr[4].multLocal(f13).multLocal(shBandFactor[4]);
        vector3fArr[5].multLocal(f14).multLocal(shBandFactor[5]);
        vector3fArr[6].multLocal(f15).multLocal(shBandFactor[6]);
        vector3fArr[7].multLocal(f14).multLocal(shBandFactor[7]);
        vector3fArr[8].multLocal(f12 / 4.0f).multLocal(shBandFactor[8]);
    }

    public static Vector3f[] getSphericalHarmonicsCoefficents(TextureCubeMap textureCubeMap, FixSeamsMethod fixSeamsMethod) {
        int i10 = 9;
        Vector3f[] vector3fArr = new Vector3f[9];
        float[] fArr = new float[9];
        int i11 = 0;
        if (textureCubeMap.getImage().getData(0) != null) {
            int width = textureCubeMap.getImage().getWidth();
            int height = textureCubeMap.getImage().getHeight();
            Vector3f vector3f = new Vector3f();
            ColorRGBA colorRGBA = new ColorRGBA();
            CubeMapWrapper cubeMapWrapper = new CubeMapWrapper(textureCubeMap);
            float f10 = 0.0f;
            int i12 = 0;
            while (i12 < 6) {
                int i13 = i11;
                while (i13 < height) {
                    int i14 = i11;
                    float f11 = f10;
                    while (i14 < width) {
                        int i15 = i14;
                        int i16 = i13;
                        float solidAngleAndVector = getSolidAngleAndVector(i14, i13, width, i12, vector3f, fixSeamsMethod);
                        evalShBasis(vector3f, fArr);
                        cubeMapWrapper.getPixel(i15, i16, i12, colorRGBA);
                        int i17 = 0;
                        for (int i18 = 9; i17 < i18; i18 = 9) {
                            if (vector3fArr[i17] == null) {
                                vector3fArr[i17] = new Vector3f();
                            }
                            Vector3f vector3f2 = vector3fArr[i17];
                            vector3f2.setX(vector3f2.f81611x + (colorRGBA.f81598r * fArr[i17] * solidAngleAndVector));
                            Vector3f vector3f3 = vector3fArr[i17];
                            vector3f3.setY(vector3f3.f81612y + (colorRGBA.f81597g * fArr[i17] * solidAngleAndVector));
                            Vector3f vector3f4 = vector3fArr[i17];
                            vector3f4.setZ(vector3f4.f81613z + (colorRGBA.f81596b * fArr[i17] * solidAngleAndVector));
                            i17++;
                        }
                        f11 += solidAngleAndVector;
                        i14 = i15 + 1;
                        i13 = i16;
                    }
                    i13++;
                    f10 = f11;
                    i11 = 0;
                }
                i12++;
                i10 = 9;
                i11 = 0;
            }
            for (int i19 = 0; i19 < i10; i19++) {
                vector3fArr[i19].multLocal(12.566371f / f10);
            }
            return vector3fArr;
        }
        throw new IllegalStateException("The cube map must contain Efficient data, if you rendered the cube map on the GPU please use renderer.readFrameBuffer, to create a CPU image");
    }
}
