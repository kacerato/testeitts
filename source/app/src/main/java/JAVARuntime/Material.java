package JAVARuntime;

import org.eclipse.jdt.core.JavaCore;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Material.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Material.class
  classes.dex
 */
@ClassCategory(cat = {"Material"})
public final class Material {
    @HideGetSet
    public String getShader() {
        return null;
    }

    @HideGetSet
    public void setShader(String str) {
    }

    public Color getColor(String str) {
        return null;
    }

    public Color findColor(String str) {
        return null;
    }

    public void setColor(String str, Color color) {
    }

    public void setDiffuse(Color color) {
        setColor("diffuse", color);
    }

    public Vector2 getVector2(String str) {
        return null;
    }

    public Vector2 findVector2(String str) {
        return null;
    }

    public void setVector2(String str, Vector2 vector2) {
    }

    public boolean getBoolean(String str) {
        return false;
    }

    public boolean findBoolean(String str) {
        return false;
    }

    public void setBoolean(String str, boolean z10) {
    }

    public void setReceiveLight(boolean z10) {
        setBoolean("receiveLight", z10);
    }

    public float getFloat(String str) {
        return 0.0f;
    }

    public float findFloat(String str) {
        return 0.0f;
    }

    public void setFloat(String str, float f10) {
    }

    public int getInt(String str) {
        return 0;
    }

    public int findInt(String str) {
        return 0;
    }

    public void setInt(String str, int i10) {
    }

    public void setMinimalAlphaIntensity(float f10) {
        setFloat("minimalAlphaIntensity", f10);
    }

    public void setHeightIntensity(float f10) {
        setFloat(com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector.f77444q0, f10);
    }

    public void setUvSize(float f10) {
        setFloat("uvSize", f10);
    }

    public void setAlphaCutout(float f10) {
        setFloat("alphaCutout", f10);
    }

    public void setSpecular(float f10) {
        setFloat("specular", f10);
    }

    public Texture getTexture(String str) {
        return null;
    }

    public Texture findTexture(String str) {
        return null;
    }

    public void setTexture(String str, Texture texture) {
    }

    public void setTextureFile(String str, TextureFile textureFile) {
    }

    public void setAlbedo(Texture texture) {
        setTexture("albedo", texture);
    }

    public void setAlbedo(TextureFile textureFile) {
        setTextureFile("albedo", textureFile);
    }

    public void setNormalMap(Texture texture) {
        setTexture(JavaCore.NORMAL, texture);
    }

    public void setNormalMap(TextureFile textureFile) {
        setTextureFile(JavaCore.NORMAL, textureFile);
    }

    public void setRoughness(Texture texture) {
        setTexture("roughness", texture);
    }

    public void setRoughness(TextureFile textureFile) {
        setTextureFile("roughness", textureFile);
    }

    public void setMetallic(Texture texture) {
        setTexture("metallic", texture);
    }

    public void setMetallic(TextureFile textureFile) {
        setTextureFile("metallic", textureFile);
    }

    public void setAoMap(Texture texture) {
        setTexture("ao", texture);
    }

    public void setAoMap(TextureFile textureFile) {
        setTextureFile("ao", textureFile);
    }

    public void setHeightMap(Texture texture) {
        setTexture("height", texture);
    }

    public void setHeightMap(TextureFile textureFile) {
        setTextureFile("height", textureFile);
    }

    public void setEmissiveMap(Texture texture) {
        setTexture("emissive", texture);
    }

    public void setEmissiveMap(TextureFile textureFile) {
        setTextureFile("emissive", textureFile);
    }

    public void setAlphaMap(Texture texture) {
        setTexture("alpha", texture);
    }

    public void setAlphaMap(TextureFile textureFile) {
        setTextureFile("alpha", textureFile);
    }

    public void setMatcap(Matcap matcap) {
    }

    public void reloadEntries() {
    }

    public String toJson() {
        return "";
    }

    public static Material loadFile(MaterialFile materialFile) {
        return null;
    }
}
