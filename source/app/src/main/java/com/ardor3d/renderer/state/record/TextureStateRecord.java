package com.ardor3d.renderer.state.record;

import com.ardor3d.image.Texture;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector4;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Iterator;

public class TextureStateRecord extends StateRecord {
    public static final float[] DEFAULT_S_PLANE = {1.0f, 0.0f, 0.0f, 0.0f};
    public static final float[] DEFAULT_T_PLANE = {0.0f, 1.0f, 0.0f, 0.0f};
    public static final float[] DEFAULT_R_PLANE = {0.0f, 0.0f, 1.0f, 0.0f};
    public static final float[] DEFAULT_Q_PLANE = {0.0f, 0.0f, 0.0f, 1.0f};
    public FloatBuffer plane = BufferUtils.createFloatBuffer(4);
    public int hint = -1;
    public int currentUnit = -1;
    public final Vector3 tmp_rotation1 = new Vector3();
    public final DoubleBuffer tmp_matrixBuffer = BufferUtils.createDoubleBuffer(16);
    public HashMap<Integer, TextureRecord> textures = new HashMap<>();
    public TextureUnitRecord[] units = new TextureUnitRecord[32];

    public TextureStateRecord() {
        int i10 = 0;
        while (true) {
            TextureUnitRecord[] textureUnitRecordArr = this.units;
            if (i10 >= textureUnitRecordArr.length) {
                return;
            }
            textureUnitRecordArr[i10] = new TextureUnitRecord();
            i10++;
        }
    }

    public TextureRecord getTextureRecord(int i10, Texture.Type type) {
        TextureRecord textureRecord = this.textures.get(Integer.valueOf(i10));
        if (textureRecord != null) {
            return textureRecord;
        }
        TextureRecord textureRecord2 = new TextureRecord();
        this.textures.put(Integer.valueOf(i10), textureRecord2);
        return textureRecord2;
    }

    @Override
    public void invalidate() {
        super.invalidate();
        this.currentUnit = -1;
        this.hint = -1;
        Iterator<TextureRecord> it = this.textures.values().iterator();
        while (it.hasNext()) {
            it.next().invalidate();
        }
        int i10 = 0;
        while (true) {
            TextureUnitRecord[] textureUnitRecordArr = this.units;
            if (i10 >= textureUnitRecordArr.length) {
                return;
            }
            textureUnitRecordArr[i10].invalidate();
            i10++;
        }
    }

    public void prepPlane(ReadOnlyVector4 readOnlyVector4, float[] fArr) {
        if (readOnlyVector4 == null) {
            this.plane.put(fArr);
        } else {
            this.plane.put(readOnlyVector4.getXf());
            this.plane.put(readOnlyVector4.getYf());
            this.plane.put(readOnlyVector4.getZf());
            this.plane.put(readOnlyVector4.getWf());
        }
        this.plane.rewind();
    }

    public void removeTextureRecord(int i10) {
        this.textures.remove(Integer.valueOf(i10));
        int i11 = 0;
        while (true) {
            TextureUnitRecord[] textureUnitRecordArr = this.units;
            if (i11 >= textureUnitRecordArr.length) {
                return;
            }
            TextureUnitRecord textureUnitRecord = textureUnitRecordArr[i11];
            if (textureUnitRecord.boundTexture == i10) {
                textureUnitRecord.boundTexture = -1;
            }
            i11++;
        }
    }

    @Override
    public void validate() {
        super.validate();
        Iterator<TextureRecord> it = this.textures.values().iterator();
        while (it.hasNext()) {
            it.next().validate();
        }
        int i10 = 0;
        while (true) {
            TextureUnitRecord[] textureUnitRecordArr = this.units;
            if (i10 >= textureUnitRecordArr.length) {
                return;
            }
            textureUnitRecordArr[i10].validate();
            i10++;
        }
    }
}
