package com.jme3.font;

import com.jme3.font.BitmapFont;
import com.jme3.font.ColorTags;
import com.jme3.math.ColorRGBA;
import java.util.LinkedList;

public class Letters {
    private final StringBlock block;
    private LetterQuad current;
    private final BitmapFont font;
    private final LetterQuad head;
    private String plainText;
    private final LetterQuad tail;
    private float totalHeight;
    private float totalWidth;
    private final ColorTags colorTags = new ColorTags();
    private ColorRGBA baseColor = null;
    private float baseAlpha = -1.0f;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$font$BitmapFont$VAlign;
        static final int[] $SwitchMap$com$jme3$font$LineWrapMode;

        static {
            int[] iArr = new int[BitmapFont.VAlign.values().length];
            $SwitchMap$com$jme3$font$BitmapFont$VAlign = iArr;
            try {
                iArr[BitmapFont.VAlign.Top.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$font$BitmapFont$VAlign[BitmapFont.VAlign.Center.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$font$BitmapFont$VAlign[BitmapFont.VAlign.Bottom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineWrapMode.values().length];
            $SwitchMap$com$jme3$font$LineWrapMode = iArr2;
            try {
                iArr2[LineWrapMode.Character.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$font$LineWrapMode[LineWrapMode.Word.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$font$LineWrapMode[LineWrapMode.NoWrap.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$font$LineWrapMode[LineWrapMode.Clip.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Letters(BitmapFont bitmapFont, StringBlock stringBlock, boolean z10) {
        String text = stringBlock.getText();
        this.block = stringBlock;
        this.font = bitmapFont;
        this.head = new LetterQuad(bitmapFont, z10);
        this.tail = new LetterQuad(bitmapFont, z10);
        setText(text);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void align() {
        float f10;
        int i10;
        if (this.block.getTextBox() == null) {
            return;
        }
        BitmapFont.Align alignment = this.block.getAlignment();
        BitmapFont.VAlign verticalAlignment = this.block.getVerticalAlignment();
        float f11 = this.block.getTextBox().width;
        float f12 = this.block.getTextBox().height;
        validateSize();
        if (this.totalHeight < f12 && (i10 = AnonymousClass1.$SwitchMap$com$jme3$font$BitmapFont$VAlign[verticalAlignment.ordinal()]) != 1) {
            if (i10 == 2) {
                f10 = (f12 - this.totalHeight) * 0.5f;
            } else if (i10 == 3) {
                f10 = f12 - this.totalHeight;
            }
            if (!this.font.isRightToLeft()) {
                if (alignment == BitmapFont.Align.Right && verticalAlignment == BitmapFont.VAlign.Top) {
                    return;
                }
                LetterQuad previous = this.tail.getPrevious();
                previous.setEndOfLine();
                float f13 = 0.0f;
                while (!previous.isHead()) {
                    if (previous.isEndOfLine()) {
                        f13 = alignment == BitmapFont.Align.Left ? this.block.getTextBox().f81588x - previous.getX0() : alignment == BitmapFont.Align.Center ? (this.block.getTextBox().f81588x - previous.getX0()) / 2.0f : 0.0f;
                    }
                    previous.setAlignment(f13, f10);
                    previous = previous.getPrevious();
                }
                return;
            }
            if (alignment == BitmapFont.Align.Left && verticalAlignment == BitmapFont.VAlign.Top) {
                return;
            }
            LetterQuad previous2 = this.tail.getPrevious();
            previous2.setEndOfLine();
            float f14 = 0.0f;
            while (!previous2.isHead()) {
                if (previous2.isEndOfLine()) {
                    float x12 = previous2.getX1() - this.block.getTextBox().f81588x;
                    f14 = alignment == BitmapFont.Align.Center ? (f11 - x12) / 2.0f : alignment == BitmapFont.Align.Right ? f11 - x12 : 0.0f;
                }
                previous2.setAlignment(f14, f10);
                previous2 = previous2.getPrevious();
            }
            return;
        }
        f10 = 0.0f;
        if (!this.font.isRightToLeft()) {
        }
    }

    private void lineWrap(LetterQuad letterQuad) {
        if (letterQuad.isHead() || letterQuad.isBlank()) {
            return;
        }
        letterQuad.getPrevious().setEndOfLine();
        letterQuad.invalidate();
        letterQuad.update(this.block);
    }

    public float getBaseAlpha() {
        return this.baseAlpha;
    }

    public ColorRGBA getBaseColor() {
        return this.baseColor;
    }

    public float getCharacterAlignX() {
        return this.current.getAlignX();
    }

    public float getCharacterAlignY() {
        return this.current.getAlignY();
    }

    public float getCharacterHeight() {
        return this.current.getHeight();
    }

    public int getCharacterSetPage() {
        return this.current.getBitmapChar().getPage();
    }

    public float getCharacterWidth() {
        return this.current.getWidth();
    }

    public float getCharacterX0() {
        return this.current.getX0();
    }

    public float getCharacterX1() {
        return this.current.getX1();
    }

    public float getCharacterY0() {
        return this.current.getY0();
    }

    public float getCharacterY1() {
        return this.current.getY1();
    }

    public LetterQuad getHead() {
        return this.head;
    }

    public LetterQuad getQuad() {
        return this.current;
    }

    public float getScale() {
        return this.block.getSize() / this.font.getCharSet().getRenderedSize();
    }

    public LetterQuad getTail() {
        return this.tail;
    }

    public float getTotalHeight() {
        validateSize();
        return this.totalHeight;
    }

    public float getTotalWidth() {
        validateSize();
        return this.totalWidth;
    }

    public void invalidate() {
        invalidate(this.head);
    }

    public boolean isPrintable() {
        return this.current.getBitmapChar() != null;
    }

    public boolean nextCharacter() {
        if (this.current.isTail()) {
            return false;
        }
        this.current = this.current.getNext();
        return true;
    }

    public void rewind() {
        this.current = this.head;
    }

    public void setBaseAlpha(float f10) {
        this.baseAlpha = f10;
        this.colorTags.setBaseAlpha(f10);
        if (f10 == -1.0f) {
            ColorRGBA colorRGBA = this.baseColor;
            f10 = colorRGBA != null ? colorRGBA.f81595a : 1.0f;
        }
        for (LetterQuad next = this.head.getNext(); !next.isTail(); next = next.getNext()) {
            next.setAlpha(f10);
        }
        if (this.baseAlpha == -1.0f) {
            LinkedList<ColorTags.Range> tags = this.colorTags.getTags();
            if (!tags.isEmpty()) {
                int i10 = 0;
                while (i10 < tags.size() - 1) {
                    ColorTags.Range range = tags.get(i10);
                    i10++;
                    setColor(range.start, tags.get(i10).start, range.color);
                }
                ColorTags.Range last = tags.getLast();
                setColor(last.start, this.plainText.length(), last.color);
            }
        }
        invalidate();
    }

    public void setColor(ColorRGBA colorRGBA) {
        this.baseColor = colorRGBA;
        this.colorTags.setBaseColor(colorRGBA);
        setColor(0, this.block.getText().length(), colorRGBA);
    }

    public void setStyle(int i10, int i11, int i12) {
        for (LetterQuad next = this.head.getNext(); !next.isTail(); next = next.getNext()) {
            if (next.getIndex() >= i10 && next.getIndex() < i11) {
                next.setStyle(i12);
            }
        }
    }

    public void setText(String str) {
        this.colorTags.setText(str);
        this.plainText = this.colorTags.getPlainText();
        this.head.setNext(this.tail);
        this.tail.setPrevious(this.head);
        this.current = this.head;
        int i10 = 0;
        if (str != null && this.plainText.length() > 0) {
            LetterQuad letterQuad = this.head;
            CharSequence charSequence = this.plainText;
            if (this.font.getGlyphParser() != null) {
                charSequence = this.font.getGlyphParser().parse(this.plainText);
            }
            for (int i11 = 0; i11 < charSequence.length(); i11++) {
                letterQuad = letterQuad.addNextCharacter(charSequence.charAt(i11));
                ColorRGBA colorRGBA = this.baseColor;
                if (colorRGBA != null) {
                    letterQuad.setColor(colorRGBA);
                }
            }
        }
        LinkedList<ColorTags.Range> tags = this.colorTags.getTags();
        if (!tags.isEmpty()) {
            while (i10 < tags.size() - 1) {
                ColorTags.Range range = tags.get(i10);
                i10++;
                setColor(range.start, tags.get(i10).start, range.color);
            }
            ColorTags.Range last = tags.getLast();
            setColor(last.start, this.plainText.length(), last.color);
        }
        invalidate();
    }

    public void update() {
        BitmapCharacter character = this.font.getCharSet().getCharacter(this.block.getEllipsisChar());
        float width = character != null ? character.getWidth() * getScale() : 0.0f;
        int i10 = 1;
        for (LetterQuad letterQuad = this.head; !letterQuad.isTail(); letterQuad = letterQuad.getNext()) {
            if (letterQuad.isInvalid()) {
                letterQuad.update(this.block);
                if (letterQuad.isInvalid(this.block)) {
                    int i11 = AnonymousClass1.$SwitchMap$com$jme3$font$LineWrapMode[this.block.getLineWrapMode().ordinal()];
                    if (i11 != 1) {
                        LetterQuad letterQuad2 = null;
                        if (i11 != 2) {
                            if (i11 == 3) {
                                LetterQuad previous = letterQuad.getPrevious();
                                while (previous.isInvalid(this.block, width) && !previous.isLineStart()) {
                                    previous = previous.getPrevious();
                                }
                                previous.setBitmapChar(character);
                                previous.update(this.block);
                                for (LetterQuad next = previous.getNext(); !next.isTail() && !next.isLineFeed(); next = next.getNext()) {
                                    next.setBitmapChar((BitmapCharacter) null);
                                    next.update(this.block);
                                }
                            } else if (i11 == 4) {
                                letterQuad.clip(this.block);
                                for (LetterQuad next2 = letterQuad.getNext(); !next2.isTail() && !next2.isLineFeed(); next2 = next2.getNext()) {
                                    next2.setBitmapChar((BitmapCharacter) null);
                                    next2.update(this.block);
                                }
                            }
                        } else if (!letterQuad.isBlank()) {
                            LetterQuad letterQuad3 = letterQuad;
                            while (!letterQuad3.isBlank()) {
                                if (letterQuad3.isLineStart() || letterQuad3.isHead()) {
                                    lineWrap(letterQuad);
                                    i10++;
                                    break;
                                }
                                letterQuad3 = letterQuad3.getPrevious();
                            }
                            letterQuad2 = letterQuad3;
                            if (letterQuad2 != null) {
                                letterQuad2.setEndOfLine();
                                i10++;
                                while (letterQuad2 != letterQuad) {
                                    letterQuad2 = letterQuad2.getNext();
                                    letterQuad2.invalidate();
                                    letterQuad2.update(this.block);
                                }
                            }
                        }
                    } else {
                        lineWrap(letterQuad);
                        i10++;
                    }
                }
            } else if (this.current.isInvalid(this.block)) {
                invalidate(this.current);
            }
            if (letterQuad.isEndOfLine()) {
                i10++;
            }
        }
        this.block.setLineCount(i10);
        align();
        rewind();
    }

    public void validateSize() {
        if (this.totalWidth < 0.0f) {
            for (LetterQuad letterQuad = this.head; !letterQuad.isTail(); letterQuad = letterQuad.getNext()) {
                if (this.font.isRightToLeft()) {
                    this.totalWidth = Math.max(this.totalWidth, Math.abs(letterQuad.getX0()));
                } else {
                    this.totalWidth = Math.max(this.totalWidth, letterQuad.getX1());
                }
            }
        }
        this.totalHeight = this.font.getLineHeight(this.block) * this.block.getLineCount();
    }

    public void invalidate(LetterQuad letterQuad) {
        this.totalWidth = -1.0f;
        this.totalHeight = -1.0f;
        while (!letterQuad.isTail() && !letterQuad.isInvalid()) {
            letterQuad.invalidate();
            letterQuad = letterQuad.getNext();
        }
    }

    public void setColor(int i10, int i11, ColorRGBA colorRGBA) {
        for (LetterQuad next = this.head.getNext(); !next.isTail(); next = next.getNext()) {
            if (next.getIndex() >= i10 && next.getIndex() < i11) {
                next.setColor(colorRGBA);
            }
        }
    }
}
