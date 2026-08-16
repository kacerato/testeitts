package com.jme3.opencl;

import com.jme3.math.ColorRGBA;
import com.jme3.opencl.OpenCLObject;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.eclipse.jdt.internal.core.JavaElement;

public abstract class Image extends AbstractOpenCLObject {

    public enum ImageChannelOrder {
        R,
        Rx,
        A,
        INTENSITY,
        LUMINANCE,
        RG,
        RGx,
        RA,
        RGB,
        RGBx,
        RGBA,
        ARGB,
        BGRA
    }

    public enum ImageChannelType {
        SNORM_INT8,
        SNORM_INT16,
        UNORM_INT8,
        UNORM_INT16,
        UNORM_SHORT_565,
        UNORM_SHORT_555,
        UNORM_INT_101010,
        SIGNED_INT8,
        SIGNED_INT16,
        SIGNED_INT32,
        UNSIGNED_INT8,
        UNSIGNED_INT16,
        UNSIGNED_INT32,
        HALF_FLOAT,
        FLOAT
    }

    public static class ImageDescriptor {
        public long arraySize;
        public long depth;
        public long height;
        public ByteBuffer hostPtr;
        public long rowPitch;
        public long slicePitch;
        public ImageType type;
        public long width;

        public ImageDescriptor() {
        }

        public String toString() {
            return "ImageDescriptor{type=" + ((Object) this.type) + ", width=" + this.width + ", height=" + this.height + ", depth=" + this.depth + ", arraySize=" + this.arraySize + ", rowPitch=" + this.rowPitch + ", slicePitch=" + this.slicePitch + JavaElement.JEM_ANNOTATION;
        }

        public ImageDescriptor(ImageType imageType, long j10, long j11, long j12, long j13, long j14, long j15, ByteBuffer byteBuffer) {
            this.type = imageType;
            this.width = j10;
            this.height = j11;
            this.depth = j12;
            this.arraySize = j13;
            this.rowPitch = j14;
            this.slicePitch = j15;
            this.hostPtr = byteBuffer;
        }

        public ImageDescriptor(ImageType imageType, long j10, long j11, long j12, long j13) {
            this.type = imageType;
            this.width = j10;
            this.height = j11;
            this.depth = j12;
            this.arraySize = j13;
            this.rowPitch = 0L;
            this.slicePitch = 0L;
            this.hostPtr = null;
        }
    }

    public static class ImageFormat {
        public ImageChannelOrder channelOrder;
        public ImageChannelType channelType;

        public ImageFormat() {
        }

        public boolean equals(Object obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ImageFormat imageFormat = (ImageFormat) obj;
            return this.channelOrder == imageFormat.channelOrder && this.channelType == imageFormat.channelType;
        }

        public int hashCode() {
            return ((305 + Objects.hashCode(this.channelOrder)) * 61) + Objects.hashCode(this.channelType);
        }

        public String toString() {
            return "ImageFormat{channelOrder=" + ((Object) this.channelOrder) + ", channelType=" + ((Object) this.channelType) + JavaElement.JEM_ANNOTATION;
        }

        public ImageFormat(ImageChannelOrder imageChannelOrder, ImageChannelType imageChannelType) {
            this.channelOrder = imageChannelOrder;
            this.channelType = imageChannelType;
        }
    }

    public enum ImageType {
        IMAGE_1D,
        IMAGE_1D_BUFFER,
        IMAGE_2D,
        IMAGE_3D,
        IMAGE_1D_ARRAY,
        IMAGE_2D_ARRAY
    }

    public Image(OpenCLObject.ObjectReleaser objectReleaser) {
        super(objectReleaser);
    }

    public abstract Event acquireImageForSharingAsync(CommandQueue commandQueue);

    public void acquireImageForSharingNoEvent(CommandQueue commandQueue) {
        acquireImageForSharingAsync(commandQueue).release();
    }

    public abstract void copyTo(CommandQueue commandQueue, Image image, long[] jArr, long[] jArr2, long[] jArr3);

    public abstract Event copyToAsync(CommandQueue commandQueue, Image image, long[] jArr, long[] jArr2, long[] jArr3);

    public abstract Event copyToBufferAsync(CommandQueue commandQueue, Buffer buffer, long[] jArr, long[] jArr2, long j10);

    public abstract Event fillAsync(CommandQueue commandQueue, long[] jArr, long[] jArr2, ColorRGBA colorRGBA);

    public abstract Event fillAsync(CommandQueue commandQueue, long[] jArr, long[] jArr2, int[] iArr);

    public abstract long getArraySize();

    public abstract long getDepth();

    public abstract int getElementSize();

    public abstract long getHeight();

    public abstract ImageFormat getImageFormat();

    public abstract ImageType getImageType();

    public abstract long getRowPitch();

    public abstract long getSlicePitch();

    public abstract long getWidth();

    public abstract ImageMapping map(CommandQueue commandQueue, long[] jArr, long[] jArr2, MappingAccess mappingAccess);

    public abstract ImageMapping mapAsync(CommandQueue commandQueue, long[] jArr, long[] jArr2, MappingAccess mappingAccess);

    public abstract void readImage(CommandQueue commandQueue, ByteBuffer byteBuffer, long[] jArr, long[] jArr2, long j10, long j11);

    public abstract Event readImageAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long[] jArr, long[] jArr2, long j10, long j11);

    public abstract Event releaseImageForSharingAsync(CommandQueue commandQueue);

    public void releaseImageForSharingNoEvent(CommandQueue commandQueue) {
        releaseImageForSharingAsync(commandQueue).release();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Image (");
        ImageType imageType = getImageType();
        sb2.append((Object) imageType);
        sb2.append(", w=");
        sb2.append(getWidth());
        if (imageType == ImageType.IMAGE_2D || imageType == ImageType.IMAGE_3D) {
            sb2.append(", h=");
            sb2.append(getHeight());
        }
        if (imageType == ImageType.IMAGE_3D) {
            sb2.append(", d=");
            sb2.append(getDepth());
        }
        if (imageType == ImageType.IMAGE_1D_ARRAY || imageType == ImageType.IMAGE_2D_ARRAY) {
            sb2.append(", arrays=");
            sb2.append(getArraySize());
        }
        sb2.append(", ");
        sb2.append((Object) getImageFormat());
        sb2.append(')');
        return sb2.toString();
    }

    public abstract void unmap(CommandQueue commandQueue, ImageMapping imageMapping);

    public abstract void writeImage(CommandQueue commandQueue, ByteBuffer byteBuffer, long[] jArr, long[] jArr2, long j10, long j11);

    public abstract Event writeImageAsync(CommandQueue commandQueue, ByteBuffer byteBuffer, long[] jArr, long[] jArr2, long j10, long j11);

    @Override
    public Image register() {
        super.register();
        return this;
    }

    public static class ImageMapping {
        public final ByteBuffer buffer;
        public final Event event;
        public final long rowPitch;
        public final long slicePitch;

        public ImageMapping(ByteBuffer byteBuffer, long j10, long j11, Event event) {
            this.buffer = byteBuffer;
            this.rowPitch = j10;
            this.slicePitch = j11;
            this.event = event;
        }

        public ImageMapping(ByteBuffer byteBuffer, long j10, long j11) {
            this.buffer = byteBuffer;
            this.rowPitch = j10;
            this.slicePitch = j11;
            this.event = null;
        }
    }
}
