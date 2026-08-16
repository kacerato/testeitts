package com.itsmagic.engine.Engines.Engine.Material;

import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import org.eclipse.jdt.internal.core.JavaElement;

@Deprecated
public class ShaderEntryMaterial {

    @Expose
    public String codeName;

    @Expose
    public ColorINT color;

    @Expose
    public float floatValue;

    @Expose
    public String textureFile;

    @Expose
    public String tittle;

    @Expose
    public a type;

    @Expose
    public Vector2 vector2;

    @Expose
    public Vector3 vector3;

    public enum a {
        Texture,
        Color,
        Vector2,
        Vector3,
        Float,
        Null
    }

    public String a() {
        return this.tittle.equalsIgnoreCase(SerializableShaderEntry.f81152f) ? "albedo" : this.tittle.equalsIgnoreCase("Mapping") ? "albedoTilling" : this.tittle.equalsIgnoreCase(SerializableShaderEntry.f81153g) ? "diffuse" : this.tittle.equalsIgnoreCase("AmbientOcclusion") ? "aoMap" : this.tittle.equalsIgnoreCase("AmbientOcclusion Mapping") ? "aoTilling" : this.tittle.equalsIgnoreCase("AmbientOcclusion Offset") ? "aoOffset" : this.tittle.equalsIgnoreCase("NormalMap") ? "normalMap" : this.tittle.equalsIgnoreCase("NormalMap Mapping") ? "normalTilling" : this.tittle.equalsIgnoreCase("NormalMap Offset") ? "normalOffset" : this.tittle;
    }

    public a b() {
        a aVar = this.type;
        return aVar == null ? a.Null : aVar;
    }

    public String toString() {
        return "ShaderEntryMaterial{type=" + ((Object) this.type) + ", codeName='" + this.codeName + JavaElement.JEM_MODULAR_CLASSFILE + ", tittle='" + this.tittle + JavaElement.JEM_MODULAR_CLASSFILE + ", textureFile='" + this.textureFile + JavaElement.JEM_MODULAR_CLASSFILE + ", color=" + ((Object) this.color) + ", vector2=" + ((Object) this.vector2) + ", vector3=" + ((Object) this.vector3) + ", floatValue=" + this.floatValue + JavaElement.JEM_ANNOTATION;
    }
}
