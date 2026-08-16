package android.renderscript;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Allocation.class
 */
public class Allocation extends BaseObj {
    public static final int USAGE_GRAPHICS_CONSTANTS = 8;
    public static final int USAGE_GRAPHICS_RENDER_TARGET = 16;
    public static final int USAGE_GRAPHICS_TEXTURE = 2;
    public static final int USAGE_GRAPHICS_VERTEX = 4;
    public static final int USAGE_IO_INPUT = 32;
    public static final int USAGE_IO_OUTPUT = 64;
    public static final int USAGE_SCRIPT = 1;
    public static final int USAGE_SHARED = 128;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Allocation$MipmapControl.class
 */
    public enum MipmapControl {
        MIPMAP_FULL,
        MIPMAP_NONE,
        MIPMAP_ON_SYNC_TO_TEXTURE
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/renderscript/Allocation$OnBufferAvailableListener.class
 */
    public interface OnBufferAvailableListener {
        void onBufferAvailable(Allocation allocation);
    }

    public Allocation() {
        throw new RuntimeException("Stub!");
    }

    public Element getElement() {
        throw new RuntimeException("Stub!");
    }

    public int getUsage() {
        throw new RuntimeException("Stub!");
    }

    public void setAutoPadding(boolean useAutoPadding) {
        throw new RuntimeException("Stub!");
    }

    public int getBytesSize() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public Type getType() {
        throw new RuntimeException("Stub!");
    }

    public void syncAll(int srcLocation) {
        throw new RuntimeException("Stub!");
    }

    public void ioSend() {
        throw new RuntimeException("Stub!");
    }

    public void ioReceive() {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(BaseObj[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFromUnchecked(Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copyFromUnchecked(int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFromUnchecked(short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFromUnchecked(byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFromUnchecked(float[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(float[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(Bitmap b10) {
        throw new RuntimeException("Stub!");
    }

    public void copyFrom(Allocation a10) {
        throw new RuntimeException("Stub!");
    }

    public void setFromFieldPacker(int xoff, FieldPacker fp) {
        throw new RuntimeException("Stub!");
    }

    public void setFromFieldPacker(int xoff, int component_number, FieldPacker fp) {
        throw new RuntimeException("Stub!");
    }

    public void setFromFieldPacker(int xoff, int yoff, int zoff, int component_number, FieldPacker fp) {
        throw new RuntimeException("Stub!");
    }

    public void generateMipmaps() {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFromUnchecked(int off, int count, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFromUnchecked(int off, int count, int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFromUnchecked(int off, int count, short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFromUnchecked(int off, int count, byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFromUnchecked(int off, int count, float[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFrom(int off, int count, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFrom(int off, int count, int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFrom(int off, int count, short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFrom(int off, int count, byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFrom(int off, int count, float[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeFrom(int off, int count, Allocation data, int dataOff) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, int w10, int h10, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, int w10, int h10, byte[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, int w10, int h10, short[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, int w10, int h10, int[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, int w10, int h10, float[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, int w10, int h10, Allocation data, int dataXoff, int dataYoff) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeFrom(int xoff, int yoff, Bitmap data) {
        throw new RuntimeException("Stub!");
    }

    public void copy3DRangeFrom(int xoff, int yoff, int zoff, int w10, int h10, int d10, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy3DRangeFrom(int xoff, int yoff, int zoff, int w10, int h10, int d10, Allocation data, int dataXoff, int dataYoff, int dataZoff) {
        throw new RuntimeException("Stub!");
    }

    public void copyTo(Bitmap b10) {
        throw new RuntimeException("Stub!");
    }

    public void copyTo(Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copyTo(byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyTo(short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyTo(int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copyTo(float[] d10) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public synchronized void resize(int dimX) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeToUnchecked(int off, int count, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeToUnchecked(int off, int count, int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeToUnchecked(int off, int count, short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeToUnchecked(int off, int count, byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeToUnchecked(int off, int count, float[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeTo(int off, int count, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeTo(int off, int count, int[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeTo(int off, int count, short[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeTo(int off, int count, byte[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy1DRangeTo(int off, int count, float[] d10) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeTo(int xoff, int yoff, int w10, int h10, Object array) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeTo(int xoff, int yoff, int w10, int h10, byte[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeTo(int xoff, int yoff, int w10, int h10, short[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeTo(int xoff, int yoff, int w10, int h10, int[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy2DRangeTo(int xoff, int yoff, int w10, int h10, float[] data) {
        throw new RuntimeException("Stub!");
    }

    public void copy3DRangeTo(int xoff, int yoff, int zoff, int w10, int h10, int d10, Object array) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createTyped(RenderScript rs, Type type, MipmapControl mips, int usage) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createTyped(RenderScript rs, Type type, int usage) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createTyped(RenderScript rs, Type type) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createSized(RenderScript rs, Element e10, int count, int usage) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createSized(RenderScript rs, Element e10, int count) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createFromBitmap(RenderScript rs, Bitmap b10, MipmapControl mips, int usage) {
        throw new RuntimeException("Stub!");
    }

    public ByteBuffer getByteBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static Allocation[] createAllocations(RenderScript rs, Type t10, int usage, int numAlloc) {
        throw new RuntimeException("Stub!");
    }

    public long getStride() {
        throw new RuntimeException("Stub!");
    }

    public long getTimeStamp() {
        throw new RuntimeException("Stub!");
    }

    public Surface getSurface() {
        throw new RuntimeException("Stub!");
    }

    public void setSurface(Surface sur) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createFromBitmap(RenderScript rs, Bitmap b10) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createCubemapFromBitmap(RenderScript rs, Bitmap b10, MipmapControl mips, int usage) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createCubemapFromBitmap(RenderScript rs, Bitmap b10) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript rs, Bitmap xpos, Bitmap xneg, Bitmap ypos, Bitmap yneg, Bitmap zpos, Bitmap zneg, MipmapControl mips, int usage) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript rs, Bitmap xpos, Bitmap xneg, Bitmap ypos, Bitmap yneg, Bitmap zpos, Bitmap zneg) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createFromBitmapResource(RenderScript rs, Resources res, int id2, MipmapControl mips, int usage) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createFromBitmapResource(RenderScript rs, Resources res, int id2) {
        throw new RuntimeException("Stub!");
    }

    public static Allocation createFromString(RenderScript rs, String str, int usage) {
        throw new RuntimeException("Stub!");
    }

    public void setOnBufferAvailableListener(OnBufferAvailableListener callback) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void destroy() {
        throw new RuntimeException("Stub!");
    }
}
