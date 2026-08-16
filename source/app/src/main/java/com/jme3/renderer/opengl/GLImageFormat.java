package com.jme3.renderer.opengl;

public final class GLImageFormat {
    public final boolean colorRenderable;
    public final boolean compressed;
    public final int dataType;
    public final boolean depthRenderable;
    public final boolean filterable;
    public final int format;
    public final int internalFormat;
    public final boolean swizzleRequired;

    public GLImageFormat(int i10, int i11, int i12, boolean z10, boolean z11, boolean z12) {
        this.internalFormat = i10;
        this.format = i11;
        this.dataType = i12;
        this.compressed = false;
        this.colorRenderable = z10;
        this.depthRenderable = z11;
        this.filterable = z12;
        this.swizzleRequired = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || GLImageFormat.class != obj.getClass()) {
            return false;
        }
        GLImageFormat gLImageFormat = (GLImageFormat) obj;
        return this.internalFormat == gLImageFormat.internalFormat && this.format == gLImageFormat.format && this.dataType == gLImageFormat.dataType && this.compressed == gLImageFormat.compressed && this.colorRenderable == gLImageFormat.colorRenderable && this.depthRenderable == gLImageFormat.depthRenderable && this.filterable == gLImageFormat.filterable && this.swizzleRequired == gLImageFormat.swizzleRequired;
    }

    public int hashCode() {
        return ((((((((((((((679 + this.internalFormat) * 97) + this.format) * 97) + this.dataType) * 97) + (this.compressed ? 1 : 0)) * 97) + (this.colorRenderable ? 1 : 0)) * 97) + (this.depthRenderable ? 1 : 0)) * 97) + (this.filterable ? 1 : 0)) * 97) + (this.swizzleRequired ? 1 : 0);
    }

    public GLImageFormat(int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.internalFormat = i10;
        this.format = i11;
        this.dataType = i12;
        this.compressed = z10;
        this.colorRenderable = z11;
        this.depthRenderable = z12;
        this.filterable = z13;
        this.swizzleRequired = false;
    }

    public GLImageFormat(int i10, int i11, int i12, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.internalFormat = i10;
        this.format = i11;
        this.dataType = i12;
        this.compressed = z10;
        this.colorRenderable = z12;
        this.depthRenderable = z13;
        this.filterable = z14;
        this.swizzleRequired = z11;
    }
}
