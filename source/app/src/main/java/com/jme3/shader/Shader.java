package com.jme3.shader;

import com.jme3.renderer.Renderer;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.IntMap;
import com.jme3.util.ListMap;
import com.jme3.util.NativeObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class Shader extends NativeObject {
    static final boolean $assertionsDisabled = false;
    private final IntMap<Attribute> attribs;
    private final ArrayList<Uniform> boundUniforms;
    private final ListMap<String, ShaderBufferBlock> bufferBlocks;
    private final ArrayList<ShaderSource> shaderSourceList;
    private final ListMap<String, Uniform> uniforms;

    public enum ShaderType {
        Fragment("frag"),
        Vertex("vert"),
        Geometry("geom"),
        TessellationControl("tsctrl"),
        TessellationEvaluation("tseval");

        private String extension;

        ShaderType(String str) {
            this.extension = str;
        }

        public String getExtension() {
            return this.extension;
        }
    }

    public Shader() {
        this.shaderSourceList = new ArrayList<>();
        this.uniforms = new ListMap<>();
        this.bufferBlocks = new ListMap<>();
        this.attribs = new IntMap<>();
        this.boundUniforms = new ArrayList<>();
    }

    public void addSource(ShaderType shaderType, String str, String str2, String str3, String str4) {
        ShaderSource shaderSource = new ShaderSource(shaderType);
        shaderSource.setSource(str2);
        shaderSource.setName(str);
        shaderSource.setLanguage(str4);
        if (str3 != null) {
            shaderSource.setDefines(str3);
        }
        this.shaderSourceList.add(shaderSource);
        setUpdateNeeded();
    }

    public void addUniformBinding(UniformBinding uniformBinding) {
        String str = "g_" + uniformBinding.name();
        if (this.uniforms.get(str) == null) {
            Uniform uniform = new Uniform();
            uniform.name = str;
            uniform.binding = uniformBinding;
            this.uniforms.put(str, uniform);
            this.boundUniforms.add(uniform);
        }
    }

    public void clearUniformsSetByCurrentFlag() {
        int size = this.uniforms.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.uniforms.getValue(i10).clearSetByCurrentMaterial();
        }
    }

    @Override
    public NativeObject createDestructableClone() {
        return new Shader(this);
    }

    @Override
    public void deleteObject(Object obj) {
        ((Renderer) obj).deleteShader(this);
    }

    public Attribute getAttribute(VertexBuffer.Type type) {
        int ordinal = type.ordinal();
        Attribute attribute = this.attribs.get(ordinal);
        if (attribute != null) {
            return attribute;
        }
        Attribute attribute2 = new Attribute();
        attribute2.name = type.name();
        this.attribs.put(ordinal, attribute2);
        return attribute2;
    }

    public ArrayList<Uniform> getBoundUniforms() {
        return this.boundUniforms;
    }

    public ShaderBufferBlock getBufferBlock(String str) {
        ShaderBufferBlock shaderBufferBlock = this.bufferBlocks.get(str);
        if (shaderBufferBlock != null) {
            return shaderBufferBlock;
        }
        ShaderBufferBlock shaderBufferBlock2 = new ShaderBufferBlock();
        shaderBufferBlock2.name = str;
        this.bufferBlocks.put(str, shaderBufferBlock2);
        return shaderBufferBlock2;
    }

    public ListMap<String, ShaderBufferBlock> getBufferBlockMap() {
        return this.bufferBlocks;
    }

    public Collection<ShaderSource> getSources() {
        return this.shaderSourceList;
    }

    public Uniform getUniform(String str) {
        Uniform uniform = this.uniforms.get(str);
        if (uniform != null) {
            return uniform;
        }
        Uniform uniform2 = new Uniform();
        uniform2.name = str;
        this.uniforms.put(str, uniform2);
        return uniform2;
    }

    public ListMap<String, Uniform> getUniformMap() {
        return this.uniforms;
    }

    @Override
    public long getUniqueId() {
        return (this.f81661id & 4294967295L) | 17179869184L;
    }

    public void removeBufferBlock(String str) {
        this.bufferBlocks.remove(str);
    }

    public void removeUniform(String str) {
        this.uniforms.remove(str);
    }

    public void resetLocations() {
        ListMap<String, Uniform> listMap = this.uniforms;
        if (listMap != null) {
            Iterator<Uniform> it = listMap.values().iterator();
            while (it.hasNext()) {
                it.next().reset();
            }
        }
        ListMap<String, ShaderBufferBlock> listMap2 = this.bufferBlocks;
        if (listMap2 != null) {
            Iterator<ShaderBufferBlock> it2 = listMap2.values().iterator();
            while (it2.hasNext()) {
                it2.next().reset();
            }
        }
        IntMap<Attribute> intMap = this.attribs;
        if (intMap != null) {
            Iterator<IntMap.Entry<Attribute>> it3 = intMap.iterator();
            while (it3.hasNext()) {
                it3.next().getValue().location = -2;
            }
        }
    }

    @Override
    public void resetObject() {
        this.f81661id = -1;
        Iterator<ShaderSource> it = this.shaderSourceList.iterator();
        while (it.hasNext()) {
            it.next().resetObject();
        }
        setUpdateNeeded();
    }

    public void resetUniformsNotSetByCurrent() {
        int size = this.uniforms.size();
        for (int i10 = 0; i10 < size; i10++) {
            Uniform value = this.uniforms.getValue(i10);
            if (!value.isSetByCurrentMaterial()) {
                value.clearValue();
            }
        }
    }

    @Override
    public void setUpdateNeeded() {
        super.setUpdateNeeded();
        resetLocations();
    }

    @Override
    public String toString() {
        return Shader.class.getSimpleName() + "[numSources=" + this.shaderSourceList.size() + ", numUniforms=" + this.uniforms.size() + ", numBufferBlocks=" + this.bufferBlocks.size() + ", shaderSources=" + ((Object) getSources()) + "]";
    }

    public static class ShaderSource extends NativeObject {
        String defines;
        String language;
        String name;
        String source;
        ShaderType sourceType;

        public ShaderSource(ShaderType shaderType) {
            this.sourceType = shaderType;
            if (shaderType == null) {
                throw new IllegalArgumentException("The shader type must be specified");
            }
        }

        @Override
        public NativeObject createDestructableClone() {
            return new ShaderSource(this);
        }

        @Override
        public void deleteObject(Object obj) {
            ((Renderer) obj).deleteShaderSource(this);
        }

        public String getDefines() {
            return this.defines;
        }

        public String getLanguage() {
            return this.language;
        }

        public String getName() {
            return this.name;
        }

        public String getSource() {
            return this.source;
        }

        public ShaderType getType() {
            return this.sourceType;
        }

        @Override
        public long getUniqueId() {
            return (this.f81661id & 4294967295L) | 21474836480L;
        }

        @Override
        public void resetObject() {
            this.f81661id = -1;
            setUpdateNeeded();
        }

        public void setDefines(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Shader defines cannot be null");
            }
            this.defines = str;
            setUpdateNeeded();
        }

        public void setLanguage(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Shader language cannot be null");
            }
            this.language = str;
            setUpdateNeeded();
        }

        public void setName(String str) {
            this.name = str;
        }

        public void setSource(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Shader source cannot be null");
            }
            this.source = str;
            setUpdateNeeded();
        }

        @Override
        public String toString() {
            String str;
            if (this.name != null) {
                str = "name=" + this.name + ", ";
            } else {
                str = "";
            }
            if (this.defines != null) {
                str = str + "defines, ";
            }
            return getClass().getSimpleName() + "[" + str + "type=" + this.sourceType.name() + ", language=" + this.language + "]";
        }

        public ShaderSource(ShaderSource shaderSource) {
            super(shaderSource.f81661id);
        }

        public ShaderSource() {
        }
    }

    public Shader(Shader shader) {
        super(shader.f81661id);
        this.shaderSourceList = new ArrayList<>();
        Iterator<ShaderSource> it = shader.shaderSourceList.iterator();
        while (it.hasNext()) {
            this.shaderSourceList.add((ShaderSource) it.next().createDestructableClone());
        }
        this.uniforms = null;
        this.bufferBlocks = null;
        this.boundUniforms = null;
        this.attribs = null;
    }
}
