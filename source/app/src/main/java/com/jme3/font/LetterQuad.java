package com.jme3.font;

import com.jme3.math.ColorRGBA;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class LetterQuad {
    private static final float LINE_DIR = -1.0f;
    private static final Rectangle UNBOUNDED = new Rectangle(0.0f, 0.0f, Float.MAX_VALUE, Float.MAX_VALUE);
    private float alignX;
    private float alignY;
    private BitmapCharacter bitmapChar;

    private final char f81581c;
    private int colorInt;
    private boolean eol;
    private final BitmapFont font;
    private float height;
    private final int index;
    private float lineY;
    private LetterQuad next;
    private LetterQuad previous;
    private final boolean rightToLeft;
    private float sizeScale;
    private int style;

    private float f81582u0;

    private float f81583u1;

    private float f81584v0;

    private float f81585v1;
    private float width;

    private float f81586x0;
    private float xAdvance;

    private float f81587y0;

    public LetterQuad(BitmapFont bitmapFont, boolean z10) {
        this.bitmapChar = null;
        this.f81586x0 = -2.1474836E9f;
        this.f81587y0 = -2.1474836E9f;
        this.width = -2.1474836E9f;
        this.height = -2.1474836E9f;
        this.xAdvance = 0.0f;
        this.colorInt = -1;
        this.sizeScale = 1.0f;
        this.font = bitmapFont;
        this.f81581c = (char) 0;
        this.rightToLeft = z10;
        this.index = -1;
        setBitmapChar((BitmapCharacter) null);
    }

    private float computeLineY(StringBlock stringBlock) {
        if (isHead()) {
            return getBound(stringBlock).f81589y;
        }
        LetterQuad letterQuad = this.previous;
        return letterQuad.eol ? letterQuad.getNextLine() : letterQuad.lineY;
    }

    private Rectangle getBound(StringBlock stringBlock) {
        return stringBlock.getTextBox() != null ? stringBlock.getTextBox() : UNBOUNDED;
    }

    public LetterQuad addNextCharacter(char c10) {
        return new LetterQuad(c10, this);
    }

    public void appendColors(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.colorInt);
        byteBuffer.putInt(this.colorInt);
        byteBuffer.putInt(this.colorInt);
        byteBuffer.putInt(this.colorInt);
    }

    public void appendIndices(ShortBuffer shortBuffer, int i10) {
        short s10 = (short) (i10 * 4);
        short s11 = (short) (s10 + 2);
        shortBuffer.put(s10).put((short) (s10 + 1)).put(s11);
        shortBuffer.put(s10).put(s11).put((short) (s10 + 3));
    }

    public void appendPositions(FloatBuffer floatBuffer) {
        float f10 = this.f81586x0 + this.alignX;
        float f11 = this.f81587y0 - this.alignY;
        float f12 = this.width + f10;
        float f13 = f11 - this.height;
        floatBuffer.put(f10).put(f11).put(0.0f);
        floatBuffer.put(f10).put(f13).put(0.0f);
        floatBuffer.put(f12).put(f13).put(0.0f);
        floatBuffer.put(f12).put(f11).put(0.0f);
    }

    public void appendTexCoords(FloatBuffer floatBuffer) {
        float f10 = 1.0f - this.f81584v0;
        float f11 = 1.0f - this.f81585v1;
        floatBuffer.put(this.f81582u0).put(f10);
        floatBuffer.put(this.f81582u0).put(f11);
        floatBuffer.put(this.f81583u1).put(f11);
        floatBuffer.put(this.f81583u1).put(f10);
    }

    public void clip(StringBlock stringBlock) {
        Rectangle textBox = stringBlock.getTextBox();
        if (textBox == null) {
            return;
        }
        float min = Math.min(textBox.f81588x + textBox.width, this.f81586x0 + this.width);
        float f10 = min - this.f81586x0;
        if (!isRightToLeft()) {
            min = f10;
        }
        float f11 = this.width;
        if (min == f11) {
            return;
        }
        float f12 = this.f81582u0;
        this.f81583u1 = f12 + ((this.f81583u1 - f12) * (min / f11));
        this.width = min;
    }

    public float getAlignX() {
        return this.alignX;
    }

    public float getAlignY() {
        return this.alignY;
    }

    public BitmapCharacter getBitmapChar() {
        return this.bitmapChar;
    }

    public char getChar() {
        return this.f81581c;
    }

    public float getHeight() {
        return this.height;
    }

    public int getIndex() {
        return this.index;
    }

    public LetterQuad getNext() {
        return this.next;
    }

    public float getNextLine() {
        return this.lineY + (this.font.getCharSet().getLineHeight() * (-1.0f) * this.sizeScale);
    }

    public float getNextX() {
        return this.rightToLeft ? this.f81586x0 - this.xAdvance : this.f81586x0 + this.xAdvance;
    }

    public LetterQuad getPrevious() {
        return this.previous;
    }

    public float getU0() {
        return this.f81582u0;
    }

    public float getU1() {
        return this.f81583u1;
    }

    public float getV0() {
        return this.f81584v0;
    }

    public float getV1() {
        return this.f81585v1;
    }

    public float getWidth() {
        return this.width;
    }

    public float getX0() {
        return this.f81586x0;
    }

    public float getX1() {
        return this.f81586x0 + this.width;
    }

    public float getY0() {
        return this.f81587y0;
    }

    public float getY1() {
        return this.f81587y0 - this.height;
    }

    public void insert(LetterQuad letterQuad) {
        LetterQuad letterQuad2 = this.next;
        this.next = letterQuad;
        letterQuad.next = letterQuad2;
        letterQuad.previous = this;
        letterQuad2.previous = letterQuad;
    }

    public void invalidate() {
        this.eol = isLineFeed();
        setBitmapChar(this.font.getCharSet().getCharacter(this.f81581c, this.style));
    }

    public boolean isBlank() {
        return this.f81581c == ' ' || isTab();
    }

    public boolean isEndOfLine() {
        return this.eol;
    }

    public boolean isHead() {
        return this.previous == null;
    }

    public boolean isInvalid() {
        return this.f81586x0 == -2.1474836E9f;
    }

    public boolean isLineFeed() {
        return this.f81581c == '\n';
    }

    public boolean isLineStart() {
        LetterQuad letterQuad;
        return this.f81586x0 == 0.0f || ((letterQuad = this.previous) != null && letterQuad.eol);
    }

    public boolean isLineWrap() {
        return !isHead() && !isTail() && this.bitmapChar == null && this.f81581c == 0;
    }

    public boolean isRightToLeft() {
        return this.rightToLeft;
    }

    public boolean isTab() {
        return this.f81581c == '\t';
    }

    public boolean isTail() {
        return this.next == null;
    }

    public LetterQuad remove() {
        LetterQuad letterQuad = this.previous;
        letterQuad.next = this.next;
        LetterQuad letterQuad2 = this.next;
        letterQuad2.previous = letterQuad;
        return letterQuad2;
    }

    public void setAlignment(float f10, float f11) {
        this.alignX = f10;
        this.alignY = f11;
    }

    public void setAlpha(float f10) {
        this.colorInt = (((int) (f10 * 255.0f)) & 255) | (this.colorInt & (-256));
        invalidate();
    }

    public void setBitmapChar(char c10) {
        setBitmapChar(this.font.getCharSet().getCharacter(c10, this.style));
    }

    public void setColor(ColorRGBA colorRGBA) {
        this.colorInt = colorRGBA.asIntRGBA();
        invalidate();
    }

    public void setEndOfLine() {
        this.eol = true;
    }

    public void setNext(LetterQuad letterQuad) {
        this.next = letterQuad;
    }

    public void setPrevious(LetterQuad letterQuad) {
        this.previous = letterQuad;
    }

    public void setStyle(int i10) {
        this.style = i10;
        invalidate();
    }

    public void storeToArrays(float[] fArr, float[] fArr2, short[] sArr, byte[] bArr, int i10) {
        float f10 = this.f81586x0 + this.alignX;
        float f11 = this.f81587y0 - this.alignY;
        float f12 = this.width + f10;
        float f13 = f11 - this.height;
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[2] = 0.0f;
        fArr[3] = f10;
        fArr[4] = f13;
        fArr[5] = 0.0f;
        fArr[6] = f12;
        fArr[7] = f13;
        fArr[8] = 0.0f;
        fArr[9] = f12;
        fArr[10] = f11;
        fArr[11] = 0.0f;
        float f14 = 1.0f - this.f81584v0;
        float f15 = 1.0f - this.f81585v1;
        float f16 = this.f81582u0;
        fArr2[0] = f16;
        fArr2[1] = f14;
        fArr2[2] = f16;
        fArr2[3] = f15;
        float f17 = this.f81583u1;
        fArr2[4] = f17;
        fArr2[5] = f15;
        fArr2[6] = f17;
        fArr2[7] = f14;
        int i11 = this.colorInt;
        bArr[3] = (byte) (i11 & 255);
        bArr[2] = (byte) ((i11 >> 8) & 255);
        bArr[1] = (byte) ((i11 >> 16) & 255);
        bArr[0] = (byte) ((i11 >> 24) & 255);
        System.arraycopy(bArr, 0, bArr, 4, 4);
        System.arraycopy(bArr, 0, bArr, 8, 4);
        System.arraycopy(bArr, 0, bArr, 12, 4);
        short s10 = (short) (i10 * 4);
        short s11 = (short) (s10 + 2);
        sArr[0] = s10;
        sArr[1] = (short) (s10 + 1);
        sArr[2] = s11;
        sArr[3] = s10;
        sArr[4] = s11;
        sArr[5] = (short) (s10 + 3);
    }

    public String toString() {
        return String.valueOf(this.f81581c);
    }

    public void update(StringBlock stringBlock) {
        float[] tabPosition = stringBlock.getTabPosition();
        float tabWidth = stringBlock.getTabWidth();
        Rectangle bound = getBound(stringBlock);
        this.sizeScale = stringBlock.getSize() / this.font.getCharSet().getRenderedSize();
        this.lineY = computeLineY(stringBlock);
        if (isHead()) {
            this.f81586x0 = getBound(stringBlock).f81588x;
            if (isRightToLeft() && getBound(stringBlock) != UNBOUNDED) {
                this.f81586x0 += getBound(stringBlock).width;
            }
            this.f81587y0 = this.lineY;
            this.width = 0.0f;
            this.height = 0.0f;
            this.xAdvance = 0.0f;
        } else if (isTab()) {
            float nextX = this.previous.getNextX();
            this.f81586x0 = nextX;
            this.width = tabWidth;
            this.f81587y0 = this.lineY;
            this.height = 0.0f;
            if (tabPosition != null && nextX < tabPosition[tabPosition.length - 1]) {
                for (int i10 = 0; i10 < tabPosition.length - 1; i10++) {
                    float f10 = this.f81586x0;
                    if (f10 > tabPosition[i10]) {
                        float f11 = tabPosition[i10 + 1];
                        if (f10 < f11) {
                            this.width = f11 - f10;
                        }
                    }
                }
            }
            this.xAdvance = this.width;
        } else {
            if (this.bitmapChar == null) {
                this.f81586x0 = getPrevious().getX1();
                if (this.rightToLeft) {
                    this.f81586x0 = getPrevious().getX0();
                }
                this.f81587y0 = this.lineY;
                this.width = 0.0f;
                this.height = 0.0f;
                this.xAdvance = 0.0f;
            } else {
                float xOffset = r0.getXOffset() * this.sizeScale;
                float yOffset = this.bitmapChar.getYOffset() * this.sizeScale;
                this.xAdvance = this.bitmapChar.getXAdvance() * this.sizeScale;
                this.width = this.bitmapChar.getWidth() * this.sizeScale;
                this.height = this.bitmapChar.getHeight() * this.sizeScale;
                float f12 = this.rightToLeft ? -1.0f : 1.0f;
                if (this.previous.isHead() || this.previous.eol) {
                    if (this.rightToLeft) {
                        if (this.previous.isHead()) {
                            this.f81586x0 = (this.previous.getNextX() - this.xAdvance) - (xOffset * f12);
                        } else if (this.previous.eol) {
                            this.f81586x0 = ((getBound(stringBlock).f81588x + (getBound(stringBlock) != UNBOUNDED ? getBound(stringBlock).width : 0.0f)) - this.xAdvance) - (xOffset * f12);
                        }
                        this.xAdvance = (-xOffset) * f12;
                    } else {
                        this.f81586x0 = bound.f81588x;
                        this.xAdvance -= xOffset * f12;
                    }
                } else if (isRightToLeft()) {
                    this.f81586x0 = (this.previous.getNextX() - this.xAdvance) - (xOffset * f12);
                    this.xAdvance = (-xOffset) * f12;
                } else {
                    float f13 = xOffset * f12;
                    this.f81586x0 = this.previous.getNextX() + f13;
                    this.xAdvance -= f13;
                }
                this.f81587y0 = this.lineY + (yOffset * (-1.0f));
                if (this.previous.getBitmapChar() != null && stringBlock.isKerning()) {
                    this.f81586x0 += r0.getKerning(this.f81581c) * this.sizeScale * f12;
                }
            }
        }
        if (isEndOfLine()) {
            this.xAdvance = bound.f81588x - this.f81586x0;
        }
    }

    public boolean isInvalid(StringBlock stringBlock) {
        return isInvalid(stringBlock, 0.0f);
    }

    public boolean isInvalid(StringBlock stringBlock, float f10) {
        if (isHead() || isTail()) {
            return false;
        }
        if (this.f81586x0 == -2.1474836E9f || this.f81587y0 == -2.1474836E9f) {
            return true;
        }
        Rectangle textBox = stringBlock.getTextBox();
        if (textBox == null) {
            return false;
        }
        if (!isRightToLeft()) {
            return this.f81586x0 > 0.0f && (textBox.f81588x + textBox.width) - f10 < getX1();
        }
        float f11 = this.f81586x0;
        return f11 < 0.0f && f11 < textBox.f81588x;
    }

    public void setBitmapChar(BitmapCharacter bitmapCharacter) {
        this.f81586x0 = -2.1474836E9f;
        this.f81587y0 = -2.1474836E9f;
        this.width = -2.1474836E9f;
        this.height = -2.1474836E9f;
        this.alignX = 0.0f;
        this.alignY = 0.0f;
        BitmapCharacterSet charSet = this.font.getCharSet();
        this.bitmapChar = bitmapCharacter;
        if (bitmapCharacter != null) {
            this.f81582u0 = bitmapCharacter.getX() / charSet.getWidth();
            this.f81584v0 = bitmapCharacter.getY() / charSet.getHeight();
            this.f81583u1 = this.f81582u0 + (bitmapCharacter.getWidth() / charSet.getWidth());
            this.f81585v1 = this.f81584v0 + (bitmapCharacter.getHeight() / charSet.getHeight());
            return;
        }
        this.f81582u0 = 0.0f;
        this.f81584v0 = 0.0f;
        this.f81583u1 = 0.0f;
        this.f81585v1 = 0.0f;
    }

    public void appendPositions(ShortBuffer shortBuffer) {
        float x12 = getX1();
        short s10 = (short) this.f81586x0;
        short s11 = (short) this.f81587y0;
        short s12 = (short) x12;
        short y12 = (short) getY1();
        shortBuffer.put(s10).put(s11).put((short) 0);
        shortBuffer.put(s10).put(y12).put((short) 0);
        shortBuffer.put(s12).put(y12).put((short) 0);
        shortBuffer.put(s12).put(s11).put((short) 0);
    }

    public LetterQuad(char c10, LetterQuad letterQuad) {
        this.bitmapChar = null;
        this.f81586x0 = -2.1474836E9f;
        this.f81587y0 = -2.1474836E9f;
        this.width = -2.1474836E9f;
        this.height = -2.1474836E9f;
        this.xAdvance = 0.0f;
        this.colorInt = -1;
        this.sizeScale = 1.0f;
        this.font = letterQuad.font;
        this.rightToLeft = letterQuad.rightToLeft;
        this.f81581c = c10;
        this.index = letterQuad.index + 1;
        this.eol = isLineFeed();
        setBitmapChar(c10);
        letterQuad.insert(this);
    }
}
