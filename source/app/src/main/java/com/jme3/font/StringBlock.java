package com.jme3.font;

import ag.a0;
import com.jme3.font.BitmapFont;
import com.jme3.math.ColorRGBA;

public class StringBlock implements Cloneable {
    private BitmapFont.Align alignment;
    private ColorRGBA color;
    private char ellipsisChar;
    private boolean kerning;
    private int lineCount;
    private float size;
    private float[] tabPos;
    private float tabWidth;
    private String text;
    private Rectangle textBox;
    private BitmapFont.VAlign vAlignment;
    private LineWrapMode wrapType;

    public StringBlock(String str, Rectangle rectangle, BitmapFont.Align align, float f10, ColorRGBA colorRGBA, boolean z10) {
        this.alignment = BitmapFont.Align.Left;
        this.vAlignment = BitmapFont.VAlign.Top;
        ColorRGBA colorRGBA2 = new ColorRGBA(ColorRGBA.White);
        this.color = colorRGBA2;
        this.wrapType = LineWrapMode.Word;
        this.tabWidth = 50.0f;
        this.ellipsisChar = a0.f32048F;
        this.text = str;
        this.textBox = rectangle;
        this.alignment = align;
        this.size = f10;
        colorRGBA2.set(colorRGBA);
        this.kerning = z10;
    }

    public BitmapFont.Align getAlignment() {
        return this.alignment;
    }

    public ColorRGBA getColor() {
        return this.color;
    }

    public int getEllipsisChar() {
        return this.ellipsisChar;
    }

    public int getLineCount() {
        return this.lineCount;
    }

    public LineWrapMode getLineWrapMode() {
        return this.wrapType;
    }

    public float getSize() {
        return this.size;
    }

    public float[] getTabPosition() {
        return this.tabPos;
    }

    public float getTabWidth() {
        return this.tabWidth;
    }

    public String getText() {
        return this.text;
    }

    public Rectangle getTextBox() {
        return this.textBox;
    }

    public BitmapFont.VAlign getVerticalAlignment() {
        return this.vAlignment;
    }

    public boolean isKerning() {
        return this.kerning;
    }

    public void setAlignment(BitmapFont.Align align) {
        this.alignment = align;
    }

    public void setColor(ColorRGBA colorRGBA) {
        this.color.set(colorRGBA);
    }

    public void setEllipsisChar(char c10) {
        this.ellipsisChar = c10;
    }

    public void setKerning(boolean z10) {
        this.kerning = z10;
    }

    public void setLineCount(int i10) {
        this.lineCount = i10;
    }

    public void setLineWrapMode(LineWrapMode lineWrapMode) {
        this.wrapType = lineWrapMode;
    }

    public void setSize(float f10) {
        this.size = f10;
    }

    public void setTabPosition(float[] fArr) {
        this.tabPos = fArr;
    }

    public void setTabWidth(float f10) {
        this.tabWidth = f10;
    }

    public void setText(String str) {
        if (str == null) {
            str = "";
        }
        this.text = str;
    }

    public void setTextBox(Rectangle rectangle) {
        this.textBox = rectangle;
    }

    public void setVerticalAlignment(BitmapFont.VAlign vAlign) {
        this.vAlignment = vAlign;
    }

    public StringBlock m1269clone() {
        try {
            StringBlock stringBlock = (StringBlock) super.clone();
            stringBlock.color = this.color.m1279clone();
            Rectangle rectangle = this.textBox;
            if (rectangle != null) {
                stringBlock.textBox = rectangle.m1268clone();
            }
            return stringBlock;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public StringBlock() {
        BitmapFont.Align align = BitmapFont.Align.Left;
        this.alignment = align;
        this.vAlignment = BitmapFont.VAlign.Top;
        ColorRGBA colorRGBA = ColorRGBA.White;
        ColorRGBA colorRGBA2 = new ColorRGBA(colorRGBA);
        this.color = colorRGBA2;
        this.wrapType = LineWrapMode.Word;
        this.tabWidth = 50.0f;
        this.ellipsisChar = a0.f32048F;
        this.text = "";
        this.textBox = null;
        this.alignment = align;
        this.size = 100.0f;
        colorRGBA2.set(colorRGBA);
        this.kerning = true;
    }
}
