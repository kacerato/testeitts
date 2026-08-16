package com.jme3.material;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.shader.ShaderNodeVariable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaElement;

public class ShaderGenerationInfo implements Savable, Cloneable {
    protected List<ShaderNodeVariable> attributes = new ArrayList();
    protected List<ShaderNodeVariable> vertexUniforms = new ArrayList();
    protected ShaderNodeVariable vertexGlobal = null;
    protected List<ShaderNodeVariable> varyings = new ArrayList();
    protected List<ShaderNodeVariable> fragmentUniforms = new ArrayList();
    protected List<ShaderNodeVariable> fragmentGlobals = new ArrayList();
    protected List<String> unusedNodes = new ArrayList();

    public List<ShaderNodeVariable> getAttributes() {
        return this.attributes;
    }

    public List<ShaderNodeVariable> getFragmentGlobals() {
        return this.fragmentGlobals;
    }

    public List<ShaderNodeVariable> getFragmentUniforms() {
        return this.fragmentUniforms;
    }

    public List<String> getUnusedNodes() {
        return this.unusedNodes;
    }

    public List<ShaderNodeVariable> getVaryings() {
        return this.varyings;
    }

    public ShaderNodeVariable getVertexGlobal() {
        return this.vertexGlobal;
    }

    public List<ShaderNodeVariable> getVertexUniforms() {
        return this.vertexUniforms;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.attributes = capsule.readSavableArrayList(ClasspathEntry.TAG_ATTRIBUTES, new ArrayList());
        this.vertexUniforms = capsule.readSavableArrayList("vertexUniforms", new ArrayList());
        this.varyings = capsule.readSavableArrayList("varyings", new ArrayList());
        this.fragmentUniforms = capsule.readSavableArrayList("fragmentUniforms", new ArrayList());
        this.fragmentGlobals = capsule.readSavableArrayList("fragmentGlobals", new ArrayList());
        this.vertexGlobal = (ShaderNodeVariable) capsule.readSavable("vertexGlobal", null);
    }

    public void setUnusedNodes(List<String> list) {
        this.unusedNodes = list;
    }

    public void setVertexGlobal(ShaderNodeVariable shaderNodeVariable) {
        this.vertexGlobal = shaderNodeVariable;
    }

    public String toString() {
        return "ShaderGenerationInfo{attributes=" + ((Object) this.attributes) + ", vertexUniforms=" + ((Object) this.vertexUniforms) + ", vertexGlobal=" + ((Object) this.vertexGlobal) + ", varyings=" + ((Object) this.varyings) + ", fragmentUniforms=" + ((Object) this.fragmentUniforms) + ", fragmentGlobals=" + ((Object) this.fragmentGlobals) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.writeSavableArrayList((ArrayList) this.attributes, ClasspathEntry.TAG_ATTRIBUTES, new ArrayList());
        capsule.writeSavableArrayList((ArrayList) this.vertexUniforms, "vertexUniforms", new ArrayList());
        capsule.writeSavableArrayList((ArrayList) this.varyings, "varyings", new ArrayList());
        capsule.writeSavableArrayList((ArrayList) this.fragmentUniforms, "fragmentUniforms", new ArrayList());
        capsule.writeSavableArrayList((ArrayList) this.fragmentGlobals, "fragmentGlobals", new ArrayList());
        capsule.write(this.vertexGlobal, "vertexGlobal", (Savable) null);
    }

    public ShaderGenerationInfo m1277clone() throws CloneNotSupportedException {
        ShaderGenerationInfo shaderGenerationInfo = (ShaderGenerationInfo) super.clone();
        shaderGenerationInfo.attributes = new ArrayList();
        shaderGenerationInfo.vertexUniforms = new ArrayList();
        shaderGenerationInfo.fragmentUniforms = new ArrayList();
        shaderGenerationInfo.fragmentGlobals = new ArrayList();
        shaderGenerationInfo.unusedNodes = new ArrayList();
        shaderGenerationInfo.varyings = new ArrayList();
        Iterator<ShaderNodeVariable> it = this.attributes.iterator();
        while (it.hasNext()) {
            shaderGenerationInfo.attributes.add(it.next().m1299clone());
        }
        Iterator<ShaderNodeVariable> it2 = this.vertexUniforms.iterator();
        while (it2.hasNext()) {
            shaderGenerationInfo.vertexUniforms.add(it2.next().m1299clone());
        }
        ShaderNodeVariable shaderNodeVariable = this.vertexGlobal;
        if (shaderNodeVariable != null) {
            shaderGenerationInfo.vertexGlobal = shaderNodeVariable.m1299clone();
        }
        Iterator<ShaderNodeVariable> it3 = this.varyings.iterator();
        while (it3.hasNext()) {
            shaderGenerationInfo.varyings.add(it3.next().m1299clone());
        }
        Iterator<ShaderNodeVariable> it4 = this.fragmentUniforms.iterator();
        while (it4.hasNext()) {
            shaderGenerationInfo.fragmentUniforms.add(it4.next().m1299clone());
        }
        Iterator<ShaderNodeVariable> it5 = this.fragmentGlobals.iterator();
        while (it5.hasNext()) {
            shaderGenerationInfo.fragmentGlobals.add(it5.next().m1299clone());
        }
        shaderGenerationInfo.unusedNodes.addAll(this.unusedNodes);
        return shaderGenerationInfo;
    }
}
