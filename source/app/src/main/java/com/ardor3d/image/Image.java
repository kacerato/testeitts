package com.ardor3d.image;

import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import com.google.common.collect.M1;
import java.io.IOException;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Image implements Serializable, Savable {
    private static final long serialVersionUID = 1;
    protected List<ByteBuffer> _data;
    protected int _depth;
    protected ImageDataFormat _format;
    protected int _height;
    protected int[] _mipMapSizes;
    protected ImageDataType _type;
    protected int _width;

    public Image() {
        this._format = ImageDataFormat.RGBA;
        this._type = ImageDataType.UnsignedByte;
        this._data = new ArrayList(1);
    }

    public void addData(ByteBuffer byteBuffer) {
        if (this._data == null) {
            this._data = new ArrayList(1);
        }
        this._data.add(byteBuffer);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Image)) {
            return false;
        }
        Image image = (Image) obj;
        if (getDataFormat() != image.getDataFormat() || getDataType() != image.getDataType() || getWidth() != image.getWidth() || getHeight() != image.getHeight() || !getData().equals(image.getData())) {
            return false;
        }
        if (getMipMapByteSizes() == null || Arrays.equals(getMipMapByteSizes(), image.getMipMapByteSizes())) {
            return getMipMapByteSizes() != null || image.getMipMapByteSizes() == null;
        }
        return false;
    }

    @Override
    public Class<? extends Image> getClassTag() {
        return getClass();
    }

    public List<ByteBuffer> getData() {
        return this._data;
    }

    public ImageDataFormat getDataFormat() {
        return this._format;
    }

    public int getDataSize() {
        List<ByteBuffer> list = this._data;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public ImageDataType getDataType() {
        return this._type;
    }

    public int getDepth() {
        return this._depth;
    }

    public int getHeight() {
        return this._height;
    }

    public int[] getMipMapByteSizes() {
        return this._mipMapSizes;
    }

    public int getWidth() {
        return this._width;
    }

    public boolean hasMipmaps() {
        return this._mipMapSizes != null;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._format = (ImageDataFormat) inputCapsule.readEnum("dataformat", ImageDataFormat.class, ImageDataFormat.RGBA);
        this._type = (ImageDataType) inputCapsule.readEnum("datatype", ImageDataType.class, ImageDataType.UnsignedByte);
        this._width = inputCapsule.readInt("width", 0);
        this._height = inputCapsule.readInt("height", 0);
        this._depth = inputCapsule.readInt("depth", 0);
        this._mipMapSizes = inputCapsule.readIntArray("mipMapSizes", null);
        this._data = inputCapsule.readByteBufferList("data", null);
    }

    public void setData(List<ByteBuffer> list) {
        if (list != null) {
            this._data = list;
            return;
        }
        throw new NullPointerException("data may not be null.");
    }

    public void setDataFormat(ImageDataFormat imageDataFormat) {
        if (imageDataFormat == null) {
            throw new NullPointerException("format may not be null.");
        }
        this._format = imageDataFormat;
    }

    public void setDataType(ImageDataType imageDataType) {
        if (imageDataType == null) {
            throw new NullPointerException("type may not be null.");
        }
        this._type = imageDataType;
    }

    public void setDepth(int i10) {
        this._depth = i10;
    }

    public void setHeight(int i10) {
        this._height = i10;
    }

    public void setMipMapByteSizes(int[] iArr) {
        if (iArr != null && iArr.length <= 1) {
            iArr = null;
        }
        this._mipMapSizes = iArr;
    }

    public void setWidth(int i10) {
        this._width = i10;
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        outputCapsule.write(this._format, "dataformat", ImageDataFormat.RGBA);
        outputCapsule.write(this._type, "datatype", ImageDataType.UnsignedByte);
        outputCapsule.write(this._width, "width", 0);
        outputCapsule.write(this._height, "height", 0);
        outputCapsule.write(this._depth, "depth", 0);
        outputCapsule.write(this._mipMapSizes, "mipMapSizes", (int[]) null);
        outputCapsule.writeByteBufferList(this._data, "data", null);
    }

    public ByteBuffer getData(int i10) {
        if (this._data.size() > i10) {
            return this._data.get(i10);
        }
        return null;
    }

    public void setData(ByteBuffer byteBuffer) {
        this._data = M1.t(byteBuffer);
    }

    public void setData(int i10, ByteBuffer byteBuffer) {
        if (i10 >= 0) {
            while (this._data.size() <= i10) {
                this._data.add(null);
            }
            this._data.set(i10, byteBuffer);
            return;
        }
        throw new IllegalArgumentException("index must be greater than or equal to 0.");
    }

    public Image(ImageDataFormat imageDataFormat, ImageDataType imageDataType, int i10, int i11, List<ByteBuffer> list, int[] iArr) {
        this._format = ImageDataFormat.RGBA;
        this._type = ImageDataType.UnsignedByte;
        if (iArr != null && iArr.length <= 1) {
            iArr = null;
        }
        setDataFormat(imageDataFormat);
        setDataType(imageDataType);
        setData(list);
        this._width = i10;
        this._height = i11;
        this._depth = list.size();
        this._mipMapSizes = iArr;
    }

    public Image(ImageDataFormat imageDataFormat, ImageDataType imageDataType, int i10, int i11, ByteBuffer byteBuffer, int[] iArr) {
        this(imageDataFormat, imageDataType, i10, i11, M1.t(byteBuffer), iArr);
    }
}
