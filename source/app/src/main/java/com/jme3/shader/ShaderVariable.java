package com.jme3.shader;

public class ShaderVariable {
    public static final int LOC_NOT_DEFINED = -1;
    public static final int LOC_UNKNOWN = -2;
    protected int location = -2;
    protected String name = null;
    protected boolean updateNeeded = true;

    public int getLocation() {
        return this.location;
    }

    public String getName() {
        return this.name;
    }

    public void setLocation(int i10) {
        this.location = i10;
    }

    public void setName(String str) {
        this.name = str;
    }
}
