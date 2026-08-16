package p000if;

import com.ardor3d.util.resource.ResourceLocatorTool;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetManager;
import com.jme3.asset.TextureKey;
import com.jme3.material.Material;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector3f;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Node;
import com.jme3.texture.Texture;
import com.jme3.util.SkyFactory;
import java.util.logging.Logger;
import lf.C14128o;

public final class C13716l {

    public static final String f92120c = "MatDefs/debug/ShowNormals.j3md";

    public static final String f92121d = "MatDefs/wireframe/multicolor2.j3md";

    public static final String f92122e = "Common/MatDefs/Misc/Particle.j3md";

    public static final String f92123f = "Common/MatDefs/Light/Lighting.j3md";

    public static final String f92124g = "Common/MatDefs/Misc/Unshaded.j3md";

    public static final String f92125h = "MatDefs/wireframe/wireframe.j3md";

    public static final boolean f92130m = false;

    public static final Logger f92118a = Logger.getLogger(C13716l.class.getName());

    public static final Mesh f92119b = new C14128o(-1.0f, 1.0f, -1.0f, 1.0f, 1.0f);

    public static final Vector3f f92126i = new Vector3f(1.0f, 1.0f, 1.0f);

    public static final Vector3f[] f92127j = {new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(1.0f, 0.0f, 0.0f), new Vector3f(0.0f, 1.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, 0.0f, -1.0f), new Vector3f(0.0f, 0.0f, 1.0f)};

    public static final Vector3f[] f92128k = {new Vector3f(0.0f, 0.0f, 1.0f), new Vector3f(0.0f, 0.0f, -1.0f), new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(-1.0f, 0.0f, 0.0f), new Vector3f(1.0f, 0.0f, 0.0f)};

