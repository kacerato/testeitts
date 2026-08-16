package com.jme3.material;

import com.jme3.asset.TextureKey;
import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.shader.VarType;
import com.jme3.texture.Texture;
import java.io.IOException;
import java.lang.constant.ConstantDescs;
import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class MatParam implements Savable, Cloneable {
    protected String name;
    protected String prefixedName;
    protected VarType type;
    protected boolean typeCheck = true;
    protected Object value;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$shader$VarType;

        static {
            int[] iArr = new int[VarType.values().length];
            $SwitchMap$com$jme3$shader$VarType = iArr;
            try {
                iArr[VarType.Boolean.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Float.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Int.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector3.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector4.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Texture2D.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Texture3D.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.TextureArray.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.TextureBuffer.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.TextureCubeMap.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector2Array.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector3Array.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector4Array.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix3Array.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix4Array.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MatParam(VarType varType, String str, Object obj) {
        this.type = varType;
        this.name = str;
        this.prefixedName = "m_" + str;
        this.value = obj;
    }

    private String getWrapMode(Texture texture, Texture.WrapAxis wrapAxis) {
        Texture.WrapMode wrapMode = Texture.WrapMode.EdgeClamp;
        try {
            Texture.WrapMode wrap = texture.getWrap(wrapAxis);
            if (wrap != wrapMode) {
                return "Wrap" + wrap.name() + ConstantDescs.DEFAULT_NAME + wrapAxis.name() + " ";
            }
        } catch (IllegalArgumentException unused) {
        }
        return "";
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MatParam matParam = (MatParam) obj;
        if (this.type != matParam.type) {
            return false;
        }
        String str = this.name;
        if (str != null ? !str.equals(matParam.name) : matParam.name != null) {
            return false;
        }
        Object obj2 = this.value;
        Object obj3 = matParam.value;
        if (obj2 != obj3) {
            return obj2 != null && obj2.equals(obj3);
        }
        return true;
    }

    public String getName() {
        return this.name;
    }

    public String getPrefixedName() {
        return this.prefixedName;
    }

    public Object getValue() {
        return this.value;
    }

    public String getValueAsString() {
        switch (AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[this.type.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return this.value.toString();
            case 4:
                Vector2f vector2f = (Vector2f) this.value;
                return vector2f.getX() + " " + vector2f.getY();
            case 5:
                Vector3f vector3f = (Vector3f) this.value;
                return vector3f.getX() + " " + vector3f.getY() + " " + vector3f.getZ();
            case 6:
                Object obj = this.value;
                if (obj instanceof Vector4f) {
                    Vector4f vector4f = (Vector4f) obj;
                    return vector4f.getX() + " " + vector4f.getY() + " " + vector4f.getZ() + " " + vector4f.getW();
                }
                if (obj instanceof ColorRGBA) {
                    ColorRGBA colorRGBA = (ColorRGBA) obj;
                    return colorRGBA.getRed() + " " + colorRGBA.getGreen() + " " + colorRGBA.getBlue() + " " + colorRGBA.getAlpha();
                }
                if (!(obj instanceof Quaternion)) {
                    throw new UnsupportedOperationException("Unexpected Vector4 type: " + this.value);
                }
                Quaternion quaternion = (Quaternion) obj;
                return quaternion.getX() + " " + quaternion.getY() + " " + quaternion.getZ() + " " + quaternion.getW();
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                Texture texture = (Texture) this.value;
                TextureKey textureKey = (TextureKey) texture.getKey();
                if (textureKey == null) {
                    return ((Object) texture) + ":returned null key";
                }
                String str = "";
                if (textureKey.isFlipY()) {
                    str = "Flip ";
                }
                String str2 = ((str + getWrapMode(texture, Texture.WrapAxis.S)) + getWrapMode(texture, Texture.WrapAxis.T)) + getWrapMode(texture, Texture.WrapAxis.R);
                Texture.MinFilter minFilter = Texture.MinFilter.BilinearNoMipMaps;
                if (texture.getImage().hasMipmaps() || textureKey.isGenerateMips()) {
                    minFilter = Texture.MinFilter.Trilinear;
                }
                if (texture.getMinFilter() != minFilter) {
                    str2 = str2 + "Min" + texture.getMinFilter().name() + " ";
                }
                if (texture.getMagFilter() != Texture.MagFilter.Bilinear) {
                    str2 = str2 + "Mag" + texture.getMagFilter().name() + " ";
                }
                return str2 + JavadocConstants.ANCHOR_PREFIX_END + textureKey.getName() + JavadocConstants.ANCHOR_PREFIX_END;
            default:
                return null;
        }
    }

    public VarType getVarType() {
        return this.type;
    }

    public int hashCode() {
        VarType varType = this.type;
        int hashCode = (413 + (varType != null ? varType.hashCode() : 0)) * 59;
        String str = this.name;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 59;
        Object obj = this.value;
        return hashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public boolean isTypeCheckEnabled() {
        return this.typeCheck;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.type = (VarType) capsule.readEnum("varType", VarType.class, null);
        this.name = capsule.readString("name", null);
        this.prefixedName = "m_" + this.name;
        int i10 = AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[getVarType().ordinal()];
        if (i10 == 1) {
            this.value = Boolean.valueOf(capsule.readBoolean("value_bool", false));
        } else if (i10 == 2) {
            this.value = Float.valueOf(capsule.readFloat("value_float", 0.0f));
        } else if (i10 != 3) {
            switch (i10) {
                case 12:
                    Savable[] readSavableArray = capsule.readSavableArray("value_savable_array", null);
                    if (readSavableArray != null) {
                        Vector2f[] vector2fArr = new Vector2f[readSavableArray.length];
                        this.value = vector2fArr;
                        System.arraycopy(readSavableArray, 0, vector2fArr, 0, readSavableArray.length);
                        break;
                    }
                    break;
                case 13:
                    Savable[] readSavableArray2 = capsule.readSavableArray("value_savable_array", null);
                    if (readSavableArray2 != null) {
                        Vector3f[] vector3fArr = new Vector3f[readSavableArray2.length];
                        this.value = vector3fArr;
                        System.arraycopy(readSavableArray2, 0, vector3fArr, 0, readSavableArray2.length);
                        break;
                    }
                    break;
                case 14:
                    Savable[] readSavableArray3 = capsule.readSavableArray("value_savable_array", null);
                    if (readSavableArray3 != null) {
                        Vector4f[] vector4fArr = new Vector4f[readSavableArray3.length];
                        this.value = vector4fArr;
                        System.arraycopy(readSavableArray3, 0, vector4fArr, 0, readSavableArray3.length);
                        break;
                    }
                    break;
                case 15:
                    Savable[] readSavableArray4 = capsule.readSavableArray("value_savable_array", null);
                    if (readSavableArray4 != null) {
                        Matrix3f[] matrix3fArr = new Matrix3f[readSavableArray4.length];
                        this.value = matrix3fArr;
                        System.arraycopy(readSavableArray4, 0, matrix3fArr, 0, readSavableArray4.length);
                        break;
                    }
                    break;
                case 16:
                    Savable[] readSavableArray5 = capsule.readSavableArray("value_savable_array", null);
                    if (readSavableArray5 != null) {
                        Matrix4f[] matrix4fArr = new Matrix4f[readSavableArray5.length];
                        this.value = matrix4fArr;
                        System.arraycopy(readSavableArray5, 0, matrix4fArr, 0, readSavableArray5.length);
                        break;
                    }
                    break;
                default:
                    this.value = capsule.readSavable("value_savable", null);
                    break;
            }
        } else {
            this.value = Integer.valueOf(capsule.readInt("value_int", 0));
        }
        this.typeCheck = capsule.readBoolean("typeCheck", true);
    }

    public void setName(String str) {
        this.name = str;
        this.prefixedName = "m_" + str;
    }

    public void setTypeCheckEnabled(boolean z10) {
        this.typeCheck = z10;
    }

    public void setValue(Object obj) {
        VarType varType;
        if (isTypeCheckEnabled() && obj != null && (varType = this.type) != null && varType.getJavaType().length != 0) {
            for (Class<?> cls : this.type.getJavaType()) {
                if (!cls.isAssignableFrom(obj.getClass())) {
                }
            }
            throw new RuntimeException("Trying to assign a value of type " + ((Object) obj.getClass()) + " to " + getName() + " of type " + this.type.name() + ". Valid types are " + Arrays.deepToString(this.type.getJavaType()));
        }
        this.value = obj;
    }

    public String toString() {
        if (this.value == null) {
            return this.type.name() + " " + this.name;
        }
        return this.type.name() + " " + this.name + " : " + getValueAsString();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.type, "varType", (Enum) null);
        capsule.write(this.name, "name", (String) null);
        Object obj = this.value;
        if (obj == null) {
            return;
        }
        if (obj instanceof Savable) {
            capsule.write((Savable) obj, "value_savable", (Savable) null);
        } else if (obj instanceof Float) {
            capsule.write(((Float) obj).floatValue(), "value_float", 0.0f);
        } else if (obj instanceof Integer) {
            capsule.write(((Integer) obj).intValue(), "value_int", 0);
        } else if (obj instanceof Boolean) {
            capsule.write(((Boolean) obj).booleanValue(), "value_bool", false);
        } else if (obj.getClass().isArray()) {
            Object obj2 = this.value;
            if (obj2 instanceof Savable[]) {
                capsule.write((Savable[]) obj2, "value_savable_array", (Savable[]) null);
            }
        }
        capsule.write(this.typeCheck, "typeCheck", true);
    }

    public MatParam m1274clone() {
        try {
            return (MatParam) super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new AssertionError();
        }
    }

    public MatParam() {
    }
}
