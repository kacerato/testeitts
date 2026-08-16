package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native;

import androidx.annotation.Keep;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

@Keep
public final class NativeTerrainDataFile {
    private static final byte[] MAGIC = {Opcodes.OPC_dstore_2, Opcodes.OPC_bastore, Opcodes.OPC_bastore, Opcodes.OPC_fstore_1};

    @Keep
    public static final class LoadedData {

        @Keep
        public final NativeFloatBuffer heightBuffer;

        @Keep
        public final NativeFloatBuffer[] layerBuffers;

        @Keep
        public final String[] layerGuids;

        @Keep
        private LoadedData(NativeFloatBuffer heightBuffer, String[] layerGuids, NativeFloatBuffer[] layerBuffers) {
            this.heightBuffer = heightBuffer;
            this.layerGuids = layerGuids;
            this.layerBuffers = layerBuffers;
        }
    }

    static {
        System.loadLibrary("native-terrain-data");
    }

    private NativeTerrainDataFile() {
    }

    public static boolean hasBinaryHeader(byte[] bytes) {
        if (bytes == null || bytes.length < MAGIC.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            byte[] bArr = MAGIC;
            if (i10 >= bArr.length) {
                return true;
            }
            if (bytes[i10] != bArr[i10]) {
                return false;
            }
            i10++;
        }
    }

    private static native LoadedData nativeReadBytes(byte[] bytes);

    private static native LoadedData nativeReadFile(String path);

    private static native boolean nativeWriteFile(String path, long heightPointer, String[] layerGuids, long[] layerPointers);

    public static LoadedData read(File file) {
        if (file != null) {
            return nativeReadFile(file.getAbsolutePath());
        }
        throw new NullPointerException("file can't be null");
    }

    public static byte[] readAllBytes(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static boolean write(File file, NativeFloatBuffer heightBuffer, String[] layerGuids, NativeFloatBuffer[] layerBuffers) {
        if (file == null) {
            throw new NullPointerException("file can't be null");
        }
        if (layerGuids == null) {
            layerGuids = new String[0];
        }
        if (layerBuffers == null) {
            layerBuffers = new NativeFloatBuffer[0];
        }
        if (layerGuids.length != layerBuffers.length) {
            throw new IllegalArgumentException("layerGuids length must match layerBuffers length");
        }
        long[] jArr = new long[layerBuffers.length];
        for (int i10 = 0; i10 < layerBuffers.length; i10++) {
            NativeFloatBuffer nativeFloatBuffer = layerBuffers[i10];
            if (nativeFloatBuffer == null) {
                throw new NullPointerException("layerBuffers[" + i10 + "] can't be null");
            }
            jArr[i10] = nativeFloatBuffer.getPointerCritical();
        }
        return nativeWriteFile(file.getAbsolutePath(), heightBuffer != null ? heightBuffer.getPointerCritical() : 0L, layerGuids, jArr);
    }

    public static LoadedData read(byte[] bytes) {
        if (bytes != null) {
            return nativeReadBytes(bytes);
        }
        throw new NullPointerException("bytes can't be null");
    }

    public static LoadedData read(InputStream inputStream) throws IOException {
        if (inputStream != null) {
            return read(readAllBytes(inputStream));
        }
        throw new NullPointerException("inputStream can't be null");
    }
}
