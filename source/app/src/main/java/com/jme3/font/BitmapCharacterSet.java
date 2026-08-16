package com.jme3.font;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.util.IntMap;
import java.io.IOException;
import java.util.Iterator;

public class BitmapCharacterSet implements Savable {
    private int base;
    private final IntMap<IntMap<BitmapCharacter>> characters = new IntMap<>();
    private int height;
    private int lineHeight;
    private int pageSize;
    private int renderedSize;
    private int width;

    private IntMap<BitmapCharacter> getCharacterSet(int i10) {
        if (this.characters.size() == 0) {
            this.characters.put(i10, new IntMap<>());
        }
        return this.characters.get(i10);
    }

    private IntMap<BitmapCharacter> readCharset(InputCapsule inputCapsule, int i10) throws IOException {
        IntMap<BitmapCharacter> intMap = new IntMap<>();
        short[] readShortArray = inputCapsule.readShortArray("indexes" + i10, null);
        Savable[] readSavableArray = inputCapsule.readSavableArray("chars" + i10, null);
        for (int i11 = 0; i11 < readShortArray.length; i11++) {
            intMap.put(readShortArray[i11] & 65535, (BitmapCharacter) readSavableArray[i11]);
        }
        return intMap;
    }

    public void addCharacter(int i10, BitmapCharacter bitmapCharacter) {
        getCharacterSet(0).put(i10, bitmapCharacter);
    }

    public int getBase() {
        return this.base;
    }

    public BitmapCharacter getCharacter(int i10) {
        return getCharacter(i10, 0);
    }

    public int getHeight() {
        return this.height;
    }

    public int getLineHeight() {
        return this.lineHeight;
    }

    public int getRenderedSize() {
        return this.renderedSize;
    }

    public int getWidth() {
        return this.width;
    }

    public void merge(BitmapCharacterSet bitmapCharacterSet) {
        if (this.renderedSize != bitmapCharacterSet.renderedSize) {
            throw new RuntimeException("Only support same font size");
        }
        Iterator<IntMap.Entry<IntMap<BitmapCharacter>>> it = bitmapCharacterSet.characters.iterator();
        while (it.hasNext()) {
            IntMap.Entry<IntMap<BitmapCharacter>> next = it.next();
            int key = next.getKey();
            if (key == 0) {
                throw new RuntimeException("Style must be set first. use setStyle(int)");
            }
            IntMap<BitmapCharacter> value = next.getValue();
            this.lineHeight = Math.max(this.lineHeight, bitmapCharacterSet.lineHeight);
            if (this.characters.put(key, value) != null) {
                throw new RuntimeException("Can't override old style");
            }
            Iterator<IntMap.Entry<BitmapCharacter>> it2 = value.iterator();
            while (it2.hasNext()) {
                BitmapCharacter value2 = it2.next().getValue();
                value2.setPage(value2.getPage() + this.pageSize);
            }
        }
        this.pageSize += bitmapCharacterSet.pageSize;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.lineHeight = capsule.readInt("lineHeight", 0);
        this.base = capsule.readInt("base", 0);
        this.renderedSize = capsule.readInt("renderedSize", 0);
        this.width = capsule.readInt("width", 0);
        this.height = capsule.readInt("height", 0);
        this.pageSize = capsule.readInt("pageSize", 0);
        for (int i10 : capsule.readIntArray("styles", null)) {
            this.characters.put(i10, readCharset(capsule, i10));
        }
    }

    public void setBase(int i10) {
        this.base = i10;
    }

    public void setHeight(int i10) {
        this.height = i10;
    }

    public void setLineHeight(int i10) {
        this.lineHeight = i10;
    }

    public void setPageSize(int i10) {
        this.pageSize = i10;
    }

    public void setRenderedSize(int i10) {
        this.renderedSize = i10;
    }

    public void setStyle(int i10) {
        if (this.characters.size() > 1) {
            throw new RuntimeException("Applicable only for single style font");
        }
        IntMap.Entry<IntMap<BitmapCharacter>> next = this.characters.iterator().next();
        IntMap<BitmapCharacter> value = next.getValue();
        this.characters.remove(next.getKey());
        this.characters.put(i10, value);
    }

    public void setWidth(int i10) {
        this.width = i10;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        int i10 = 0;
        capsule.write(this.lineHeight, "lineHeight", 0);
        capsule.write(this.base, "base", 0);
        capsule.write(this.renderedSize, "renderedSize", 0);
        capsule.write(this.width, "width", 0);
        capsule.write(this.height, "height", 0);
        capsule.write(this.pageSize, "pageSize", 0);
        int[] iArr = new int[this.characters.size()];
        Iterator<IntMap.Entry<IntMap<BitmapCharacter>>> it = this.characters.iterator();
        while (it.hasNext()) {
            IntMap.Entry<IntMap<BitmapCharacter>> next = it.next();
            int key = next.getKey();
            iArr[i10] = key;
            i10++;
            writeCharset(capsule, key, next.getValue());
        }
        capsule.write(iArr, "styles", (int[]) null);
    }

    public void writeCharset(OutputCapsule outputCapsule, int i10, IntMap<BitmapCharacter> intMap) throws IOException {
        int size = intMap.size();
        short[] sArr = new short[size];
        BitmapCharacter[] bitmapCharacterArr = new BitmapCharacter[size];
        Iterator<IntMap.Entry<BitmapCharacter>> it = intMap.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            IntMap.Entry<BitmapCharacter> next = it.next();
            sArr[i11] = (short) next.getKey();
            bitmapCharacterArr[i11] = next.getValue();
            i11++;
        }
        outputCapsule.write(sArr, "indexes" + i10, (short[]) null);
        outputCapsule.write(bitmapCharacterArr, "chars" + i10, (Savable[]) null);
    }

    public BitmapCharacter getCharacter(int i10, int i11) {
        return getCharacterSet(i11).get(i10);
    }
}
