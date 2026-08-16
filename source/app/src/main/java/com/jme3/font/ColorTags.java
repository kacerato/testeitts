package com.jme3.font;

import com.jme3.math.ColorRGBA;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ColorTags {
    private static final Pattern colorPattern = Pattern.compile("\\\\#([0-9a-fA-F]{8})#|\\\\#([0-9a-fA-F]{6})#|\\\\#([0-9a-fA-F]{4})#|\\\\#([0-9a-fA-F]{3})#");
    private String original;
    private String text;
    private final LinkedList<Range> colors = new LinkedList<>();
    private float baseAlpha = -1.0f;

    public class Range {
        ColorRGBA color = new ColorRGBA();
        int start;

        public Range(int i10, String str) {
            this.start = i10;
            if (str.length() >= 6) {
                this.color.set(Integer.parseInt(str.subSequence(0, 2).toString(), 16) / 255.0f, Integer.parseInt(str.subSequence(2, 4).toString(), 16) / 255.0f, Integer.parseInt(str.subSequence(4, 6).toString(), 16) / 255.0f, 1.0f);
                if (ColorTags.this.baseAlpha != -1.0f) {
                    this.color.f81595a = ColorTags.this.baseAlpha;
                    return;
                } else {
                    if (str.length() == 8) {
                        this.color.f81595a = Integer.parseInt(str.subSequence(6, 8).toString(), 16) / 255.0f;
                        return;
                    }
                    return;
                }
            }
            this.color.set(Integer.parseInt(Character.toString(str.charAt(0)), 16) / 15.0f, Integer.parseInt(Character.toString(str.charAt(1)), 16) / 15.0f, Integer.parseInt(Character.toString(str.charAt(2)), 16) / 15.0f, 1.0f);
            if (ColorTags.this.baseAlpha != -1.0f) {
                this.color.f81595a = ColorTags.this.baseAlpha;
            } else if (str.length() == 4) {
                this.color.f81595a = Integer.parseInt(Character.toString(str.charAt(3)), 16) / 15.0f;
            }
        }
    }

    public ColorTags() {
    }

    public String getPlainText() {
        return this.text;
    }

    public LinkedList<Range> getTags() {
        return this.colors;
    }

    public void setBaseAlpha(float f10) {
        this.baseAlpha = f10;
        if (f10 == -1.0f) {
            setText(this.original);
            return;
        }
        Iterator<Range> it = this.colors.iterator();
        while (it.hasNext()) {
            it.next().color.f81595a = f10;
        }
    }

    public void setBaseColor(ColorRGBA colorRGBA) {
        ColorRGBA m1279clone = colorRGBA.m1279clone();
        Iterator<Range> it = this.colors.iterator();
        while (it.hasNext()) {
            it.next().color = m1279clone;
        }
    }

    public void setText(String str) {
        this.original = str;
        this.colors.clear();
        if (str == null) {
            return;
        }
        Matcher matcher = colorPattern.matcher(str);
        if (!matcher.find()) {
            this.text = str;
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (true) {
            String str2 = null;
            for (int i11 = 1; i11 <= 4 && str2 == null; i11++) {
                str2 = matcher.group(i11);
            }
            sb2.append(str.subSequence(i10, matcher.start()));
            Range range = new Range(sb2.length(), str2);
            int end = matcher.end();
            this.colors.add(range);
            if (!matcher.find()) {
                sb2.append(str.subSequence(end, str.length()));
                this.text = sb2.toString();
                return;
            }
            i10 = end;
        }
    }

    public ColorTags(String str) {
        setText(str);
    }
}
