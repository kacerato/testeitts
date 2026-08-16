package com.jme3.shader;

import Ce.h;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.jme3.math.ColorRGBA;
import com.jme3.math.Matrix3f;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.Texture3D;
import com.jme3.texture.TextureArray;
import com.jme3.texture.TextureCubeMap;
import com.jme3.texture.TextureImage;

public enum VarType {
    Float(TypedValues.Custom.S_FLOAT, Float.TYPE, Float.class),
    Vector2("vec2", Vector2f.class),
    Vector3("vec3", Vector3f.class),
    Vector4("vec4", Vector4f.class, ColorRGBA.class),
    IntArray(true, false, "int", int[].class, Integer[].class),
    FloatArray(true, false, TypedValues.Custom.S_FLOAT, float[].class, Float[].class),
    Vector2Array(true, false, "vec2", Vector2f[].class),
    Vector3Array(true, false, "vec3", Vector3f[].class),
    Vector4Array(true, false, "vec4", Vector4f[].class),
    Int("int", Integer.TYPE, Integer.class),
    Boolean("bool", Boolean.TYPE, Boolean.class),
    Matrix3(true, false, "mat3", Matrix3f.class),
    Matrix4(true, false, "mat4", Matrix4f.class),
    Matrix3Array(true, false, "mat3", Matrix3f[].class),
    Matrix4Array(true, false, "mat4", Matrix4f[].class),
    TextureBuffer(false, true, "sampler1D|sampler1DShadow", new Class[0]),
    Texture2D(false, true, "sampler2D|sampler2DShadow", Texture2D.class, Texture.class),
    Texture3D(false, true, "sampler3D", Texture3D.class, Texture.class),
    TextureArray(false, true, "sampler2DArray|sampler2DArrayShadow", TextureArray.class, Texture.class),
    TextureCubeMap(false, true, "samplerCube", TextureCubeMap.class, Texture.class),
    Image2D(false, false, true, "image2D", TextureImage.class),
    Image3D(false, false, true, "image3D", TextureImage.class),
    UniformBufferObject(false, false, h.f4304o, BufferObject.class),
    ShaderStorageBufferObject(false, false, h.f4304o, BufferObject.class);

    private final String glslType;
    private boolean imageType;
    private final Class<?>[] javaTypes;
    private boolean textureType;
    private boolean usesMultiData;

    VarType(String str, Class... clsArr) {
        this.usesMultiData = false;
        this.textureType = false;
        this.imageType = false;
        this.glslType = str;
        if (clsArr != null) {
            this.javaTypes = clsArr;
        } else {
            this.javaTypes = new Class[0];
        }
    }

    public String getGlslType() {
        return this.glslType;
    }

    public Class<?>[] getJavaType() {
        return this.javaTypes;
    }

    public boolean isImageType() {
        return this.imageType;
    }

    public boolean isOfType(Object obj) {
        for (Class<?> cls : this.javaTypes) {
            if (cls.isAssignableFrom(obj.getClass())) {
                return true;
            }
        }
        return false;
    }

    public boolean isTextureType() {
        return this.textureType;
    }

    public boolean usesMultiData() {
        return this.usesMultiData;
    }

    VarType(boolean z10, boolean z11, String str, Class... clsArr) {
        this.imageType = false;
        this.usesMultiData = z10;
        this.textureType = z11;
        this.glslType = str;
        if (clsArr != null) {
            this.javaTypes = clsArr;
        } else {
            this.javaTypes = new Class[0];
        }
    }

    VarType(boolean z10, boolean z11, boolean z12, String str, Class... clsArr) {
        this(z10, z11, str, clsArr);
        this.imageType = z12;
    }
}
