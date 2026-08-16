package com.jme3.shader.plugins;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class ShaderDependencyNode {
    private String extensions;
    private String shaderName;
    private String shaderSource;
    private final List<ShaderDependencyNode> dependencies = new ArrayList();
    private final List<Integer> dependencyInjectIndices = new ArrayList();
    private final List<ShaderDependencyNode> dependOnMe = new ArrayList();

    public ShaderDependencyNode(String str) {
        this.shaderName = str;
    }

    public void addDependency(int i10, ShaderDependencyNode shaderDependencyNode) {
        if (this.dependencies.contains(shaderDependencyNode)) {
            return;
        }
        this.dependencies.add(shaderDependencyNode);
        this.dependencyInjectIndices.add(Integer.valueOf(i10));
        shaderDependencyNode.dependOnMe.add(this);
    }

    public List<ShaderDependencyNode> getDependOnMe() {
        return Collections.unmodifiableList(this.dependOnMe);
    }

    public List<ShaderDependencyNode> getDependencies() {
        return Collections.unmodifiableList(this.dependencies);
    }

    public List<Integer> getDependencyInjectIndices() {
        return Collections.unmodifiableList(this.dependencyInjectIndices);
    }

    public String getExtensions() {
        return this.extensions;
    }

    public String getName() {
        return this.shaderName;
    }

    public String getSource() {
        return this.shaderSource;
    }

    public void removeDependency(ShaderDependencyNode shaderDependencyNode) {
        int indexOf = this.dependencies.indexOf(shaderDependencyNode);
        if (indexOf != -1) {
            this.dependencies.remove(indexOf);
            this.dependencyInjectIndices.remove(indexOf);
            return;
        }
        throw new IllegalArgumentException("The given node " + shaderDependencyNode.getName() + " is not in this node's (" + getName() + ") dependency list");
    }

    public void setExtensions(String str) {
        this.extensions = str;
    }

    public void setName(String str) {
        this.shaderName = str;
    }

    public void setSource(String str) {
        this.shaderSource = str;
    }
}
