package com.jme3.shader.bufferobject.layout;

import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Quaternion;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.shader.bufferobject.layout.BufferLayout;
import java.nio.ByteBuffer;

public class RawLayout extends BufferLayout {
    public RawLayout() {
        registerSerializer(new BufferLayout.ObjectSerializer<byte[]>(byte[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, byte[] bArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, byte[] bArr) {
                return bArr.length;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, byte[] bArr) {
                byteBuffer.put(bArr);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Integer>(Integer.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Integer num) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Integer num) {
                return 4;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Integer num) {
                byteBuffer.putInt(num.intValue());
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Boolean>(Boolean.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Boolean bool) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Boolean bool) {
                return 4;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Boolean bool) {
                byteBuffer.putInt(bool.booleanValue() ? 1 : 0);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Float>(Float.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Float f10) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Float f10) {
                return 4;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Float f10) {
                byteBuffer.putFloat(f10.floatValue());
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Vector2f>(Vector2f.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Vector2f vector2f) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Vector2f vector2f) {
                return 8;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Vector2f vector2f) {
                byteBuffer.putFloat(vector2f.f81609x);
                byteBuffer.putFloat(vector2f.f81610y);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<ColorRGBA>(ColorRGBA.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, ColorRGBA colorRGBA) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, ColorRGBA colorRGBA) {
                return 16;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, ColorRGBA colorRGBA) {
                byteBuffer.putFloat(colorRGBA.f81598r);
                byteBuffer.putFloat(colorRGBA.f81597g);
                byteBuffer.putFloat(colorRGBA.f81596b);
                byteBuffer.putFloat(colorRGBA.f81595a);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Quaternion>(Quaternion.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Quaternion quaternion) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Quaternion quaternion) {
                return 16;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Quaternion quaternion) {
                byteBuffer.putFloat(quaternion.getX());
                byteBuffer.putFloat(quaternion.getY());
                byteBuffer.putFloat(quaternion.getZ());
                byteBuffer.putFloat(quaternion.getW());
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Vector4f>(Vector4f.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Vector4f vector4f) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Vector4f vector4f) {
                return 16;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Vector4f vector4f) {
                byteBuffer.putFloat(vector4f.f81615x);
                byteBuffer.putFloat(vector4f.f81616y);
                byteBuffer.putFloat(vector4f.f81617z);
                byteBuffer.putFloat(vector4f.f81614w);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Vector3f>(Vector3f.class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Vector3f vector3f) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Vector3f vector3f) {
                return 12;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Vector3f vector3f) {
                byteBuffer.putFloat(vector3f.f81611x);
                byteBuffer.putFloat(vector3f.f81612y);
                byteBuffer.putFloat(vector3f.f81613z);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Integer[]>(Integer[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Integer[] numArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Integer[] numArr) {
                return numArr.length * 4;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Integer[] numArr) {
                for (Integer num : numArr) {
                    byteBuffer.putInt(num.intValue());
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Float[]>(Float[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Float[] fArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Float[] fArr) {
                return fArr.length * 4;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Float[] fArr) {
                for (Float f10 : fArr) {
                    byteBuffer.putFloat(f10.floatValue());
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Boolean[]>(Boolean[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Boolean[] boolArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Boolean[] boolArr) {
                return boolArr.length * 4;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Boolean[] boolArr) {
                for (Boolean bool : boolArr) {
                    byteBuffer.putInt(bool.booleanValue() ? 1 : 0);
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Vector2f[]>(Vector2f[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Vector2f[] vector2fArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Vector2f[] vector2fArr) {
                return vector2fArr.length * 8;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Vector2f[] vector2fArr) {
                for (Vector2f vector2f : vector2fArr) {
                    byteBuffer.putFloat(vector2f.f81609x);
                    byteBuffer.putFloat(vector2f.f81610y);
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Vector3f[]>(Vector3f[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Vector3f[] vector3fArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Vector3f[] vector3fArr) {
                return vector3fArr.length * 12;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Vector3f[] vector3fArr) {
                for (Vector3f vector3f : vector3fArr) {
                    byteBuffer.putFloat(vector3f.f81611x);
                    byteBuffer.putFloat(vector3f.f81612y);
                    byteBuffer.putFloat(vector3f.f81613z);
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Vector4f[]>(Vector4f[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Vector4f[] vector4fArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Vector4f[] vector4fArr) {
                return vector4fArr.length * 16;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Vector4f[] vector4fArr) {
                for (Vector4f vector4f : vector4fArr) {
                    byteBuffer.putFloat(vector4f.f81615x);
                    byteBuffer.putFloat(vector4f.f81616y);
                    byteBuffer.putFloat(vector4f.f81617z);
                    byteBuffer.putFloat(vector4f.f81614w);
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<ColorRGBA[]>(ColorRGBA[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, ColorRGBA[] colorRGBAArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, ColorRGBA[] colorRGBAArr) {
                return colorRGBAArr.length * 16;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, ColorRGBA[] colorRGBAArr) {
                for (ColorRGBA colorRGBA : colorRGBAArr) {
                    byteBuffer.putFloat(colorRGBA.f81598r);
                    byteBuffer.putFloat(colorRGBA.f81597g);
                    byteBuffer.putFloat(colorRGBA.f81596b);
                    byteBuffer.putFloat(colorRGBA.f81595a);
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Quaternion[]>(Quaternion[].class) {
            @Override
            public int basicAlignment(BufferLayout bufferLayout, Quaternion[] quaternionArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Quaternion[] quaternionArr) {
                return quaternionArr.length * 16;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Quaternion[] quaternionArr) {
                for (Quaternion quaternion : quaternionArr) {
                    byteBuffer.putFloat(quaternion.getX());
                    byteBuffer.putFloat(quaternion.getY());
                    byteBuffer.putFloat(quaternion.getZ());
                    byteBuffer.putFloat(quaternion.getW());
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Matrix3f>(Matrix3f.class) {
            final Vector3f tmp = new Vector3f();

            @Override
            public int basicAlignment(BufferLayout bufferLayout, Matrix3f matrix3f) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Matrix3f matrix3f) {
                return 36;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Matrix3f matrix3f) {
                matrix3f.getColumn(0, this.tmp);
                byteBuffer.putFloat(this.tmp.f81611x);
                byteBuffer.putFloat(this.tmp.f81612y);
                byteBuffer.putFloat(this.tmp.f81613z);
                matrix3f.getColumn(1, this.tmp);
                byteBuffer.putFloat(this.tmp.f81611x);
                byteBuffer.putFloat(this.tmp.f81612y);
                byteBuffer.putFloat(this.tmp.f81613z);
                matrix3f.getColumn(2, this.tmp);
                byteBuffer.putFloat(this.tmp.f81611x);
                byteBuffer.putFloat(this.tmp.f81612y);
                byteBuffer.putFloat(this.tmp.f81613z);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Matrix4f>(Matrix4f.class) {
            final float[] tmpF = new float[4];

            @Override
            public int basicAlignment(BufferLayout bufferLayout, Matrix4f matrix4f) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Matrix4f matrix4f) {
                return 64;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Matrix4f matrix4f) {
                matrix4f.getColumn(0, this.tmpF);
                byteBuffer.putFloat(this.tmpF[0]);
                byteBuffer.putFloat(this.tmpF[1]);
                byteBuffer.putFloat(this.tmpF[2]);
                byteBuffer.putFloat(this.tmpF[3]);
                matrix4f.getColumn(1, this.tmpF);
                byteBuffer.putFloat(this.tmpF[0]);
                byteBuffer.putFloat(this.tmpF[1]);
                byteBuffer.putFloat(this.tmpF[2]);
                byteBuffer.putFloat(this.tmpF[3]);
                matrix4f.getColumn(2, this.tmpF);
                byteBuffer.putFloat(this.tmpF[0]);
                byteBuffer.putFloat(this.tmpF[1]);
                byteBuffer.putFloat(this.tmpF[2]);
                byteBuffer.putFloat(this.tmpF[3]);
                matrix4f.getColumn(3, this.tmpF);
                byteBuffer.putFloat(this.tmpF[0]);
                byteBuffer.putFloat(this.tmpF[1]);
                byteBuffer.putFloat(this.tmpF[2]);
                byteBuffer.putFloat(this.tmpF[3]);
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Matrix3f[]>(Matrix3f[].class) {
            final Vector3f tmp = new Vector3f();

            @Override
            public int basicAlignment(BufferLayout bufferLayout, Matrix3f[] matrix3fArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Matrix3f[] matrix3fArr) {
                return matrix3fArr.length * 36;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Matrix3f[] matrix3fArr) {
                for (Matrix3f matrix3f : matrix3fArr) {
                    matrix3f.getColumn(0, this.tmp);
                    byteBuffer.putFloat(this.tmp.f81611x);
                    byteBuffer.putFloat(this.tmp.f81612y);
                    byteBuffer.putFloat(this.tmp.f81613z);
                    matrix3f.getColumn(1, this.tmp);
                    byteBuffer.putFloat(this.tmp.f81611x);
                    byteBuffer.putFloat(this.tmp.f81612y);
                    byteBuffer.putFloat(this.tmp.f81613z);
                    matrix3f.getColumn(2, this.tmp);
                    byteBuffer.putFloat(this.tmp.f81611x);
                    byteBuffer.putFloat(this.tmp.f81612y);
                    byteBuffer.putFloat(this.tmp.f81613z);
                }
            }
        });
        registerSerializer(new BufferLayout.ObjectSerializer<Matrix4f[]>(Matrix4f[].class) {
            final float[] tmpF = new float[4];

            @Override
            public int basicAlignment(BufferLayout bufferLayout, Matrix4f[] matrix4fArr) {
                return 1;
            }

            @Override
            public int length(BufferLayout bufferLayout, Matrix4f[] matrix4fArr) {
                return matrix4fArr.length * 64;
            }

            @Override
            public void write(BufferLayout bufferLayout, ByteBuffer byteBuffer, Matrix4f[] matrix4fArr) {
                for (Matrix4f matrix4f : matrix4fArr) {
                    matrix4f.getColumn(0, this.tmpF);
                    byteBuffer.putFloat(this.tmpF[0]);
                    byteBuffer.putFloat(this.tmpF[1]);
                    byteBuffer.putFloat(this.tmpF[2]);
                    byteBuffer.putFloat(this.tmpF[3]);
                    matrix4f.getColumn(1, this.tmpF);
                    byteBuffer.putFloat(this.tmpF[0]);
                    byteBuffer.putFloat(this.tmpF[1]);
                    byteBuffer.putFloat(this.tmpF[2]);
                    byteBuffer.putFloat(this.tmpF[3]);
                    matrix4f.getColumn(2, this.tmpF);
                    byteBuffer.putFloat(this.tmpF[0]);
                    byteBuffer.putFloat(this.tmpF[1]);
                    byteBuffer.putFloat(this.tmpF[2]);
                    byteBuffer.putFloat(this.tmpF[3]);
                    matrix4f.getColumn(3, this.tmpF);
                    byteBuffer.putFloat(this.tmpF[0]);
                    byteBuffer.putFloat(this.tmpF[1]);
                    byteBuffer.putFloat(this.tmpF[2]);
                    byteBuffer.putFloat(this.tmpF[3]);
                }
            }
        });
    }

    @Override
    public String getId() {
        return "raw";
    }
}
