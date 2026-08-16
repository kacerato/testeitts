package com.jme3.material.plugins;

import b3.s;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.AssetManager;
import com.jme3.asset.AssetNotFoundException;
import com.jme3.asset.MaterialKey;
import com.jme3.asset.TextureKey;
import com.jme3.material.MatParam;
import com.jme3.material.Material;
import com.jme3.material.MaterialDef;
import com.jme3.material.RenderState;
import com.jme3.material.TechniqueDef;
import com.jme3.material.logic.DefaultTechniqueDefLogic;
import com.jme3.material.logic.MultiPassLightingLogic;
import com.jme3.material.logic.SinglePassAndImageBasedLightingLogic;
import com.jme3.material.logic.SinglePassLightingLogic;
import com.jme3.material.logic.StaticPassLightingLogic;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.shader.DefineList;
import com.jme3.shader.Shader;
import com.jme3.shader.VarType;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.image.ColorSpace;
import com.jme3.util.PlaceholderAssets;
import com.jme3.util.blockparser.BlockLanguageParser;
import com.jme3.util.blockparser.Statement;
import com.jme3.util.clone.Cloner;
import gf.C13356a;
import java.io.IOException;
import java.io.InputStream;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.jdt.internal.core.JavadocConstants;
import yd.C16181m;

public class J3MLoader implements AssetLoader {
    private static final Logger logger = Logger.getLogger(J3MLoader.class.getName());
    private static final String whitespacePattern = "\\p{javaWhitespace}+";
    private AssetManager assetManager;
    private AssetKey key;
    private Material material;
    private MaterialDef materialDef;
    private ShaderNodeLoaderDelegate nodesLoaderDelegate;
    private RenderState renderState;
    private TechniqueDef technique;
    boolean isUseNodes = false;
    int langSize = 0;
    private final ArrayList<String> presetDefines = new ArrayList<>();
    private final List<EnumMap<Shader.ShaderType, String>> shaderLanguages = new ArrayList();
    private final EnumMap<Shader.ShaderType, String> shaderNames = new EnumMap<>(Shader.ShaderType.class);

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$material$TechniqueDef$LightMode;
        static final int[] $SwitchMap$com$jme3$shader$VarType;

