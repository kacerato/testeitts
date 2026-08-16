package com.jme3.font;

import com.jme3.font.BitmapFont;
import com.jme3.material.Material;
import com.jme3.math.ColorRGBA;
import com.jme3.renderer.RenderManager;
import com.jme3.scene.Node;
import com.jme3.util.clone.Cloner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class BitmapText extends Node {
    private StringBlock block;
    private BitmapFont font;
    private Letters letters;
    private boolean needRefresh;
    private BitmapTextPage[] textPages;

    public BitmapText(BitmapFont bitmapFont) {
        this(bitmapFont, bitmapFont.isRightToLeft(), false);
    }

    private void assemble() {
        this.letters.update();
        for (BitmapTextPage bitmapTextPage : this.textPages) {
            bitmapTextPage.assemble(this.letters);
        }
        this.needRefresh = false;
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        super.cloneFields(cloner, obj);
        this.textPages = (BitmapTextPage[]) this.textPages.clone();
        int i10 = 0;
        while (true) {
            BitmapTextPage[] bitmapTextPageArr = this.textPages;
            if (i10 >= bitmapTextPageArr.length) {
                break;
            }
            bitmapTextPageArr[i10] = (BitmapTextPage) cloner.clone(bitmapTextPageArr[i10]);
            i10++;
        }
        StringBlock stringBlock = this.block;
        StringBlock m1269clone = stringBlock != null ? stringBlock.m1269clone() : null;
        this.block = m1269clone;
        this.letters = new Letters(this.font, m1269clone, this.letters.getQuad().isRightToLeft());
    }

    public BitmapFont.Align getAlignment() {
        return this.block.getAlignment();
    }

    public float getAlpha() {
        return this.letters.getBaseAlpha();
    }

    public ColorRGBA getColor() {
        return this.letters.getBaseColor();
    }

    public BitmapFont getFont() {
        return this.font;
    }

    public float getHeight() {
        if (this.needRefresh) {
            assemble();
        }
        float lineHeight = getLineHeight() * this.block.getLineCount();
        Rectangle textBox = this.block.getTextBox();
        return textBox != null ? Math.max(lineHeight, textBox.height) : lineHeight;
    }

    public int getLineCount() {
        if (this.needRefresh) {
            assemble();
        }
        return this.block.getLineCount();
    }

    public float getLineHeight() {
        return this.font.getLineHeight(this.block);
    }

    public float getLineWidth() {
        if (this.needRefresh) {
            assemble();
        }
        Rectangle textBox = this.block.getTextBox();
        return textBox != null ? Math.max(this.letters.getTotalWidth(), textBox.width) : this.letters.getTotalWidth();
    }

    public LineWrapMode getLineWrapMode() {
        return this.block.getLineWrapMode();
    }

    public float getSize() {
        return this.block.getSize();
    }

    public String getText() {
        return this.block.getText();
    }

    public BitmapFont.VAlign getVerticalAlignment() {
        return this.block.getVerticalAlignment();
    }

    public void render(RenderManager renderManager, ColorRGBA colorRGBA) {
        for (BitmapTextPage bitmapTextPage : this.textPages) {
            Material material = bitmapTextPage.getMaterial();
            material.setTexture("ColorMap", bitmapTextPage.getTexture());
            material.render(bitmapTextPage, renderManager);
        }
    }

    public void setAlignment(BitmapFont.Align align) {
        if (this.block.getTextBox() == null && align != BitmapFont.Align.Left) {
            throw new RuntimeException("Bound is not set");
        }
        this.block.setAlignment(align);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setAlpha(float f10) {
        this.letters.setBaseAlpha(f10);
        this.needRefresh = true;
    }

    public void setBox(Rectangle rectangle) {
        this.block.setTextBox(rectangle);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setColor(ColorRGBA colorRGBA) {
        this.letters.setColor(colorRGBA);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setEllipsisChar(char c10) {
        this.block.setEllipsisChar(c10);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setLineWrapMode(LineWrapMode lineWrapMode) {
        if (this.block.getLineWrapMode() != lineWrapMode) {
            this.block.setLineWrapMode(lineWrapMode);
            this.letters.invalidate();
            this.needRefresh = true;
        }
    }

    public void setSize(float f10) {
        this.block.setSize(f10);
        this.needRefresh = true;
        this.letters.invalidate();
    }

    public void setStyle(int i10, int i11, int i12) {
        this.letters.setStyle(i10, i11, i12);
    }

    public void setTabPosition(float... fArr) {
        this.block.setTabPosition(fArr);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setTabWidth(float f10) {
        this.block.setTabWidth(f10);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setText(CharSequence charSequence) {
        setText(charSequence != null ? charSequence.toString() : null);
    }

    public void setVerticalAlignment(BitmapFont.VAlign vAlign) {
        if (this.block.getTextBox() == null && vAlign != BitmapFont.VAlign.Top) {
            throw new RuntimeException("Bound is not set");
        }
        this.block.setVerticalAlignment(vAlign);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    @Override
    public void updateLogicalState(float f10) {
        super.updateLogicalState(f10);
        if (this.needRefresh) {
            assemble();
        }
    }

    @Deprecated
    public BitmapText(BitmapFont bitmapFont, boolean z10) {
        this(bitmapFont, z10, false);
    }

    public void setStyle(String str, int i10) {
        Matcher matcher = Pattern.compile(str).matcher(this.block.getText());
        while (matcher.find()) {
            setStyle(matcher.start(), matcher.end(), i10);
        }
    }

    public void setText(String str) {
        if (str == null) {
            str = "";
        }
        if (this.block.getText().equals(str)) {
            return;
        }
        this.block.setText(str);
        this.letters.setText(str);
        this.needRefresh = true;
    }

    public BitmapText(BitmapFont bitmapFont, boolean z10, boolean z11) {
        this.needRefresh = true;
        this.textPages = new BitmapTextPage[bitmapFont.getPageSize()];
        int i10 = 0;
        while (true) {
            BitmapTextPage[] bitmapTextPageArr = this.textPages;
            if (i10 < bitmapTextPageArr.length) {
                bitmapTextPageArr[i10] = new BitmapTextPage(bitmapFont, z11, i10);
                attachChild(this.textPages[i10]);
                i10++;
            } else {
                this.font = bitmapFont;
                StringBlock stringBlock = new StringBlock();
                this.block = stringBlock;
                stringBlock.setSize(bitmapFont.getPreferredSize());
                this.letters = new Letters(bitmapFont, this.block, z10);
                return;
            }
        }
    }

    @Override
    public BitmapText mo1263clone() {
        return (BitmapText) super.clone(false);
    }

    public void setColor(int i10, int i11, ColorRGBA colorRGBA) {
        this.letters.setColor(i10, i11, colorRGBA);
        this.letters.invalidate();
        this.needRefresh = true;
    }

    public void setColor(String str, ColorRGBA colorRGBA) {
        Matcher matcher = Pattern.compile(str).matcher(this.block.getText());
        while (matcher.find()) {
            this.letters.setColor(matcher.start(), matcher.end(), colorRGBA);
        }
        this.letters.invalidate();
        this.needRefresh = true;
    }
}
