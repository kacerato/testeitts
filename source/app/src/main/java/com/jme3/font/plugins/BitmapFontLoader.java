package com.jme3.font.plugins;

import android.content.ContentResolver;
import com.ardor3d.util.export.xml.XMLExporter;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.AssetManager;
import com.jme3.asset.TextureKey;
import com.jme3.font.BitmapCharacter;
import com.jme3.font.BitmapCharacterSet;
import com.jme3.font.BitmapFont;
import com.jme3.material.Material;
import com.jme3.material.MaterialDef;
import com.jme3.material.RenderState;
import com.jme3.texture.Texture;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class BitmapFontLoader implements AssetLoader {
    private BitmapFont load(AssetManager assetManager, String str, InputStream inputStream) throws IOException {
        MaterialDef materialDef = (MaterialDef) assetManager.loadAsset(new AssetKey("Common/MatDefs/Misc/Unshaded.j3md"));
        BitmapCharacterSet bitmapCharacterSet = new BitmapCharacterSet();
        BitmapFont bitmapFont = new BitmapFont();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        bitmapFont.setCharSet(bitmapCharacterSet);
        Material[] materialArr = null;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return bitmapFont;
            }
            String[] split = readLine.split("[\\s=]+");
            int i10 = 0;
            int i11 = 1;
            if (split[0].equals("info")) {
                while (i11 < split.length) {
                    if (split[i11].equals(XMLExporter.ATTRIBUTE_SIZE)) {
                        bitmapCharacterSet.setRenderedSize(Integer.parseInt(split[i11 + 1]));
                    }
                    i11++;
                }
            } else if (split[0].equals("common")) {
                while (i11 < split.length) {
                    String str2 = split[i11];
                    if (str2.equals("lineHeight")) {
                        bitmapCharacterSet.setLineHeight(Integer.parseInt(split[i11 + 1]));
                    } else if (str2.equals("base")) {
                        bitmapCharacterSet.setBase(Integer.parseInt(split[i11 + 1]));
                    } else if (str2.equals("scaleW")) {
                        bitmapCharacterSet.setWidth(Integer.parseInt(split[i11 + 1]));
                    } else if (str2.equals("scaleH")) {
                        bitmapCharacterSet.setHeight(Integer.parseInt(split[i11 + 1]));
                    } else if (str2.equals("pages")) {
                        materialArr = new Material[Integer.parseInt(split[i11 + 1])];
                        bitmapFont.setPages(materialArr);
                    }
                    i11++;
                }
            } else if (split[0].equals("page")) {
                int i12 = -1;
                Texture texture = null;
                for (int i13 = 1; i13 < split.length; i13++) {
                    String str3 = split[i13];
                    if (str3.equals("id")) {
                        i12 = Integer.parseInt(split[i13 + 1]);
                    } else if (str3.equals(ContentResolver.SCHEME_FILE)) {
                        String str4 = split[i13 + 1];
                        if (str4.startsWith(JavadocConstants.ANCHOR_PREFIX_END)) {
                            str4 = str4.substring(1, str4.length() - 1);
                        }
                        TextureKey textureKey = new TextureKey(str + str4, true);
                        textureKey.setGenerateMips(false);
                        texture = assetManager.loadTexture(textureKey);
                        texture.setMagFilter(Texture.MagFilter.Bilinear);
                        texture.setMinFilter(Texture.MinFilter.BilinearNoMipMaps);
                    }
                }
                if (i12 >= 0 && texture != null) {
                    Material material = new Material(materialDef);
                    material.setTexture("ColorMap", texture);
                    material.setBoolean("VertexColor", true);
                    material.getAdditionalRenderState().setBlendMode(RenderState.BlendMode.Alpha);
                    materialArr[i12] = material;
                }
            } else if (split[0].equals("char")) {
                BitmapCharacter bitmapCharacter = null;
                while (i11 < split.length) {
                    String str5 = split[i11];
                    if (str5.equals("id")) {
                        int parseInt = Integer.parseInt(split[i11 + 1]);
                        BitmapCharacter bitmapCharacter2 = new BitmapCharacter();
                        bitmapCharacterSet.addCharacter(parseInt, bitmapCharacter2);
                        bitmapCharacter = bitmapCharacter2;
                    } else if (str5.equals("x")) {
                        bitmapCharacter.setX(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("y")) {
                        bitmapCharacter.setY(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("width")) {
                        bitmapCharacter.setWidth(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("height")) {
                        bitmapCharacter.setHeight(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("xoffset")) {
                        bitmapCharacter.setXOffset(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("yoffset")) {
                        bitmapCharacter.setYOffset(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("xadvance")) {
                        bitmapCharacter.setXAdvance(Integer.parseInt(split[i11 + 1]));
                    } else if (str5.equals("page")) {
                        bitmapCharacter.setPage(Integer.parseInt(split[i11 + 1]));
                    }
                    i11++;
                }
            } else if (split[0].equals("kerning")) {
                int i14 = 0;
                int i15 = 0;
                for (int i16 = 1; i16 < split.length; i16++) {
                    if (split[i16].equals("first")) {
                        i10 = Integer.parseInt(split[i16 + 1]);
                    } else if (split[i16].equals("second")) {
                        i14 = Integer.parseInt(split[i16 + 1]);
                    } else if (split[i16].equals("amount")) {
                        i15 = Integer.parseInt(split[i16 + 1]);
                    }
                }
                bitmapCharacterSet.getCharacter(i10).addKerning(i14, i15);
            }
        }
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        InputStream inputStream;
        try {
            inputStream = assetInfo.openStream();
            try {
                BitmapFont load = load(assetInfo.getManager(), assetInfo.getKey().getFolder(), inputStream);
                if (inputStream != null) {
                    inputStream.close();
                }
                return load;
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
}
