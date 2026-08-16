package com.jme3.texture;

import com.jme3.renderer.opengl.GL4;
import com.jme3.renderer.opengl.TextureUtil;
import com.jme3.texture.Image;
import java.util.Objects;

public class TextureImage {
    private Access access;
    private int layer;
    private int level;
    private Texture texture;
    private boolean updateFlag;

    public enum Access {
        ReadOnly(true, false, 35000),
        WriteOnly(false, true, 35001),
        ReadWrite(true, true, 35002);

        private final int glEnum;
        private final boolean read;
        private final boolean write;

        Access(boolean z10, boolean z11, int i10) {
            this.read = z10;
            this.write = z11;
            this.glEnum = i10;
        }

        public int getGlEnum() {
            return this.glEnum;
        }

        public boolean isRead() {
            return this.read;
        }

        public boolean isWrite() {
            return this.write;
        }
    }

    public TextureImage(Texture texture) {
        this(texture, 0, -1, Access.ReadWrite);
    }

    public void bindImage(GL4 gl4, TextureUtil textureUtil, int i10) {
        Image image = this.texture.getImage();
        gl4.glBindImageTexture(i10, image.getId(), this.level, isLayered(), Math.max(this.layer, 0), this.access.getGlEnum(), textureUtil.getImageFormat(image.getFormat(), false).internalFormat);
    }

    public boolean clearUpdateNeeded() {
        boolean z10 = this.updateFlag;
        this.updateFlag = false;
        return z10;
    }

    public Access getAccess() {
        return this.access;
    }

    public Image.Format getFormat() {
        return this.texture.getImage().getFormat();
    }

    public Image getImage() {
        return this.texture.getImage();
    }

    public int getImageId() {
        return this.texture.getImage().getId();
    }

    public int getLayer() {
        return this.layer;
    }

    public int getLevel() {
        return this.level;
    }

    public Texture getTexture() {
        return this.texture;
    }

    public boolean isLayered() {
        return this.layer < 0;
    }

    public boolean isUpdateNeeded() {
        return this.updateFlag;
    }

    public void setAccess(Access access) {
        if (this.access != access) {
            this.access = access;
            this.updateFlag = true;
        }
    }

    public void setLayer(int i10) {
        int i11 = this.layer;
        if (i11 != i10) {
            if (i11 >= 0 || i10 >= 0) {
                this.layer = i10;
                this.updateFlag = true;
            }
        }
    }

    public void setLevel(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("Texture image level cannot be negative.");
        }
        if (this.level != i10) {
            this.level = i10;
            this.updateFlag = true;
        }
    }

    public void setTexture(Texture texture) {
        Objects.requireNonNull(texture, "Wrapped texture cannot be null.");
        if (this.texture != texture) {
            this.texture = texture;
            this.updateFlag = true;
        }
    }

    public void setUpdateNeeded() {
        this.updateFlag = true;
    }

    public TextureImage(Texture texture, Access access) {
        this(texture, 0, -1, access);
    }

    public TextureImage(Texture texture, int i10, int i11) {
        this(texture, i10, i11, Access.ReadWrite);
    }

    public TextureImage(Texture texture, int i10, int i11, Access access) {
        this.updateFlag = true;
        Objects.requireNonNull(texture, "Underlying texture cannot be null");
        this.texture = texture;
        this.level = i10;
        this.layer = i11;
        this.access = access;
        if (i10 < 0) {
            throw new IllegalArgumentException("Level cannot be less than zero.");
        }
    }
}
