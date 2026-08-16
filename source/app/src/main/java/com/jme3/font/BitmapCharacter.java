package com.jme3.font;

import b2.AbstractC3834c;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.IntMap;
import java.io.IOException;
import java.util.Iterator;

public class BitmapCharacter implements Savable, Cloneable {

    private char f81577c;
    private int height;
    private IntMap<Integer> kerning = new IntMap<>();
    private int page;
    private int width;

    private int f81578x;
    private int xAdvance;
    private int xOffset;

    private int f81579y;
    private int yOffset;

    public BitmapCharacter() {
    }

    public void addKerning(int i10, int i11) {
        this.kerning.put(i10, Integer.valueOf(i11));
    }

    public char getChar() {
        return this.f81577c;
    }

    public int getHeight() {
        return this.height;
    }

    public int getKerning(int i10) {
        Integer num = this.kerning.get(i10);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getPage() {
        return this.page;
    }

    public int getWidth() {
        return this.width;
    }

    public int getX() {
        return this.f81578x;
    }

    public int getXAdvance() {
        return this.xAdvance;
    }

    public int getXOffset() {
        return this.xOffset;
    }

    public int getY() {
        return this.f81579y;
    }

    public int getYOffset() {
        return this.yOffset;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81577c = (char) capsule.readInt(AbstractC3834c.f32824b1, 0);
        this.f81578x = capsule.readInt("x", 0);
        this.f81579y = capsule.readInt("y", 0);
        this.width = capsule.readInt("width", 0);
        this.height = capsule.readInt("height", 0);
        this.xOffset = capsule.readInt("xOffset", 0);
        this.yOffset = capsule.readInt("yOffset", 0);
        this.xAdvance = capsule.readInt("xAdvance", 0);
        int[] readIntArray = capsule.readIntArray("seconds", null);
        int[] readIntArray2 = capsule.readIntArray("amounts", null);
        for (int i10 = 0; i10 < readIntArray.length; i10++) {
            this.kerning.put(readIntArray[i10], Integer.valueOf(readIntArray2[i10]));
        }
    }

    public void setChar(char c10) {
        this.f81577c = c10;
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setPage(int i10) {
        this.page = i10;
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    public void setX(int i10) {
        this.f81578x = i10;
    }

    public void setXAdvance(int i10) {
        this.xAdvance = i10;
    }

    public void setXOffset(int i10) {
        this.xOffset = i10;
    }

    public void setY(int i10) {
        this.f81579y = i10;
    }

    public void setYOffset(int i10) {
        this.yOffset = i10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        int i10 = 0;
        capsule.write((int) this.f81577c, AbstractC3834c.f32824b1, 0);
        capsule.write(this.f81578x, "x", 0);
        capsule.write(this.f81579y, "y", 0);
        capsule.write(this.width, "width", 0);
        capsule.write(this.height, "height", 0);
        capsule.write(this.xOffset, "xOffset", 0);
        capsule.write(this.yOffset, "yOffset", 0);
        capsule.write(this.xAdvance, "xAdvance", 0);
        int size = this.kerning.size();
        int[] iArr = new int[size];
        int[] iArr2 = new int[size];
        Iterator<IntMap.Entry<Integer>> it = this.kerning.iterator();
        while (it.hasNext()) {
            IntMap.Entry<Integer> next = it.next();
            iArr[i10] = next.getKey();
            iArr2[i10] = next.getValue().intValue();
            i10++;
        }
        capsule.write(iArr, "seconds", (int[]) null);
        capsule.write(iArr2, "amounts", (int[]) null);
    }

    public BitmapCharacter m1267clone() {
        try {
            BitmapCharacter bitmapCharacter = (BitmapCharacter) super.clone();
            bitmapCharacter.kerning = this.kerning.m1306clone();
            return bitmapCharacter;
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public BitmapCharacter(char c10) {
        this.f81577c = c10;
    }
}