        static {
            int[] iArr = new int[TechniqueDef.LightMode.values().length];
            $SwitchMap$com$jme3$material$TechniqueDef$LightMode = iArr;
            try {
                iArr[TechniqueDef.LightMode.Disable.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$material$TechniqueDef$LightMode[TechniqueDef.LightMode.MultiPass.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$material$TechniqueDef$LightMode[TechniqueDef.LightMode.SinglePass.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$material$TechniqueDef$LightMode[TechniqueDef.LightMode.StaticPass.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$material$TechniqueDef$LightMode[TechniqueDef.LightMode.SinglePassAndImageBased.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[VarType.values().length];
            $SwitchMap$com$jme3$shader$VarType = iArr2;
            try {
                iArr2[VarType.Texture3D.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.TextureArray.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.TextureCubeMap.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Float.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector2.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector3.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector4.ordinal()] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Int.ordinal()] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Boolean.ordinal()] = 9;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public enum TextureOption {
        Min {
            @Override
            public void applyToTexture(String str, Texture texture) {
                texture.setMinFilter(Texture.MinFilter.valueOf(str));
            }

            @Override
            public void applyToTextureKey(String str, TextureKey textureKey) {
                textureKey.setGenerateMips(Texture.MinFilter.valueOf(str).usesMipMapLevels());
            }
        },
        Mag {
            @Override
            public void applyToTexture(String str, Texture texture) {
                texture.setMagFilter(Texture.MagFilter.valueOf(str));
            }
        },
        Wrap {
            @Override
            public void applyToTexture(String str, Texture texture) {
                int indexOf = str.indexOf(ConstantDescs.DEFAULT_NAME);
                if (indexOf < str.length() - 2) {
                    texture.setWrap(Texture.WrapMode.valueOf(str));
                    return;
                }
                texture.setWrap(Texture.WrapAxis.valueOf(str.substring(indexOf + 1)), Texture.WrapMode.valueOf(str.substring(0, indexOf)));
            }
        },
        Repeat {
            @Override
            public void applyToTexture(String str, Texture texture) {
                TextureOption.Wrap.applyToTexture("Repeat", texture);
            }
        },
        Flip {
            @Override
            public void applyToTextureKey(String str, TextureKey textureKey) {
                textureKey.setFlipY(true);
            }
        };

        public static TextureOption getTextureOption(String str) {
            for (TextureOption textureOption : values()) {
                if (str.startsWith(textureOption.name())) {
                    return textureOption;
                }
            }
            return null;
        }

        public void applyToTexture(String str, Texture texture) {
        }

        public void applyToTextureKey(String str, TextureKey textureKey) {
        }

        public String getOptionValue(String str) {
            return str.substring(name().length());
        }

        TextureOption(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class TextureOptionValue {
        private final TextureOption textureOption;
        private final String value;

        public TextureOptionValue(TextureOption textureOption, String str) {
            this.textureOption = textureOption;
            this.value = str;
        }

        public void applyToTexture(Texture texture) {
            this.textureOption.applyToTexture(this.value, texture);
        }

        public void applyToTextureKey(TextureKey textureKey) {
            this.textureOption.applyToTextureKey(this.value, textureKey);
        }
    }

    private static String createShaderPrologue(List<String> list) {
        DefineList defineList = new DefineList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            defineList.set(i10, 1);
        }
        StringBuilder sb2 = new StringBuilder();
        defineList.generateSource(sb2, list, null);
        return sb2.toString();
    }

    private boolean isTexturePathDeclaredTheTraditionalWay(List<TextureOptionValue> list, String str) {
        if (!str.startsWith("Flip Repeat ") && !str.startsWith("Flip ") && !str.startsWith("Repeat ") && !str.startsWith("Repeat Flip ")) {
            return false;
        }
        if (list.size() == 1 && (list.get(0).textureOption == TextureOption.Flip || list.get(0).textureOption == TextureOption.Repeat)) {
            return true;
        }
        if (list.size() == 2 && list.get(0).textureOption == TextureOption.Flip && list.get(1).textureOption == TextureOption.Repeat) {
            return true;
        }
        return list.size() == 2 && list.get(0).textureOption == TextureOption.Repeat && list.get(1).textureOption == TextureOption.Flip;
    }

    private void loadFromRoot(List<Statement> list) throws IOException {
        String trim;
        boolean z10;
        if (list.size() == 2) {
            String line = list.get(0).getLine();
            if (!line.startsWith("Exception")) {
                throw new IOException("In multiroot material, expected first statement to be 'Exception'");
            }
            throw new AssetLoadException(line.substring(10));
        }
        if (list.size() != 1) {
            throw new IOException("Too many roots in J3M/J3MD file");
        }
        Statement statement = list.get(0);
        String line2 = statement.getLine();
        if (line2.startsWith("MaterialDef")) {
            trim = line2.substring(12).trim();
            z10 = false;
        } else {
            if (!line2.startsWith("Material")) {
                throw new IOException("Specified file is not a Material file");
            }
            trim = line2.substring(9).trim();
            z10 = true;
        }
        String[] split = trim.split(s.f32937c, 2);
        if (trim.equals("")) {
            throw new MatParseException("Material name cannot be empty", statement);
        }
        if (split.length == 2) {
            if (!z10) {
                throw new MatParseException("Must use 'Material' when extending.", statement);
            }
            String trim2 = split[1].trim();
            MaterialDef materialDef = (MaterialDef) this.assetManager.loadAsset(new AssetKey(trim2));
            if (materialDef == null) {
                throw new MatParseException("Extended material " + trim2 + " cannot be found.", statement);
            }
            Material material = new Material(materialDef);
            this.material = material;
            material.setKey(this.key);
            this.material.setName(split[0].trim());
        } else {
            if (split.length != 1) {
                throw new MatParseException("Cannot use colon in material name/path", statement);
            }
            if (z10) {
                throw new MatParseException("Expected ':', got '{'", statement);
            }
            MaterialDef materialDef2 = new MaterialDef(this.assetManager, trim);
            this.materialDef = materialDef2;
            materialDef2.setAssetName(this.key.getName());
        }
        for (Statement statement2 : statement.getContents()) {
            String str = statement2.getLine().split("[ \\{]")[0];
            if (z10) {
                if (str.equals("MaterialParameters")) {
                    readExtendingMaterialParams(statement2.getContents());
                } else if (str.equals("AdditionalRenderState")) {
                    readAdditionalRenderState(statement2.getContents());
                } else if (str.equals("Transparent")) {
                    readTransparentStatement(statement2.getLine());
                } else if (str.equals("ReceivesShadows")) {
                    readReceivesShadowsStatement(statement2.getLine());
                }
            } else if (str.equals("Technique")) {
                readTechnique(statement2);
            } else {
                if (!str.equals("MaterialParameters")) {
                    throw new MatParseException("Expected material statement, got '" + str + "'", statement2);
                }
                readMaterialParams(statement2.getContents());
            }
        }
    }

    private boolean parseBoolean(String str) {
        str.hashCode();
        if (str.equals("On")) {
            return true;
        }
        if (str.equals("Off")) {
            return false;
        }
        throw new IllegalArgumentException();
    }

    private List<TextureOptionValue> parseTextureOptions(List<String> list) {
        ArrayList arrayList = new ArrayList();
        if (!list.isEmpty() && list.size() != 1) {
            for (int i10 = 0; i10 < list.size() - 1; i10++) {
                String str = list.get(i10);
                TextureOption textureOption = TextureOption.getTextureOption(str);
                if (textureOption == null && !str.contains(C16181m.f130232i) && !str.contains("/") && !list.get(0).equals("Flip") && !list.get(0).equals("Repeat")) {
                    logger.log(Level.WARNING, "Unknown texture option \"{0}\" encountered for \"{1}\" in material \"{2}\"", new Object[]{str, this.key, this.material.getKey().getName()});
                } else if (textureOption != null) {
                    arrayList.add(new TextureOptionValue(textureOption, textureOption.getOptionValue(str)));
                }
            }
        }
        return arrayList;
    }

    private Texture parseTextureType(VarType varType, String str) {
        TextureKey textureKey;
        TextureKey textureKey2;
        boolean z10;
        List<String> list = tokenizeTextureValue(str);
        List<TextureOptionValue> parseTextureOptions = parseTextureOptions(list);
        Texture texture = null;
        if (list.size() == 1) {
            textureKey2 = new TextureKey(list.get(0), false);
            textureKey2.setGenerateMips(true);
        } else {
            String trim = str.trim();
            if (isTexturePathDeclaredTheTraditionalWay(parseTextureOptions, trim)) {
                if (trim.startsWith("Flip Repeat ") || trim.startsWith("Repeat Flip ")) {
                    trim = trim.substring(12).trim();
                } else if (trim.startsWith("Flip ")) {
                    trim = trim.substring(5).trim();
                } else {
                    if (trim.startsWith("Repeat ")) {
                        trim = trim.substring(7).trim();
                    }
                    z10 = false;
                    if (!trim.startsWith(JavadocConstants.ANCHOR_PREFIX_END) || trim.startsWith("'")) {
                        trim = trim.substring(1);
                    }
                    if (!trim.endsWith(JavadocConstants.ANCHOR_PREFIX_END) || trim.endsWith("'")) {
                        trim = trim.substring(0, trim.length() - 1);
                    }
                    textureKey = new TextureKey(trim, z10);
                }
                z10 = true;
                if (!trim.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                }
                trim = trim.substring(1);
                if (!trim.endsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                }
                trim = trim.substring(0, trim.length() - 1);
                textureKey = new TextureKey(trim, z10);
            } else {
                textureKey = null;
            }
            textureKey2 = textureKey == null ? new TextureKey(list.get(list.size() - 1), false) : textureKey;
            textureKey2.setGenerateMips(true);
            if (!parseTextureOptions.isEmpty()) {
                Iterator<TextureOptionValue> it = parseTextureOptions.iterator();
                while (it.hasNext()) {
                    it.next().applyToTextureKey(textureKey2);
                }
            }
        }
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[varType.ordinal()];
        if (i10 == 1) {
            textureKey2.setTextureTypeHint(Texture.Type.ThreeDimensional);
        } else if (i10 == 2) {
            textureKey2.setTextureTypeHint(Texture.Type.TwoDimensionalArray);
        } else if (i10 == 3) {
            textureKey2.setTextureTypeHint(Texture.Type.CubeMap);
        }
        try {
            texture = this.assetManager.loadTexture(textureKey2);
        } catch (AssetNotFoundException unused) {
            logger.log(Level.WARNING, "Cannot locate {0} for material {1}", new Object[]{textureKey2, this.key});
        }
        if (texture == null) {
            texture = new Texture2D(PlaceholderAssets.getPlaceholderImage(this.assetManager));
            texture.setKey(textureKey2);
            texture.setName(textureKey2.getName());
        }
        if (!parseTextureOptions.isEmpty()) {
            Iterator<TextureOptionValue> it2 = parseTextureOptions.iterator();
            while (it2.hasNext()) {
                it2.next().applyToTexture(texture);
            }
        }
        return texture;
    }

    private void readAdditionalRenderState(List<Statement> list) throws IOException {
        this.renderState = this.material.getAdditionalRenderState();
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            readRenderStateStatement(it.next());
        }
        this.renderState = null;
    }

    private boolean readBooleanStatement(String str, String str2) throws IOException {
        String[] split = str.split(whitespacePattern);
        if (split.length == 2) {
            return parseBoolean(split[1]);
        }
        throw new IOException(str2 + " statement syntax incorrect");
    }

    private void readDefine(String str) throws IOException {
        String[] split = str.split(s.f32937c);
        if (split.length == 1) {
            this.presetDefines.add(split[0].trim());
        } else {
            if (split.length != 2) {
                throw new IOException("Define syntax incorrect");
            }
            String trim = split[0].trim();
            String trim2 = split[1].trim();
            MatParam materialParam = this.materialDef.getMaterialParam(trim2);
            if (materialParam == null) {
                logger.log(Level.WARNING, "In technique ''{0}'':\nDefine ''{1}'' mapped to non-existent material parameter ''{2}'', ignoring.", new Object[]{this.technique.getName(), trim, trim2});
            } else {
                this.technique.addShaderParamDefine(trim2, materialParam.getVarType(), trim);
            }
        }
    }

    private void readDefines(List<Statement> list) throws IOException {
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            readDefine(it.next().getLine());
        }
    }

    private void readExtendingMaterialParams(List<Statement> list) throws IOException {
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            readValueParam(it.next().getLine());
        }
    }

    private void readForcedRenderState(List<Statement> list) throws IOException {
        this.renderState = new RenderState();
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            readRenderStateStatement(it.next());
        }
        this.technique.setForcedRenderState(this.renderState);
        this.renderState = null;
    }

    private void readLightMode(String str) throws IOException {
        String[] split = str.split(whitespacePattern);
        if (split.length != 2) {
            throw new IOException("LightMode statement syntax incorrect");
        }
        this.technique.setLightMode(TechniqueDef.LightMode.valueOf(split[1]));
    }

    private void readLightSpace(String str) throws IOException {
        String[] split = str.split(whitespacePattern);
        if (split.length != 2) {
            throw new IOException("LightSpace statement syntax incorrect");
        }
        this.technique.setLightSpace(TechniqueDef.LightSpace.valueOf(split[1]));
    }

    private void readMaterialParams(List<Statement> list) throws IOException {
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            readParam(it.next().getLine());
        }
    }

    private void readParam(String str) throws IOException {
        String trim;
        ColorSpace colorSpace;
        String[] split = str.split(s.f32937c);
        if (split.length == 1) {
            trim = null;
        } else {
            if (split.length != 2) {
                throw new IOException("Parameter statement syntax incorrect");
            }
            str = split[0].trim();
            trim = split[1].trim();
        }
        if (str.endsWith("-LINEAR")) {
            colorSpace = ColorSpace.Linear;
            str = str.substring(0, str.length() - 7);
        } else {
            colorSpace = null;
        }
        int indexOf = str.indexOf("(");
        if (indexOf != -1) {
            str.substring(indexOf + 1, str.indexOf(")", indexOf)).trim();
            str = str.substring(0, indexOf);
        }
        String[] split2 = str.split(whitespacePattern);
        if (split2.length != 2) {
            throw new IOException("Parameter statement syntax incorrect");
        }
        VarType valueOf = split2[0].equals(SerializableShaderEntry.f81153g) ? VarType.Vector4 : VarType.valueOf(split2[0]);
        String str2 = split2[1];
        Object readValue = trim != null ? readValue(valueOf, trim) : null;
        if (valueOf.isTextureType()) {
            this.materialDef.addMaterialParamTexture(valueOf, str2, colorSpace, (Texture) readValue);
        } else {
            this.materialDef.addMaterialParam(valueOf, str2, readValue);
        }
    }

    private void readReceivesShadowsStatement(String str) throws IOException {
        this.material.setReceivesShadows(readBooleanStatement(str, "ReceivesShadows"));
    }

    private void readRenderState(List<Statement> list) throws IOException {
        this.renderState = new RenderState();
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            readRenderStateStatement(it.next());
        }
        this.technique.setRenderState(this.renderState);
        this.renderState = null;
    }

    private void readRenderStateStatement(Statement statement) throws IOException {
        String[] split = statement.getLine().split(whitespacePattern);
        if (split[0].equals("Wireframe")) {
            this.renderState.setWireframe(parseBoolean(split[1]));
            return;
        }
        if (split[0].equals("FaceCull")) {
            this.renderState.setFaceCullMode(RenderState.FaceCullMode.valueOf(split[1]));
            return;
        }
        if (split[0].equals("DepthWrite")) {
            this.renderState.setDepthWrite(parseBoolean(split[1]));
            return;
        }
        if (split[0].equals("DepthTest")) {
            this.renderState.setDepthTest(parseBoolean(split[1]));
            return;
        }
        if (split[0].equals("Blend")) {
            this.renderState.setBlendMode(RenderState.BlendMode.valueOf(split[1]));
            return;
        }
        if (split[0].equals("BlendEquation")) {
            this.renderState.setBlendEquation(RenderState.BlendEquation.valueOf(split[1]));
            return;
        }
        if (split[0].equals("BlendEquationAlpha")) {
            this.renderState.setBlendEquationAlpha(RenderState.BlendEquationAlpha.valueOf(split[1]));
            return;
        }
        if (split[0].equals("AlphaTestFalloff")) {
            return;
        }
        if (split[0].equals("PolyOffset")) {
            this.renderState.setPolyOffset(Float.parseFloat(split[1]), Float.parseFloat(split[2]));
        } else {
            if (split[0].equals("ColorWrite")) {
                this.renderState.setColorWrite(parseBoolean(split[1]));
                return;
            }
            if (split[0].equals("PointSprite")) {
                return;
            }
            if (split[0].equals("DepthFunc")) {
                this.renderState.setDepthFunc(RenderState.TestFunction.valueOf(split[1]));
            } else {
                if (split[0].equals("AlphaFunc")) {
                    return;
                }
                if (!split[0].equals("LineWidth")) {
                    throw new MatParseException((String) null, split[0], statement);
                }
                this.renderState.setLineWidth(Float.parseFloat(split[1]));
            }
        }
    }

    private void readShaderDefinition(Shader.ShaderType shaderType, String str, String... strArr) {
        this.shaderNames.put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) str);
        int i10 = this.langSize;
        if (i10 != 0 && i10 != strArr.length) {
            throw new AssetLoadException("Technique " + this.technique.getName() + " must have the same number of languages for each shader type.");
        }
        this.langSize = strArr.length;
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (i11 >= this.shaderLanguages.size()) {
                this.shaderLanguages.add(new EnumMap<>(Shader.ShaderType.class));
            }
            this.shaderLanguages.get(i11).put((EnumMap<Shader.ShaderType, String>) shaderType, (Shader.ShaderType) strArr[i11]);
        }
    }

    private void readShaderStatement(String str) throws IOException {
        String[] split = str.split(s.f32937c);
        if (split.length != 2) {
            throw new IOException("Shader statement syntax incorrect" + str);
        }
        String[] split2 = split[0].split(whitespacePattern);
        for (Shader.ShaderType shaderType : Shader.ShaderType.values()) {
            if (split2[0].equals(shaderType.toString() + "Shader")) {
                readShaderDefinition(shaderType, split[1].trim(), (String[]) Arrays.copyOfRange(split2, 1, split2.length));
            }
        }
    }

    private void readShadowMode(String str) throws IOException {
        String[] split = str.split(whitespacePattern);
        if (split.length != 2) {
            throw new IOException("ShadowMode statement syntax incorrect");
        }
        this.technique.setShadowMode(TechniqueDef.ShadowMode.valueOf(split[1]));
    }

    private void readTechnique(Statement statement) throws IOException {
        String str;
        this.isUseNodes = false;
        String[] split = statement.getLine().split(whitespacePattern);
        Cloner cloner = new Cloner();
        if (split.length == 1) {
            str = "Default";
        } else {
            if (split.length != 2) {
                throw new IOException("Technique statement syntax incorrect");
            }
            str = split[1];
        }
        this.technique = new TechniqueDef(str, (this.materialDef.getAssetName() + "@" + str).hashCode());
        Iterator<Statement> it = statement.getContents().iterator();
        while (it.hasNext()) {
            readTechniqueStatement(it.next());
        }
        this.technique.setShaderPrologue(createShaderPrologue(this.presetDefines));
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$material$TechniqueDef$LightMode[this.technique.getLightMode().ordinal()];
        if (i10 == 1) {
            TechniqueDef techniqueDef = this.technique;
            techniqueDef.setLogic(new DefaultTechniqueDefLogic(techniqueDef));
        } else if (i10 == 2) {
            this.technique.setLogic(new MultiPassLightingLogic(this.technique));
        } else if (i10 == 3) {
            this.technique.setLogic(new SinglePassLightingLogic(this.technique));
        } else if (i10 == 4) {
            TechniqueDef techniqueDef2 = this.technique;
            techniqueDef2.setLogic(new StaticPassLightingLogic(techniqueDef2));
        } else {
            if (i10 != 5) {
                throw new IOException("Light mode not supported:" + ((Object) this.technique.getLightMode()));
            }
            this.technique.setLogic(new SinglePassAndImageBasedLightingLogic(this.technique));
        }
        ArrayList arrayList = new ArrayList();
        if (this.isUseNodes) {
            this.technique.setShaderFile(this.technique.hashCode() + "", this.technique.hashCode() + "", "GLSL100", "GLSL100");
            arrayList.add(this.technique);
        } else {
            if (!this.shaderNames.containsKey(Shader.ShaderType.Vertex) || !this.shaderNames.containsKey(Shader.ShaderType.Fragment)) {
                this.technique = null;
                this.shaderLanguages.clear();
                this.shaderNames.clear();
                this.presetDefines.clear();
                this.langSize = 0;
                Logger logger2 = logger;
                Level level = Level.WARNING;
                logger2.log(level, "Fixed function technique was ignored");
                logger2.log(level, "Fixed function technique ''{0}'' was ignored for material {1}", new Object[]{str, this.key});
                return;
            }
            if (this.shaderLanguages.size() > 1) {
                for (int i11 = 1; i11 < this.shaderLanguages.size(); i11++) {
                    cloner.clearIndex();
                    TechniqueDef techniqueDef3 = (TechniqueDef) cloner.clone(this.technique);
                    techniqueDef3.setShaderFile(this.shaderNames, this.shaderLanguages.get(i11));
                    arrayList.add(techniqueDef3);
                }
            }
            this.technique.setShaderFile(this.shaderNames, this.shaderLanguages.get(0));
            arrayList.add(this.technique);
        }
        Iterator<E> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.materialDef.addTechniqueDef((TechniqueDef) it2.next());
        }
        this.technique = null;
        this.langSize = 0;
        this.shaderLanguages.clear();
        this.shaderNames.clear();
        this.presetDefines.clear();
    }

    private void readTechniqueStatement(Statement statement) throws IOException {
        String[] split = statement.getLine().split("[ \\{]");
        if (split[0].equals("VertexShader") || split[0].equals("FragmentShader") || split[0].equals("GeometryShader") || split[0].equals("TessellationControlShader") || split[0].equals("TessellationEvaluationShader")) {
            readShaderStatement(statement.getLine());
            return;
        }
        if (split[0].equals("LightMode")) {
            readLightMode(statement.getLine());
            return;
        }
        if (split[0].equals("LightSpace")) {
            readLightSpace(statement.getLine());
            return;
        }
        if (split[0].equals("ShadowMode")) {
            readShadowMode(statement.getLine());
            return;
        }
        if (split[0].equals("WorldParameters")) {
            readWorldParams(statement.getContents());
            return;
        }
        if (split[0].equals("RenderState")) {
            readRenderState(statement.getContents());
            return;
        }
        if (split[0].equals("ForcedRenderState")) {
            readForcedRenderState(statement.getContents());
            return;
        }
        if (split[0].equals("Defines")) {
            readDefines(statement.getContents());
            return;
        }
        if (split[0].equals("ShaderNodesDefinitions")) {
            initNodesLoader();
            if (this.isUseNodes) {
                this.nodesLoaderDelegate.readNodesDefinitions(statement.getContents());
                return;
            }
            return;
        }
        if (split[0].equals("VertexShaderNodes")) {
            initNodesLoader();
            if (this.isUseNodes) {
                this.nodesLoaderDelegate.readVertexShaderNodes(statement.getContents());
                return;
            }
            return;
        }
        if (!split[0].equals("FragmentShaderNodes")) {
            if (!split[0].equals("NoRender")) {
                throw new MatParseException((String) null, split[0], statement);
            }
            this.technique.setNoRender(true);
        } else {
            initNodesLoader();
            if (this.isUseNodes) {
                this.nodesLoaderDelegate.readFragmentShaderNodes(statement.getContents());
            }
        }
    }

    private void readTransparentStatement(String str) throws IOException {
        this.material.setTransparent(readBooleanStatement(str, "Transparent"));
    }

    private Object readValue(VarType varType, String str) throws IOException {
        if (varType.isTextureType()) {
            return parseTextureType(varType, str);
        }
        String[] split = str.trim().split(whitespacePattern);
        switch (AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[varType.ordinal()]) {
            case 4:
                if (split.length == 1) {
                    return Float.valueOf(Float.parseFloat(split[0]));
                }
                throw new IOException("Float value parameter must have 1 entry: " + str);
            case 5:
                if (split.length == 2) {
                    return new Vector2f(Float.parseFloat(split[0]), Float.parseFloat(split[1]));
                }
                throw new IOException("Vector2 value parameter must have 2 entries: " + str);
            case 6:
                if (split.length == 3) {
                    return new Vector3f(Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]));
                }
                throw new IOException("Vector3 value parameter must have 3 entries: " + str);
            case 7:
                if (split.length == 4) {
                    return new ColorRGBA(Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]), Float.parseFloat(split[3]));
                }
                throw new IOException("Vector4 value parameter must have 4 entries: " + str);
            case 8:
                if (split.length == 1) {
                    return Integer.valueOf(Integer.parseInt(split[0]));
                }
                throw new IOException("Int value parameter must have 1 entry: " + str);
            case 9:
                if (split.length == 1) {
                    return Boolean.valueOf(Boolean.parseBoolean(split[0]));
                }
                throw new IOException("Boolean value parameter must have 1 entry: " + str);
            default:
                throw new UnsupportedOperationException("Unknown type: " + ((Object) varType));
        }
    }

    private void readValueParam(String str) throws IOException {
        String[] split = str.split(s.f32937c, 2);
        if (split.length != 2) {
            throw new IOException("Value parameter statement syntax incorrect");
        }
        String trim = split[0].trim();
        MatParam materialParam = this.material.getMaterialDef().getMaterialParam(trim);
        if (materialParam == null) {
            throw new IOException("The material parameter: " + trim + " is undefined.");
        }
        Object readValue = readValue(materialParam.getVarType(), split[1]);
        if (materialParam.getVarType().isTextureType()) {
            this.material.setTextureParam(trim, materialParam.getVarType(), (Texture) readValue);
        } else {
            this.material.setParam(trim, materialParam.getVarType(), readValue);
        }
    }

    private void readWorldParams(List<Statement> list) throws IOException {
        Iterator<Statement> it = list.iterator();
        while (it.hasNext()) {
            this.technique.addWorldParam(it.next().getLine());
        }
    }

    private List<String> tokenizeTextureValue(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile("[^\\s\"']+|\"([^\"]*)\"|'([^']*)'").matcher(str.trim());
        while (matcher.find()) {
            if (matcher.group(1) != null) {
                arrayList.add(matcher.group(1));
            } else if (matcher.group(2) != null) {
                arrayList.add(matcher.group(2));
            } else {
                arrayList.add(matcher.group());
            }
        }
        return arrayList;
    }

    public void initNodesLoader() {
        if (this.isUseNodes) {
            return;
        }
        boolean z10 = this.shaderNames.get(Shader.ShaderType.Vertex) == null && this.shaderNames.get(Shader.ShaderType.Fragment) == null;
        this.isUseNodes = z10;
        if (z10) {
            ShaderNodeLoaderDelegate shaderNodeLoaderDelegate = this.nodesLoaderDelegate;
            if (shaderNodeLoaderDelegate == null) {
                this.nodesLoaderDelegate = new ShaderNodeLoaderDelegate();
            } else {
                shaderNodeLoaderDelegate.clear();
            }
            this.nodesLoaderDelegate.setTechniqueDef(this.technique);
            this.nodesLoaderDelegate.setMaterialDef(this.materialDef);
            this.nodesLoaderDelegate.setAssetManager(this.assetManager);
        }
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        this.assetManager = assetInfo.getManager();
        InputStream openStream = assetInfo.openStream();
        try {
            AssetKey key = assetInfo.getKey();
            this.key = key;
            if (key.getExtension().equals("j3m") && !(this.key instanceof MaterialKey)) {
                throw new IOException("Material instances must be loaded via MaterialKey");
            }
            if (this.key.getExtension().equals("j3md") && (this.key instanceof MaterialKey)) {
                throw new IOException("Material definitions must be loaded via AssetKey");
            }
            InputStream a10 = C13356a.a(openStream);
            loadFromRoot(BlockLanguageParser.parse(a10));
            if (a10 != null) {
                a10.close();
            }
            Material material = this.material;
            return material != null ? material : this.materialDef;
        } catch (Throwable th2) {
            if (openStream != null) {
                openStream.close();
            }
            throw th2;
        }
    }

    public MaterialDef loadMaterialDef(List<Statement> list, AssetManager assetManager, AssetKey assetKey) throws IOException {
        this.key = assetKey;
        this.assetManager = assetManager;
        loadFromRoot(list);
        return this.materialDef;
    }
}
