package com.jme3.shader;

import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.util.BufferUtils;
import com.jme3.util.TempVars;
import java.lang.reflect.InvocationTargetException;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class Uniform extends ShaderVariable {
    static final boolean $assertionsDisabled = false;
    protected UniformBinding binding;
    protected VarType varType;
    private static final Integer ZERO_INT = 0;
    private static final Float ZERO_FLT = Float.valueOf(0.0f);
    private static final FloatBuffer ZERO_BUF = BufferUtils.createFloatBuffer(16);
    protected Object value = null;
    protected FloatBuffer multiData = null;
    protected boolean setByCurrentMaterial = false;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$shader$VarType;

        static {
            int[] iArr = new int[VarType.values().length];
            $SwitchMap$com$jme3$shader$VarType = iArr;
            try {
                iArr[VarType.Int.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Boolean.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Float.ordinal()] = 3;
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
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix3.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix4.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.IntArray.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.FloatArray.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector2Array.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector3Array.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Vector4Array.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix3Array.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$jme3$shader$VarType[VarType.Matrix4Array.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public void clearSetByCurrentMaterial() {
        this.setByCurrentMaterial = false;
    }

    public void clearUpdateNeeded() {
        this.updateNeeded = false;
    }

    public void clearValue() {
        this.updateNeeded = true;
        FloatBuffer floatBuffer = this.multiData;
        if (floatBuffer != null) {
            floatBuffer.clear();
            while (this.multiData.remaining() > 0) {
                FloatBuffer floatBuffer2 = ZERO_BUF;
                floatBuffer2.clear();
                floatBuffer2.limit(Math.min(this.multiData.remaining(), 16));
                this.multiData.put(floatBuffer2);
            }
            this.multiData.clear();
            return;
        }
        VarType varType = this.varType;
        if (varType == null) {
            return;
        }
        switch (AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[varType.ordinal()]) {
            case 1:
                this.value = ZERO_INT;
                return;
            case 2:
                this.value = Boolean.FALSE;
                return;
            case 3:
                this.value = ZERO_FLT;
                return;
            case 4:
                Object obj = this.value;
                if (obj != null) {
                    ((Vector2f) obj).set(Vector2f.ZERO);
                    return;
                }
                return;
            case 5:
                Object obj2 = this.value;
                if (obj2 != null) {
                    ((Vector3f) obj2).set(Vector3f.ZERO);
                    return;
                }
                return;
            case 6:
                Object obj3 = this.value;
                if (obj3 != null) {
                    if (obj3 instanceof ColorRGBA) {
                        ((ColorRGBA) obj3).set(ColorRGBA.BlackNoAlpha);
                        return;
                    } else if (obj3 instanceof Vector4f) {
                        ((Vector4f) obj3).set(Vector4f.ZERO);
                        return;
                    } else {
                        ((Quaternion) obj3).set(Quaternion.ZERO);
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }

    public void deleteNativeBuffers() {
        Object obj = this.value;
        if (obj instanceof Buffer) {
            BufferUtils.destroyDirectBuffer((Buffer) obj);
            this.value = null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        Uniform uniform = (Uniform) obj;
        Object obj2 = this.value;
        Object obj3 = uniform.value;
        if (obj2 == obj3 || (obj2 != null && obj2.equals(obj3))) {
            return this.binding == uniform.binding && this.varType == uniform.varType;
        }
        return false;
    }

    public UniformBinding getBinding() {
        return this.binding;
    }

    public FloatBuffer getMultiData() {
        return this.multiData;
    }

    public Object getValue() {
        return this.value;
    }

    public VarType getVarType() {
        return this.varType;
    }

    public int hashCode() {
        Object obj = this.value;
        int hashCode = (155 + (obj != null ? obj.hashCode() : 0)) * 31;
        VarType varType = this.varType;
        int hashCode2 = (hashCode + (varType != null ? varType.hashCode() : 0)) * 31;
        UniformBinding uniformBinding = this.binding;
        return hashCode2 + (uniformBinding != null ? uniformBinding.hashCode() : 0);
    }

    public boolean isSetByCurrentMaterial() {
        return this.setByCurrentMaterial;
    }

    public boolean isUpdateNeeded() {
        return this.updateNeeded;
    }

    public void reset() {
        this.setByCurrentMaterial = false;
        this.location = -2;
        this.updateNeeded = true;
    }

    public void setBinding(UniformBinding uniformBinding) {
        this.binding = uniformBinding;
    }

    public void setValue(VarType varType, Object obj) {
        if (this.location == -1) {
            return;
        }
        VarType varType2 = this.varType;
        if (varType2 != null && varType2 != varType) {
            throw new IllegalArgumentException("Expected a " + this.varType.name() + " value!");
        }
        if (obj == null) {
            throw new IllegalArgumentException("for uniform " + this.name + ": value cannot be null");
        }
        this.setByCurrentMaterial = true;
        int i10 = 0;
        switch (AnonymousClass1.$SwitchMap$com$jme3$shader$VarType[varType.ordinal()]) {
            case 1:
            case 2:
            case 3:
                if (!obj.equals(this.value)) {
                    this.value = obj;
                    break;
                } else {
                    return;
                }
            case 4:
                if (!obj.equals(this.value)) {
                    Object obj2 = this.value;
                    if (obj2 != null) {
                        ((Vector2f) obj2).set((Vector2f) obj);
                        break;
                    } else {
                        this.value = new Vector2f((Vector2f) obj);
                        break;
                    }
                } else {
                    return;
                }
            case 5:
                if (!obj.equals(this.value)) {
                    Object obj3 = this.value;
                    if (obj3 != null) {
                        ((Vector3f) obj3).set((Vector3f) obj);
                        break;
                    } else {
                        this.value = new Vector3f((Vector3f) obj);
                        break;
                    }
                } else {
                    return;
                }
            case 6:
                if (!obj.equals(this.value)) {
                    TempVars tempVars = TempVars.get();
                    Vector4f vector4f = tempVars.vect4f1;
                    if (this.value == null) {
                        try {
                            this.value = obj.getClass().getDeclaredConstructor(null).newInstance(null);
                        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | NoSuchMethodException | SecurityException | InvocationTargetException e10) {
                            throw new IllegalArgumentException("Cannot instantiate param of class " + obj.getClass().getCanonicalName(), e10);
                        }
                    }
                    if (obj instanceof ColorRGBA) {
                        ColorRGBA colorRGBA = (ColorRGBA) obj;
                        vector4f.set(colorRGBA.f81598r, colorRGBA.f81597g, colorRGBA.f81596b, colorRGBA.f81595a);
                    } else if (obj instanceof Vector4f) {
                        vector4f.set((Vector4f) obj);
                    } else {
                        Quaternion quaternion = (Quaternion) obj;
                        vector4f.set(quaternion.getX(), quaternion.getY(), quaternion.getZ(), quaternion.getW());
                    }
                    Object obj4 = this.value;
                    if (obj4 instanceof ColorRGBA) {
                        ((ColorRGBA) obj4).set(vector4f.f81615x, vector4f.f81616y, vector4f.f81617z, vector4f.f81614w);
                    } else if (obj4 instanceof Vector4f) {
                        ((Vector4f) obj4).set(vector4f);
                    } else {
                        ((Quaternion) obj4).set(vector4f.f81615x, vector4f.f81616y, vector4f.f81617z, vector4f.f81614w);
                    }
                    tempVars.release();
                    break;
                } else {
                    return;
                }
            case 7:
                if (!obj.equals(this.value)) {
                    Matrix3f matrix3f = (Matrix3f) obj;
                    if (this.multiData == null) {
                        this.multiData = BufferUtils.createFloatBuffer(9);
                    }
                    matrix3f.fillFloatBuffer(this.multiData, true);
                    this.multiData.clear();
                    Object obj5 = this.value;
                    if (obj5 != null) {
                        ((Matrix3f) obj5).set(matrix3f);
                        break;
                    } else {
                        this.value = new Matrix3f(matrix3f);
                        break;
                    }
                } else {
                    return;
                }
            case 8:
                if (!obj.equals(this.value)) {
                    Matrix4f matrix4f = (Matrix4f) obj;
                    if (this.multiData == null) {
                        this.multiData = BufferUtils.createFloatBuffer(16);
                    }
                    matrix4f.fillFloatBuffer(this.multiData, true);
                    this.multiData.clear();
                    Object obj6 = this.value;
                    if (obj6 != null) {
                        ((Matrix4f) obj6).copy(matrix4f);
                        break;
                    } else {
                        this.value = new Matrix4f(matrix4f);
                        break;
                    }
                } else {
                    return;
                }
            case 9:
                int[] iArr = (int[]) obj;
                Object obj7 = this.value;
                if (obj7 == null) {
                    this.value = BufferUtils.createIntBuffer(iArr);
                } else {
                    IntBuffer ensureLargeEnough = BufferUtils.ensureLargeEnough((IntBuffer) obj7, iArr.length);
                    this.value = ensureLargeEnough;
                    ensureLargeEnough.put(iArr);
                }
                ((IntBuffer) this.value).clear();
                break;
            case 10:
                float[] fArr = (float[]) obj;
                FloatBuffer floatBuffer = this.multiData;
                if (floatBuffer == null) {
                    this.multiData = BufferUtils.createFloatBuffer(fArr);
                } else {
                    FloatBuffer ensureLargeEnough2 = BufferUtils.ensureLargeEnough(floatBuffer, fArr.length);
                    this.multiData = ensureLargeEnough2;
                    ensureLargeEnough2.put(fArr);
                }
                this.multiData.clear();
                break;
            case 11:
                Vector2f[] vector2fArr = (Vector2f[]) obj;
                FloatBuffer floatBuffer2 = this.multiData;
                if (floatBuffer2 == null) {
                    this.multiData = BufferUtils.createFloatBuffer(vector2fArr);
                } else {
                    this.multiData = BufferUtils.ensureLargeEnough(floatBuffer2, vector2fArr.length * 2);
                    while (i10 < vector2fArr.length) {
                        BufferUtils.setInBuffer(vector2fArr[i10], this.multiData, i10);
                        i10++;
                    }
                }
                this.multiData.clear();
                break;
            case 12:
                Vector3f[] vector3fArr = (Vector3f[]) obj;
                FloatBuffer floatBuffer3 = this.multiData;
                if (floatBuffer3 == null) {
                    this.multiData = BufferUtils.createFloatBuffer(vector3fArr);
                } else {
                    this.multiData = BufferUtils.ensureLargeEnough(floatBuffer3, vector3fArr.length * 3);
                    while (i10 < vector3fArr.length) {
                        BufferUtils.setInBuffer(vector3fArr[i10], this.multiData, i10);
                        i10++;
                    }
                }
                this.multiData.clear();
                break;
            case 13:
                Vector4f[] vector4fArr = (Vector4f[]) obj;
                FloatBuffer floatBuffer4 = this.multiData;
                if (floatBuffer4 == null) {
                    this.multiData = BufferUtils.createFloatBuffer(vector4fArr);
                } else {
                    this.multiData = BufferUtils.ensureLargeEnough(floatBuffer4, vector4fArr.length * 4);
                    while (i10 < vector4fArr.length) {
                        BufferUtils.setInBuffer(vector4fArr[i10], this.multiData, i10);
                        i10++;
                    }
                }
                this.multiData.clear();
                break;
            case 14:
                Matrix3f[] matrix3fArr = (Matrix3f[]) obj;
                FloatBuffer floatBuffer5 = this.multiData;
                if (floatBuffer5 == null) {
                    this.multiData = BufferUtils.createFloatBuffer(matrix3fArr.length * 9);
                } else {
                    this.multiData = BufferUtils.ensureLargeEnough(floatBuffer5, matrix3fArr.length * 9);
                }
                while (i10 < matrix3fArr.length) {
                    matrix3fArr[i10].fillFloatBuffer(this.multiData, true);
                    i10++;
                }
                this.multiData.clear();
                break;
            case 15:
                Matrix4f[] matrix4fArr = (Matrix4f[]) obj;
                FloatBuffer floatBuffer6 = this.multiData;
                if (floatBuffer6 == null) {
                    this.multiData = BufferUtils.createFloatBuffer(matrix4fArr.length * 16);
                } else {
                    this.multiData = BufferUtils.ensureLargeEnough(floatBuffer6, matrix4fArr.length * 16);
                }
                while (i10 < matrix4fArr.length) {
                    matrix4fArr[i10].fillFloatBuffer(this.multiData, true);
                    i10++;
                }
                this.multiData.clear();
                break;
            default:
                this.value = obj;
                break;
        }
        this.varType = varType;
        this.updateNeeded = true;
    }

    public void setVector4InArray(float f10, float f11, float f12, float f13, int i10) {
        if (this.location == -1) {
            return;
        }
        VarType varType = this.varType;
        if (varType != null && varType != VarType.Vector4Array) {
            throw new IllegalArgumentException("Expected a " + this.varType.name() + " value!");
        }
        this.multiData.position(i10 * 4);
        this.multiData.put(f10).put(f11).put(f12).put(f13);
        this.multiData.rewind();
        this.updateNeeded = true;
        this.setByCurrentMaterial = true;
    }

    public void setVector4Length(int i10) {
        if (this.location == -1) {
            return;
        }
        FloatBuffer ensureLargeEnough = BufferUtils.ensureLargeEnough(this.multiData, i10 * 4);
        this.multiData = ensureLargeEnough;
        this.value = ensureLargeEnough;
        this.varType = VarType.Vector4Array;
        this.updateNeeded = true;
        this.setByCurrentMaterial = true;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Uniform[name=");
        sb2.append(this.name);
        if (this.varType != null) {
            sb2.append(", type=");
            sb2.append((Object) this.varType);
            sb2.append(", value=");
            sb2.append(this.value);
        } else {
            sb2.append(", value=<not set>");
        }
        sb2.append("]");
        return sb2.toString();
    }
}
