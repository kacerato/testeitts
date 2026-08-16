package com.jme3.font;

import com.jme3.material.Material;
import com.jme3.scene.Geometry;
import com.jme3.scene.Mesh;
import com.jme3.scene.Spatial;
import com.jme3.scene.VertexBuffer;
import com.jme3.texture.Texture2D;
import com.jme3.util.BufferUtils;
import com.jme3.util.clone.Cloner;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.LinkedList;

public class BitmapTextPage extends Geometry {
    private final byte[] color;
    private final short[] idx;
    private final int page;
    private final LinkedList<LetterQuad> pageQuads;
    private final float[] pos;

    private final float[] f81580tc;
    private final Texture2D texture;

    public BitmapTextPage(BitmapFont bitmapFont, boolean z10, int i10) {
        super("BitmapFont", new Mesh());
        this.pageQuads = new LinkedList<>();
        setRequiresUpdates(false);
        setBatchHint(Spatial.BatchHint.Never);
        if (bitmapFont != null) {
            this.page = i10;
            Material page = bitmapFont.getPage(i10);
            if (page != null) {
                setMaterial(page);
                this.texture = (Texture2D) page.getTextureParam("ColorMap").getTextureValue();
                Mesh mesh = getMesh();
                mesh.setBuffer(VertexBuffer.Type.Position, 3, new float[0]);
                mesh.setBuffer(VertexBuffer.Type.TexCoord, 2, new float[0]);
                VertexBuffer.Type type = VertexBuffer.Type.Color;
                mesh.setBuffer(type, 4, new byte[0]);
                mesh.setBuffer(VertexBuffer.Type.Index, 3, new short[0]);
                mesh.getBuffer(type).setNormalized(true);
                this.pos = new float[12];
                this.f81580tc = new float[8];
                this.idx = new short[6];
                this.color = new byte[16];
                return;
            }
            throw new IllegalStateException("The font's texture was not found!");
        }
        throw new IllegalArgumentException("font cannot be null.");
    }

    public void assemble(Letters letters) {
        this.pageQuads.clear();
        letters.rewind();
        while (letters.nextCharacter()) {
            if (letters.isPrintable() && letters.getCharacterSetPage() == this.page) {
                this.pageQuads.add(letters.getQuad());
            }
        }
        Mesh mesh = getMesh();
        int size = this.pageQuads.size();
        int size2 = this.pageQuads.size();
        VertexBuffer buffer = mesh.getBuffer(VertexBuffer.Type.Position);
        VertexBuffer buffer2 = mesh.getBuffer(VertexBuffer.Type.TexCoord);
        VertexBuffer buffer3 = mesh.getBuffer(VertexBuffer.Type.Index);
        VertexBuffer buffer4 = mesh.getBuffer(VertexBuffer.Type.Color);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        FloatBuffer floatBuffer2 = (FloatBuffer) buffer2.getData();
        ShortBuffer shortBuffer = (ShortBuffer) buffer3.getData();
        ByteBuffer byteBuffer = (ByteBuffer) buffer4.getData();
        floatBuffer.rewind();
        int i10 = size * 12;
        FloatBuffer ensureLargeEnough = BufferUtils.ensureLargeEnough(floatBuffer, i10);
        ensureLargeEnough.limit(i10);
        buffer.updateData(ensureLargeEnough);
        floatBuffer2.rewind();
        int i11 = size * 8;
        FloatBuffer ensureLargeEnough2 = BufferUtils.ensureLargeEnough(floatBuffer2, i11);
        ensureLargeEnough2.limit(i11);
        buffer2.updateData(ensureLargeEnough2);
        byteBuffer.rewind();
        int i12 = size * 16;
        ByteBuffer ensureLargeEnough3 = BufferUtils.ensureLargeEnough(byteBuffer, i12);
        ensureLargeEnough3.limit(i12);
        buffer4.updateData(ensureLargeEnough3);
        shortBuffer.rewind();
        int i13 = size2 * 6;
        ShortBuffer ensureLargeEnough4 = BufferUtils.ensureLargeEnough(shortBuffer, i13);
        ensureLargeEnough4.limit(i13);
        buffer3.updateData(ensureLargeEnough4);
        mesh.updateCounts();
        int i14 = 0;
        if (this.pos != null) {
            while (i14 < this.pageQuads.size()) {
                this.pageQuads.get(i14).storeToArrays(this.pos, this.f81580tc, this.idx, this.color, i14);
                ensureLargeEnough.put(this.pos);
                ensureLargeEnough2.put(this.f81580tc);
                ensureLargeEnough4.put(this.idx);
                ensureLargeEnough3.put(this.color);
                i14++;
            }
        } else {
            while (i14 < this.pageQuads.size()) {
                LetterQuad letterQuad = this.pageQuads.get(i14);
                letterQuad.appendPositions(ensureLargeEnough);
                letterQuad.appendTexCoords(ensureLargeEnough2);
                letterQuad.appendIndices(ensureLargeEnough4, i14);
                letterQuad.appendColors(ensureLargeEnough3);
                i14++;
            }
        }
        ensureLargeEnough.rewind();
        ensureLargeEnough2.rewind();
        ensureLargeEnough4.rewind();
        ensureLargeEnough3.rewind();
        updateModelBound();
    }

    @Override
    public void cloneFields(Cloner cloner, Object obj) {
        Mesh mesh = this.mesh;
        super.cloneFields(cloner, obj);
        Mesh mesh2 = this.mesh;
        if (mesh2 == mesh) {
            this.mesh = mesh2.deepClone();
        }
    }

    public Texture2D getTexture() {
        return this.texture;
    }

    @Override
    public BitmapTextPage mo1263clone() {
        return (BitmapTextPage) super.mo1263clone();
    }

    public BitmapTextPage(BitmapFont bitmapFont, boolean z10) {
        this(bitmapFont, z10, 0);
    }

    public BitmapTextPage(BitmapFont bitmapFont) {
        this(bitmapFont, false, 0);
    }
}
