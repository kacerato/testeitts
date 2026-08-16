package com.jme3.scene.plugins;

import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.asset.TextureKey;
import com.jme3.material.Material;
import com.jme3.material.MaterialList;
import com.jme3.material.RenderState;
import com.jme3.math.ColorRGBA;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.util.PlaceholderAssets;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import yd.C16175g;
import yd.C16181m;

public class MTLLoader implements AssetLoader {
    private static final Logger logger = Logger.getLogger(MTLLoader.class.getName());
    protected Texture alphaMap;
    protected AssetManager assetManager;
    protected Texture diffuseMap;
    protected String folderName;
    protected AssetKey key;
    protected MaterialList matList;
    protected String matName;
    protected Texture normalMap;
    protected Scanner scan;
    protected boolean shadeless;
    protected Texture specularMap;
    protected ColorRGBA ambient = new ColorRGBA();
    protected ColorRGBA diffuse = new ColorRGBA();
    protected ColorRGBA specular = new ColorRGBA();
    protected float shininess = 16.0f;
    protected float alpha = 1.0f;
    protected boolean transparent = false;
    protected boolean disallowAmbient = false;
    protected boolean disallowSpecular = false;

    public void createMaterial() {
        Material material;
        float f10 = this.alpha;
        if (f10 < 1.0f && this.transparent) {
            this.diffuse.f81595a = f10;
        }
        if (this.shadeless) {
            material = new Material(this.assetManager, "Common/MatDefs/Misc/Unshaded.j3md");
            material.setColor(SerializableShaderEntry.f81153g, this.diffuse.m1279clone());
            material.setTexture("ColorMap", this.diffuseMap);
        } else {
            material = new Material(this.assetManager, "Common/MatDefs/Light/Lighting.j3md");
            material.setBoolean("UseMaterialColors", true);
            material.setColor("Ambient", this.ambient.m1279clone());
            material.setColor("Diffuse", this.diffuse.m1279clone());
            material.setColor("Specular", this.specular.m1279clone());
            material.setFloat("Shininess", this.shininess);
            Texture texture = this.diffuseMap;
            if (texture != null) {
                material.setTexture("DiffuseMap", texture);
            }
            Texture texture2 = this.specularMap;
            if (texture2 != null) {
                material.setTexture("SpecularMap", texture2);
            }
            Texture texture3 = this.normalMap;
            if (texture3 != null) {
                material.setTexture("NormalMap", texture3);
            }
            Texture texture4 = this.alphaMap;
            if (texture4 != null) {
                material.setTexture("AlphaMap", texture4);
            }
        }
        if (this.transparent) {
            material.setTransparent(true);
            material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
            material.setFloat("AlphaDiscardThreshold", 0.01f);
        }
        material.setName(this.matName);
        this.matList.put(this.matName, material);
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        reset();
        this.key = assetInfo.getKey();
        this.assetManager = assetInfo.getManager();
        this.folderName = assetInfo.getKey().getFolder();
        this.matList = new MaterialList();
        try {
            inputStream = assetInfo.openStream();
            try {
                Scanner scanner = new Scanner(inputStream);
                this.scan = scanner;
                scanner.useLocale(Locale.US);
                do {
                } while (readLine());
                if (inputStream != null) {
                    inputStream.close();
                }
                if (this.matName != null) {
                    createMaterial();
                    resetMaterial();
                }
                return this.matList;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    public Texture loadTexture(String str) {
        String[] split = str.trim().split("\\p{javaWhitespace}+");
        TextureKey textureKey = new TextureKey(this.folderName + new File(split[split.length - 1]).getName());
        textureKey.setGenerateMips(true);
        try {
            Texture loadTexture = this.assetManager.loadTexture(textureKey);
            loadTexture.setWrap(Texture.WrapMode.Repeat);
            return loadTexture;
        } catch (AssetNotFoundException unused) {
            logger.log(Level.WARNING, "Cannot locate {0} for material {1}", new Object[]{textureKey, this.key});
            Texture2D texture2D = new Texture2D(PlaceholderAssets.getPlaceholderImage(this.assetManager));
            texture2D.setWrap(Texture.WrapMode.Repeat);
            texture2D.setKey(textureKey);
            return texture2D;
        }
    }

    public String nextStatement() {
        this.scan.useDelimiter("\n");
        String next = this.scan.next();
        this.scan.useDelimiter("\\p{javaWhitespace}+");
        return next;
    }

    public ColorRGBA readColor() {
        ColorRGBA colorRGBA = new ColorRGBA();
        colorRGBA.set(this.scan.nextFloat(), this.scan.nextFloat(), this.scan.nextFloat(), 1.0f);
        return colorRGBA;
    }

    public boolean readLine() {
        if (!this.scan.hasNext()) {
            return false;
        }
        String lowerCase = this.scan.next().toLowerCase();
        if (lowerCase.startsWith(C16181m.f130230g)) {
            return skipLine();
        }
        if (lowerCase.equals(C16175g.f130187d)) {
            startMaterial(this.scan.next());
        } else if (lowerCase.equals("ka")) {
            this.ambient.set(readColor());
        } else if (lowerCase.equals("kd")) {
            this.diffuse.set(readColor());
        } else if (lowerCase.equals("ks")) {
            this.specular.set(readColor());
        } else if (lowerCase.equals("ns")) {
            float nextFloat = this.scan.nextFloat();
            if (nextFloat >= 1.0f) {
                this.shininess = nextFloat;
                if (this.specular.equals(ColorRGBA.Black)) {
                    this.specular.set(ColorRGBA.White);
                }
            }
        } else if (lowerCase.equals("d") || lowerCase.equals("tr")) {
            float nextFloat2 = this.scan.nextFloat();
            if (nextFloat2 > 0.0f && nextFloat2 < 1.0f) {
                this.alpha = nextFloat2;
                this.transparent = true;
            }
        } else {
            if (lowerCase.equals("map_ka")) {
                return skipLine();
            }
            if (lowerCase.equals("map_kd")) {
                this.diffuseMap = loadTexture(nextStatement());
            } else if (lowerCase.equals("map_bump") || lowerCase.equals("bump")) {
                if (this.normalMap == null) {
                    this.normalMap = loadTexture(nextStatement());
                }
            } else if (lowerCase.equals("map_ks")) {
                Texture loadTexture = loadTexture(nextStatement());
                this.specularMap = loadTexture;
                if (loadTexture != null && this.specular.equals(ColorRGBA.Black)) {
                    this.specular.set(ColorRGBA.White);
                }
            } else if (lowerCase.equals(C16175g.f130198o)) {
                this.alphaMap = loadTexture(this.scan.next());
                this.transparent = true;
            } else {
                if (!lowerCase.equals("illum")) {
                    if (lowerCase.equals("ke") || lowerCase.equals("ni")) {
                        return skipLine();
                    }
                    logger.log(Level.WARNING, "Unknown statement in MTL! {0}", lowerCase);
                    return skipLine();
                }
                int nextInt = this.scan.nextInt();
                if (nextInt == 0) {
                    this.shadeless = true;
                } else if (nextInt == 1) {
                    this.disallowSpecular = true;
                } else if (nextInt == 4 || nextInt == 9 || nextInt == 6 || nextInt == 7) {
                    this.transparent = true;
                }
            }
        }
        return true;
    }

    public void reset() {
        this.scan = null;
        this.matList = null;
        resetMaterial();
    }

    public void resetMaterial() {
        this.ambient.set(ColorRGBA.DarkGray);
        this.diffuse.set(ColorRGBA.LightGray);
        this.specular.set(ColorRGBA.Black);
        this.shininess = 16.0f;
        this.disallowAmbient = false;
        this.disallowSpecular = false;
        this.shadeless = false;
        this.transparent = false;
        this.matName = null;
        this.diffuseMap = null;
        this.specularMap = null;
        this.normalMap = null;
        this.alphaMap = null;
        this.alpha = 1.0f;
    }

    public boolean skipLine() {
        try {
            this.scan.skip(".*\r{0,1}\n");
            return true;
        } catch (NoSuchElementException unused) {
            return false;
        }
    }

    public void startMaterial(String str) {
        if (this.matName != null) {
            createMaterial();
        }
        resetMaterial();
        this.matName = str;
    }
}
