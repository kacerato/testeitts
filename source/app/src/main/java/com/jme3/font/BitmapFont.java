package com.jme3.font;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.material.Material;
import java.io.IOException;

public class BitmapFont implements Savable {
    private BitmapCharacterSet charSet;
    private GlyphParser glyphParser;
    private Material[] pages;
    private boolean rightToLeft = false;

    public enum Align {
        Left,
        Center,
        Right
    }

    public enum VAlign {
        Top,
        Center,
        Bottom
    }

    private int findKerningAmount(int i10, int i11) {
        BitmapCharacter character = this.charSet.getCharacter(i10);
        if (character == null) {
            return 0;
        }
        return character.getKerning(i11);
    }

    public BitmapText createLabel(String str) {
        BitmapText bitmapText = new BitmapText(this);
        bitmapText.setSize(getCharSet().getRenderedSize());
        bitmapText.setText(str);
        return bitmapText;
    }

    public BitmapCharacterSet getCharSet() {
        return this.charSet;
    }

    public float getCharacterAdvance(char c10, char c11, float f10) {
        if (this.charSet.getCharacter(c10) == null) {
            return 0.0f;
        }
        return (r2.getXAdvance() * f10) + (r2.getKerning(c11) * f10);
    }

    public GlyphParser getGlyphParser() {
        return this.glyphParser;
    }

    public float getLineHeight(StringBlock stringBlock) {
        return this.charSet.getLineHeight() * (stringBlock.getSize() / this.charSet.getRenderedSize());
    }

    public float getLineWidth(CharSequence charSequence) {
        int i10;
        GlyphParser glyphParser = this.glyphParser;
        if (glyphParser != null) {
            charSequence = glyphParser.parse(charSequence);
        }
        float f10 = 0.0f;
        float f11 = 0.0f;
        int i11 = 0;
        boolean z10 = true;
        while (i11 < charSequence.length()) {
            char charAt = charSequence.charAt(i11);
            if (charAt == '\n') {
                f10 = Math.max(f10, f11);
                f11 = 0.0f;
                z10 = true;
            } else {
                if (this.charSet.getCharacter(charAt) != null) {
                    if (charAt != '\\' || i11 >= charSequence.length() - 1 || charSequence.charAt(i11 + 1) != '#' || (((i10 = i11 + 5) >= charSequence.length() || charSequence.charAt(i10) != '#') && ((i10 = i11 + 8) >= charSequence.length() || charSequence.charAt(i10) != '#'))) {
                        if (z10) {
                            if (!this.rightToLeft) {
                                f11 -= r9.getXOffset() * 1.0f;
                            }
                            z10 = false;
                        } else {
                            f11 += findKerningAmount(0, charAt) * 1.0f;
                        }
                        float xAdvance = r9.getXAdvance() * 1.0f;
                        if (i11 == charSequence.length() - 1 || charSequence.charAt(i11 + 1) == '\n') {
                            if (this.rightToLeft) {
                                f11 = (f11 + xAdvance) - (r9.getXOffset() * 1.0f);
                            } else {
                                f11 += r9.getWidth() * 1.0f;
                                xAdvance = r9.getXOffset() * 1.0f;
                            }
                        }
                        f11 += xAdvance;
                    } else {
                        i11 = i10;
                    }
                }
            }
            i11++;
        }
        return Math.max(f10, f11);
    }

    public Material getPage(int i10) {
        return this.pages[i10];
    }

    public int getPageSize() {
        return this.pages.length;
    }

    public float getPreferredSize() {
        return getCharSet().getRenderedSize();
    }

    public boolean isRightToLeft() {
        return this.rightToLeft;
    }

    public void merge(BitmapFont bitmapFont) {
        this.charSet.merge(bitmapFont.charSet);
        Material[] materialArr = this.pages;
        int length = materialArr.length;
        int length2 = bitmapFont.pages.length;
        Material[] materialArr2 = new Material[length + length2];
        System.arraycopy(materialArr, 0, materialArr2, 0, length);
        System.arraycopy(bitmapFont.pages, 0, materialArr2, length, length2);
        this.pages = materialArr2;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.charSet = (BitmapCharacterSet) capsule.readSavable("charSet", null);
        Savable[] readSavableArray = capsule.readSavableArray("pages", null);
        Material[] materialArr = new Material[readSavableArray.length];
        this.pages = materialArr;
        System.arraycopy(readSavableArray, 0, materialArr, 0, materialArr.length);
        this.rightToLeft = capsule.readBoolean("rightToLeft", false);
        this.glyphParser = (GlyphParser) capsule.readSavable("glyphParser", null);
    }

    public void setCharSet(BitmapCharacterSet bitmapCharacterSet) {
        this.charSet = bitmapCharacterSet;
    }

    public void setGlyphParser(GlyphParser glyphParser) {
        this.glyphParser = glyphParser;
    }

    public void setPages(Material[] materialArr) {
        this.pages = materialArr;
        this.charSet.setPageSize(materialArr.length);
    }

    public void setRightToLeft(boolean z10) {
        this.rightToLeft = z10;
    }

    public void setStyle(int i10) {
        this.charSet.setStyle(i10);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.charSet, "charSet", (Savable) null);
        capsule.write(this.pages, "pages", (Savable[]) null);
        capsule.write(this.rightToLeft, "rightToLeft", false);
        capsule.write(this.glyphParser, "glyphParser", (Savable) null);
    }
}