    public static final Vector3f[] f92129l = {new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, 0.0f, -1.0f), new Vector3f(0.0f, 0.0f, 1.0f), new Vector3f(0.0f, -1.0f, 0.0f), new Vector3f(0.0f, -1.0f, 0.0f)};

    public static Vector3f a(int i10) {
        return f92127j[i10].normalize();
    }

    public static Vector3f b(int i10) {
        return f92128k[i10].normalize();
    }

    public static Vector3f c(int i10) {
        return f92129l[i10].normalize();
    }

    public static Material d(AssetManager assetManager, float f10) {
        C13702E.E(f10, "gamma");
        C13702E.t(assetManager, "asset manager");
        Material material = new Material(assetManager, f92120c);
        material.setFloat("Gamma", f10);
        material.setName("debug");
        return material;
    }

    public static Material e(AssetManager assetManager) {
        C13702E.t(assetManager, "asset manager");
        Material m10 = m(assetManager);
        m10.setColor(SerializableShaderEntry.f81153g, new ColorRGBA(0.0f, 0.0f, 0.0f, 0.0f));
        m10.setName("invisible");
        RenderState additionalRenderState = m10.getAdditionalRenderState();
        additionalRenderState.setBlendMode(RenderState.BlendMode.Alpha);
        additionalRenderState.setDepthWrite(false);
        additionalRenderState.setFaceCullMode(RenderState.FaceCullMode.FrontAndBack);
        return m10;
    }

    public static Material f(AssetManager assetManager, Texture texture, float f10) {
        C13702E.t(assetManager, "asset manager");
        C13702E.p(f10, "point size");
        Material material = new Material(assetManager, f92121d);
        material.setTexture("PointShape", texture);
        material.setFloat("PointSize", f10);
        return material;
    }

    public static Material g(AssetManager assetManager, Texture texture) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(texture, ResourceLocatorTool.TYPE_TEXTURE);
        Material material = new Material(assetManager, "Common/MatDefs/Misc/Particle.j3md");
        material.setTexture(SerializableShaderEntry.f81152f, texture);
        return material;
    }

    public static Material h(AssetManager assetManager, ColorRGBA colorRGBA) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(colorRGBA, "color");
        Material material = new Material(assetManager, "Common/MatDefs/Light/Lighting.j3md");
        material.setBoolean("UseMaterialColors", true);
        material.setColor("Ambient", colorRGBA.m1279clone());
        material.setColor("Diffuse", colorRGBA.m1279clone());
        return material;
    }

    public static Material i(AssetManager assetManager, Texture texture) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(texture, ResourceLocatorTool.TYPE_TEXTURE);
        Material material = new Material(assetManager, "Common/MatDefs/Light/Lighting.j3md");
        material.setTexture("DiffuseMap", texture);
        return material;
    }

    public static Material j(AssetManager assetManager, ColorRGBA colorRGBA) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(colorRGBA, "color");
        Material h10 = h(assetManager, colorRGBA);
        h10.setColor("Specular", new ColorRGBA(1.0f, 1.0f, 1.0f, 1.0f));
        h10.setFloat("Shininess", 1.0f);
        return h10;
    }

    public static Node k(AssetManager assetManager, String str) {
        C13702E.t(assetManager, "asset manager");
        C13702E.j(str, "star map name");
        int i10 = 0;
        Texture[] textureArr = {s(assetManager, str, "right1", false), s(assetManager, str, "left2", false), s(assetManager, str, "top3", false), s(assetManager, str, "bottom4", false), s(assetManager, str, "front5", false), s(assetManager, str, "back6", false)};
        Node node = new Node("star map");
        node.setQueueBucket(RenderQueue.Bucket.Sky);
        while (i10 < 6) {
            int i11 = i10 + 1;
            Geometry geometry = new Geometry(String.format("%s_face%d", str, Integer.valueOf(i11)), f92119b);
            node.attachChild(geometry);
            geometry.setMaterial(o(assetManager, textureArr[i10]));
            Vector3f[] vector3fArr = f92127j;
            geometry.setLocalTranslation(vector3fArr[i10].m1292clone());
            Vector3f vector3f = f92128k[i10];
            Vector3f vector3f2 = f92129l[i10];
            Vector3f negate = vector3fArr[i10].negate();
            Quaternion quaternion = new Quaternion();
            quaternion.fromAxes(vector3f, vector3f2, negate);
            geometry.setLocalRotation(quaternion);
            i10 = i11;
        }
        return node;
    }

    public static Geometry l(AssetManager assetManager, String str, float f10) {
        C13702E.t(assetManager, "asset manager");
        C13702E.j(str, "star map name");
        C13702E.E(f10, TestVFXEffect.f77524P);
        Texture s10 = s(assetManager, str, "right1", true);
        Texture s11 = s(assetManager, str, "left2", true);
        Texture s12 = s(assetManager, str, "top3", true);
        Texture s13 = s(assetManager, str, "bottom4", true);
        return (Geometry) SkyFactory.createSky(assetManager, s10, s11, s(assetManager, str, "back6", true), s(assetManager, str, "front5", true), s12, s13, f92126i, f10);
    }

    public static Material m(AssetManager assetManager) {
        C13702E.t(assetManager, "asset manager");
        return new Material(assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
    }

    public static Material n(AssetManager assetManager, ColorRGBA colorRGBA) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(colorRGBA, "color");
        Material m10 = m(assetManager);
        m10.setColor(SerializableShaderEntry.f81153g, colorRGBA.m1279clone());
        return m10;
    }

    public static Material o(AssetManager assetManager, Texture texture) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(texture, ResourceLocatorTool.TYPE_TEXTURE);
        Material m10 = m(assetManager);
        m10.setTexture("ColorMap", texture);
        return m10;
    }

    public static Material p(AssetManager assetManager, String str) {
        C13702E.t(assetManager, "asset manager");
        C13702E.j(str, "path");
        return o(assetManager, t(assetManager, str, false));
    }

    public static Material q(AssetManager assetManager, ColorRGBA colorRGBA) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(colorRGBA, "color");
        return r(assetManager, colorRGBA, 1.0f);
    }

    public static Material r(AssetManager assetManager, ColorRGBA colorRGBA, float f10) {
        C13702E.t(assetManager, "asset manager");
        C13702E.t(colorRGBA, "color");
        C13702E.p(f10, "point size");
        Material material = new Material(assetManager, f92125h);
        material.setColor(SerializableShaderEntry.f81153g, colorRGBA.m1279clone());
        material.setFloat("PointSize", f10);
        return material;
    }

    public static Texture s(AssetManager assetManager, String str, String str2, boolean z10) {
        C13702E.j(str, "folder name");
        C13702E.j(str2, "face name");
        TextureKey textureKey = new TextureKey(String.format("Textures/skies/star-maps/%s/%s_%s.png", str, str, str2), z10);
        textureKey.setGenerateMips(true);
        return assetManager.loadTexture(textureKey);
    }

    public static Texture t(AssetManager assetManager, String str, boolean z10) {
        C13702E.j(str, "path");
        TextureKey textureKey = new TextureKey(str, false);
        textureKey.setGenerateMips(z10);
        return assetManager.loadTexture(textureKey);
    }
}
