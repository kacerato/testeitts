package com.itsmagic.engine.Engines.Engine.Vertex.Data;

import Ic.C2633l;
import Jb.f;
import N7.c;
import android.util.Log;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

public class MeshSerializer {

    public static class Data {

        @Expose
        private float[] bindShapeMatrix;

        @Expose
        public boolean hasIndices;

        @Expose
        public boolean hasJoints;

        @Expose
        public boolean hasNormals;

        @Expose
        public boolean hasTangents;

        @Expose
        public boolean hasUVs;

        @Expose
        public boolean hasVertices;

        @Expose
        public boolean hasWeights;

        @Expose
        public int jointsCount;

        @Expose
        public float maxExtent;

        @Expose
        public int normalsCount;

        @Expose
        public int tangentsCount;

        @Expose
        public int trianglesCount;

        @Expose
        private boolean useHalfFloatUV = true;

        @Expose
        public boolean useUshortRenderableData;

        @Expose
        public int uvsCount;

        @Expose
        public int verticesCount;

        @Expose
        public int weightsCount;
    }

    public class a implements f.a {

        public final byte[][] f79926a;

        public a(final byte[][] val$bin2Bytes) {
            this.f79926a = val$bin2Bytes;
        }

        @Override
        public void a(NativeShortBuffer quatS4, NativeShortBuffer ushortIndexData, NativeByteBuffer skinBuf) {
            try {
                this.f79926a[0] = MeshSerializer.b(quatS4, ushortIndexData, skinBuf);
            } finally {
                if (quatS4 != null) {
                    quatS4.destroyImmediate();
                }
                if (ushortIndexData != null) {
                    ushortIndexData.destroyImmediate();
                }
                if (skinBuf != null) {
                    skinBuf.destroyImmediate();
                }
            }
        }
    }

    public interface b {
        void setProgress(float v10);
    }

    static {
        System.loadLibrary("MeshSerializer");
    }

    public static byte[] b(NativeShortBuffer quatS4, NativeShortBuffer ushortIndexData, NativeByteBuffer skinData) {
        byte[] f10 = f(quatS4);
        byte[] f11 = f(ushortIndexData);
        byte[] e10 = e(skinData);
        ByteBuffer order = ByteBuffer.allocate((f10 != null ? f10.length : 0) + 16 + (f11 != null ? f11.length : 0) + 8 + (e10 != null ? e10.length : 0) + 8).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(1112100402);
        order.putInt(2);
        n(order, 2, f10);
        n(order, 2, f11);
        n(order, 1, e10);
        return order.array();
    }

    public static Data c(Vertex vertex, boolean serializeRenderableData) {
        float f10;
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        Data data = new Data();
        NativeFloatBuffer i12 = vertex.i1();
        NativeFloatBuffer a12 = vertex.a1();
        NativeIntBuffer V02 = vertex.V0();
        NativeFloatBuffer l12 = vertex.l1();
        NativeFloatBuffer m02 = vertex.m0();
        NativeFloatBuffer x02 = vertex.x0();
        NativeFloatBuffer F02 = vertex.F0();
        data.hasVertices = i12 != null && i12.capacity() >= 3;
        data.hasUVs = a12 != null && a12.capacity() >= 2;
        data.hasIndices = V02 != null && V02.capacity() >= 3;
        data.hasWeights = l12 != null && l12.capacity() >= 3;
        data.hasJoints = m02 != null && m02.capacity() >= 3;
        data.hasNormals = x02 != null && x02.capacity() >= 3;
        data.hasTangents = F02 != null && F02.capacity() >= 4;
        data.verticesCount = data.hasVertices ? i12.capacity() / 3 : 0;
        data.uvsCount = data.hasUVs ? a12.capacity() / 2 : 0;
        data.trianglesCount = data.hasIndices ? V02.capacity() / 3 : 0;
        data.weightsCount = data.hasWeights ? l12.capacity() / 3 : 0;
        data.jointsCount = data.hasJoints ? m02.capacity() / 3 : 0;
        data.normalsCount = data.hasNormals ? x02.capacity() / 3 : 0;
        data.tangentsCount = data.hasTangents ? F02.capacity() / 4 : 0;
        data.useHalfFloatUV = true;
        if (serializeRenderableData && V02 != null) {
            data.useUshortRenderableData = V02.findMaxValue() <= 65535;
        }
        if (data.hasVertices) {
            f10 = 0.0f;
            for (int i10 = 0; i10 < i12.capacity(); i10++) {
                float abs = Math.abs(i12.get(i10));
                if (abs > f10) {
                    f10 = abs;
                }
            }
        } else {
            f10 = 0.0f;
        }
        if (f10 == 0.0f) {
            f10 = 1.0f;
        }
        data.maxExtent = f10;
        return data;
    }

    public static byte[] d(byte[] jsonBytes, byte[] binBytes, byte[] bin2Bytes) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(jsonBytes.length + binBytes.length + (bin2Bytes != null ? bin2Bytes.length : 0) + 1024);
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(byteArrayOutputStream));
        CRC32 crc32 = new CRC32();
        crc32.update(jsonBytes);
        ZipEntry zipEntry = new ZipEntry("data");
        zipEntry.setMethod(0);
        zipEntry.setSize(jsonBytes.length);
        zipEntry.setCompressedSize(jsonBytes.length);
        zipEntry.setCrc(crc32.getValue());
        zipOutputStream.putNextEntry(zipEntry);
        zipOutputStream.write(jsonBytes);
        zipOutputStream.closeEntry();
        crc32.reset();
        crc32.update(binBytes);
        ZipEntry zipEntry2 = new ZipEntry("bin");
        zipEntry2.setMethod(0);
        zipEntry2.setSize(binBytes.length);
        zipEntry2.setCompressedSize(binBytes.length);
        zipEntry2.setCrc(crc32.getValue());
        zipOutputStream.putNextEntry(zipEntry2);
        zipOutputStream.write(binBytes);
        zipOutputStream.closeEntry();
        if (bin2Bytes != null && bin2Bytes.length > 0) {
            crc32.reset();
            crc32.update(bin2Bytes);
            ZipEntry zipEntry3 = new ZipEntry("bin2");
            zipEntry3.setMethod(0);
            zipEntry3.setSize(bin2Bytes.length);
            zipEntry3.setCompressedSize(bin2Bytes.length);
            zipEntry3.setCrc(crc32.getValue());
            zipOutputStream.putNextEntry(zipEntry3);
            zipOutputStream.write(bin2Bytes);
            zipOutputStream.closeEntry();
        }
        zipOutputStream.finish();
        zipOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] e(NativeByteBuffer buf) {
        if (buf == null || buf.capacity() <= 0) {
            return null;
        }
        return buf.array();
    }

    public static byte[] f(NativeShortBuffer sb2) {
        if (sb2 == null || sb2.capacity() <= 0) {
            return null;
        }
        int capacity = sb2.capacity();
        ByteBuffer order = ByteBuffer.allocate(capacity * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i10 = 0; i10 < capacity; i10++) {
            order.putShort(sb2.get(i10));
        }
        return order.array();
    }

    public static void g(String dataFile) {
        if (!C2633l.b(dataFile, ".mesh") && !C2633l.b(dataFile, ".mwf")) {
            throw new RuntimeException("File needs to be .mesh");
        }
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(c.t()) + "/" + dataFile));
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:175:0x0264 A[Catch: all -> 0x0268, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x0268, blocks: (B:175:0x0264, B:235:0x02c6, B:234:0x02c3, B:229:0x02bd), top: B:13:0x0021, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0276 A[Catch: all -> 0x0232, TRY_ENTER, TryCatch #16 {all -> 0x0232, blocks: (B:131:0x01ac, B:162:0x022d, B:164:0x0238, B:166:0x024d, B:170:0x0254, B:172:0x0258, B:173:0x025f, B:178:0x025c, B:180:0x0240, B:182:0x0245, B:183:0x0248, B:190:0x0276, B:192:0x027b, B:194:0x0280, B:195:0x0283, B:59:0x02b7, B:60:0x02ba, B:54:0x02b1), top: B:13:0x0021, inners: #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x027b A[Catch: all -> 0x0232, TryCatch #16 {all -> 0x0232, blocks: (B:131:0x01ac, B:162:0x022d, B:164:0x0238, B:166:0x024d, B:170:0x0254, B:172:0x0258, B:173:0x025f, B:178:0x025c, B:180:0x0240, B:182:0x0245, B:183:0x0248, B:190:0x0276, B:192:0x027b, B:194:0x0280, B:195:0x0283, B:59:0x02b7, B:60:0x02ba, B:54:0x02b1), top: B:13:0x0021, inners: #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0280 A[Catch: all -> 0x0232, TryCatch #16 {all -> 0x0232, blocks: (B:131:0x01ac, B:162:0x022d, B:164:0x0238, B:166:0x024d, B:170:0x0254, B:172:0x0258, B:173:0x025f, B:178:0x025c, B:180:0x0240, B:182:0x0245, B:183:0x0248, B:190:0x0276, B:192:0x027b, B:194:0x0280, B:195:0x0283, B:59:0x02b7, B:60:0x02ba, B:54:0x02b1), top: B:13:0x0021, inners: #18 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x02bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:236:? A[Catch: all -> 0x0268, SYNTHETIC, TRY_LEAVE, TryCatch #6 {all -> 0x0268, blocks: (B:175:0x0264, B:235:0x02c6, B:234:0x02c3, B:229:0x02bd), top: B:13:0x0021, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Vertex h(File file, Fb.a importSettings, b listener) {
        FileInputStream fileInputStream;
        Throwable th2;
        FileChannel channel;
        Throwable th3;
        ZipFile zipFile;
        Throwable th4;
        Throwable th5;
        NativeShortBuffer nativeShortBuffer;
        NativeShortBuffer nativeShortBuffer2;
        NativeByteBuffer nativeByteBuffer;
        if (!file.exists()) {
            return null;
        }
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                channel = fileInputStream2.getChannel();
                try {
                    channel.lock(0L, Long.MAX_VALUE, true);
                } catch (Throwable unused) {
                }
            } catch (Throwable th6) {
                th = th6;
                fileInputStream = fileInputStream2;
            }
            try {
                try {
                    try {
                        zipFile = new ZipFile(file);
                    } catch (Throwable th7) {
                        th = th7;
                        fileInputStream = fileInputStream2;
                        th3 = th;
                        if (channel == null) {
                        }
                    }
                } catch (Throwable th8) {
                    th = th8;
                    th2 = th;
                    try {
                        fileInputStream.close();
                        throw th2;
                    } catch (Throwable th9) {
                        th2.addSuppressed(th9);
                        throw th2;
                    }
                }
                try {
                    ZipEntry entry = zipFile.getEntry("data");
                    try {
                        try {
                            if (entry == null) {
                                zipFile.close();
                                if (channel != null) {
                                    channel.close();
                                }
                                fileInputStream2.close();
                                return null;
                            }
                            InputStream inputStream = zipFile.getInputStream(entry);
                            try {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
                                try {
                                    StringBuilder sb2 = new StringBuilder();
                                    while (true) {
                                        String readLine = bufferedReader.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        try {
                                            sb2.append(readLine);
                                            sb2.append('\n');
                                        } catch (Throwable th10) {
                                            th5 = th10;
                                            fileInputStream = fileInputStream2;
                                            try {
                                                try {
                                                    bufferedReader.close();
                                                    throw th5;
                                                } catch (Throwable th11) {
                                                    th5.addSuppressed(th11);
                                                    throw th5;
                                                }
                                            } catch (Throwable th12) {
                                                th = th12;
                                                Throwable th13 = th;
                                                if (inputStream == null) {
                                                    throw th13;
                                                }
                                                try {
                                                    try {
                                                        inputStream.close();
                                                        throw th13;
                                                    } catch (Throwable th14) {
                                                        th13.addSuppressed(th14);
                                                        throw th13;
                                                    }
                                                } catch (Throwable th15) {
                                                    th = th15;
                                                    th4 = th;
                                                    zipFile.close();
                                                    throw th4;
                                                }
                                                th = th15;
                                                th4 = th;
                                                try {
                                                    zipFile.close();
                                                    throw th4;
                                                } catch (Throwable th16) {
                                                    th4.addSuppressed(th16);
                                                    throw th4;
                                                }
                                            }
                                        }
                                    }
                                    Data data = (Data) X7.a.m().fromJson(sb2.toString().trim(), Data.class);
                                    bufferedReader.close();
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th17) {
                                            th4 = th17;
                                            fileInputStream = fileInputStream2;
                                            zipFile.close();
                                            throw th4;
                                        }
                                    }
                                    zipFile.close();
                                    if (data == null) {
                                        if (channel != null) {
                                            channel.close();
                                        }
                                        fileInputStream2.close();
                                        return null;
                                    }
                                    Vertex vertex = new Vertex();
                                    if (data.hasIndices) {
                                        vertex.i2(new NativeIntBuffer(data.trianglesCount * 3));
                                    }
                                    if (data.hasVertices) {
                                        vertex.q2(new NativeFloatBuffer(data.verticesCount * 3, NativeFloatBuffer.b.FLOAT32));
                                    }
                                    if (data.hasUVs) {
                                        vertex.m2(new NativeFloatBuffer(data.uvsCount * 2, NativeFloatBuffer.b.FLOAT16));
                                    }
                                    if (data.hasWeights) {
                                        vertex.s2(new NativeFloatBuffer(data.weightsCount * 3, NativeFloatBuffer.b.UNSIGNED_BYTE_NORMALIZED));
                                    }
                                    if (data.hasJoints) {
                                        vertex.S1(new NativeFloatBuffer(data.jointsCount * 3, NativeFloatBuffer.b.UNSIGNED_BYTE));
                                    }
                                    if (data.hasNormals) {
                                        vertex.Y1(new NativeFloatBuffer(data.normalsCount * 3, NativeFloatBuffer.b.FLOAT32));
                                    }
                                    if (data.hasTangents) {
                                        vertex.e2(new NativeFloatBuffer(data.tangentsCount * 4, NativeFloatBuffer.b.FLOAT32));
                                    }
                                    nativeDeserialize(data.hasVertices ? vertex.i1().getCriticalDirectCppPointer() : -1L, data.hasVertices, data.hasUVs ? vertex.a1().getCriticalDirectCppPointer() : -1L, data.hasUVs, data.hasIndices ? vertex.V0().getCriticalDirectCppPointer() : -1L, data.hasIndices, data.hasWeights ? vertex.l1().getCriticalDirectCppPointer() : -1L, data.hasWeights, data.hasJoints ? vertex.m0().getCriticalDirectCppPointer() : -1L, data.hasJoints, data.hasNormals ? vertex.x0().getCriticalDirectCppPointer() : -1L, data.hasNormals, data.hasTangents ? vertex.F0().getCriticalDirectCppPointer() : -1L, data.hasTangents, data.useHalfFloatUV, data.maxExtent, file.getAbsolutePath());
                                    try {
                                        nativeShortBuffer = new NativeShortBuffer(data.verticesCount * 4);
                                    } catch (Throwable th18) {
                                        th = th18;
                                        nativeShortBuffer = null;
                                    }
                                    try {
                                        nativeShortBuffer2 = data.useUshortRenderableData ? new NativeShortBuffer(data.trianglesCount * 3) : null;
                                        try {
                                            nativeByteBuffer = (data.hasJoints && data.hasWeights && data.verticesCount > 0) ? new NativeByteBuffer(data.verticesCount * 8) : null;
                                            try {
                                                int nativeDeserializeRenderableBundle = nativeDeserializeRenderableBundle(file.getAbsolutePath(), data.useUshortRenderableData, nativeShortBuffer.getCriticalDirectCppPointer(), nativeShortBuffer2 != null ? nativeShortBuffer2.getCriticalDirectCppPointer() : 0L, nativeByteBuffer != null ? nativeByteBuffer.getCriticalDirectCppPointer() : 0L);
                                                boolean z10 = (nativeDeserializeRenderableBundle & 1) != 0;
                                                if ((nativeDeserializeRenderableBundle & 2) == 0 && nativeByteBuffer != null) {
                                                    nativeByteBuffer.destroyImmediate();
                                                    nativeByteBuffer = null;
                                                }
                                                if (z10) {
                                                    vertex.b2(nativeShortBuffer, nativeShortBuffer2, nativeByteBuffer, data.useUshortRenderableData);
                                                } else {
                                                    if (nativeByteBuffer != null) {
                                                        nativeByteBuffer.destroyImmediate();
                                                    }
                                                    if (nativeShortBuffer2 != null) {
                                                        nativeShortBuffer2.destroyImmediate();
                                                    }
                                                    nativeShortBuffer.destroyImmediate();
                                                }
                                                if (importSettings != null && !importSettings.f6730a) {
                                                    if (importSettings != null && importSettings.f6731b) {
                                                        vertex.d0();
                                                    }
                                                    vertex.R1(false);
                                                    if (channel != null) {
                                                        channel.close();
                                                    }
                                                    fileInputStream2.close();
                                                    return vertex;
                                                }
                                                vertex.apply();
                                                vertex.R1(false);
                                                if (channel != null) {
                                                }
                                                fileInputStream2.close();
                                                return vertex;
                                            } catch (Throwable th19) {
                                                th = th19;
                                                if (nativeByteBuffer != null) {
                                                    nativeByteBuffer.destroyImmediate();
                                                }
                                                if (nativeShortBuffer2 != null) {
                                                    nativeShortBuffer2.destroyImmediate();
                                                }
                                                if (nativeShortBuffer != null) {
                                                    nativeShortBuffer.destroyImmediate();
                                                }
                                                throw th;
                                            }
                                        } catch (Throwable th20) {
                                            th = th20;
                                            nativeByteBuffer = null;
                                            if (nativeByteBuffer != null) {
                                            }
                                            if (nativeShortBuffer2 != null) {
                                            }
                                            if (nativeShortBuffer != null) {
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th21) {
                                        th = th21;
                                        nativeShortBuffer2 = null;
                                        nativeByteBuffer = null;
                                        if (nativeByteBuffer != null) {
                                        }
                                        if (nativeShortBuffer2 != null) {
                                        }
                                        if (nativeShortBuffer != null) {
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th22) {
                                    fileInputStream = fileInputStream2;
                                    th5 = th22;
                                }
                            } catch (Throwable th23) {
                                th = th23;
                                fileInputStream = fileInputStream2;
                            }
                        } catch (Throwable th24) {
                            th3 = th24;
                            fileInputStream = fileInputStream2;
                            if (channel == null) {
                                throw th3;
                            }
                            try {
                                channel.close();
                                throw th3;
                            } catch (Throwable th25) {
                                th3.addSuppressed(th25);
                                throw th3;
                            }
                        }
                    } catch (Throwable th26) {
                        th2 = th26;
                        fileInputStream = fileInputStream2;
                        fileInputStream.close();
                        throw th2;
                    }
                } catch (Throwable th27) {
                    th = th27;
                    fileInputStream = fileInputStream2;
                }
            } catch (Throwable th28) {
                th = th28;
                th3 = th;
                if (channel == null) {
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Vertex i(FileInputStream file, Fb.a importSettings, b listener) {
        File file2 = new File(W7.b.f27306f.f2458a.f() + "/vtx/" + Tc.b.L());
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            try {
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = file.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.close();
                    Vertex h10 = h(file2, importSettings, listener);
                    try {
                        file2.delete();
                    } catch (Throwable unused) {
                    }
                    return h10;
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                try {
                    file2.delete();
                    return null;
                } catch (Throwable unused2) {
                    return null;
                }
            }
        } catch (Throwable th4) {
            try {
                file2.delete();
            } catch (Throwable unused3) {
            }
            throw th4;
        }
    }

    public static Vertex j(InputStream file, Fb.a importSettings, b listener) {
        if (file instanceof FileInputStream) {
            return i((FileInputStream) file, importSettings, listener);
        }
        File file2 = new File(W7.b.f27306f.f2458a.f() + "/vtx/" + Tc.b.L());
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            try {
                if (file2.exists()) {
                    file2.delete();
                }
                file2.createNewFile();
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = file.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    fileOutputStream.close();
                    Vertex h10 = h(file2, importSettings, listener);
                    try {
                        file2.delete();
                    } catch (Throwable unused) {
                    }
                    return h10;
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                try {
                    file2.delete();
                    return null;
                } catch (Throwable unused2) {
                    return null;
                }
            }
        } catch (Throwable th4) {
            try {
                file2.delete();
            } catch (Throwable unused3) {
            }
            throw th4;
        }
    }

    public static boolean k(String dataFile) {
        if (!C2633l.b(dataFile, ".mesh") && !C2633l.b(dataFile, ".mwf")) {
            throw new RuntimeException("File needs to be .mesh");
        }
        return new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(c.t()) + "/" + dataFile)).exists();
    }

    public static File l(File file) {
        if (!C2633l.b(file.getName(), ".mesh") && !C2633l.b(file.getName(), ".mwf")) {
            throw new RuntimeException("File needs to be .mesh");
        }
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        return file;
    }

    public static File m(String dataFile) {
        if (!C2633l.b(dataFile, ".mesh") && !C2633l.b(dataFile, ".mwf")) {
            throw new RuntimeException("File needs to be .mesh");
        }
        File file = new File(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.S(c.t()) + "/" + dataFile));
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        return file;
    }

    public static void n(ByteBuffer out, int type, byte[] payload) {
        if (payload == null || payload.length == 0) {
            out.putInt(0);
            out.putInt(0);
        } else {
            out.putInt(type);
            out.putInt(payload.length);
            out.put(payload);
        }
    }

    public static native int nativeBuildBin(long verticesPointer, boolean hasVertices, long uvsPointer, boolean hasUVs, long indicesPointer, boolean hasIndices, long weightsPointer, boolean hasWeights, long jointsPointer, boolean hasJoints, long normalsPointer, boolean hasNormals, long tangentsPointer, boolean hasTangents, float maxExtent, ByteBuffer outBuffer);

    public static native void nativeDeserialize(long verticesPointer, boolean hasVertices, long uvsPointer, boolean hasUVs, long indicesPointer, boolean hasIndices, long weightsPointer, boolean hasWeights, long jointsPointer, boolean hasJoints, long normalsPointer, boolean hasNormals, long tangentsPointer, boolean hasTangents, boolean halfFloatUV, float maxExtent, String filepath);

    public static native int nativeDeserializeRenderableBundle(String filepath, boolean useUshortIndexData, long quatS4Pointer, long ushortIndexPointer, long skinPointer);

    public static boolean o(File file, Vertex vertex) {
        return p(file, vertex, true);
    }

    public static boolean p(File file, Vertex vertex, boolean serializeRenderableData) {
        boolean z10 = true;
        if (vertex == null) {
            throw new NullPointerException("vertex can't be null");
        }
        if (!C2633l.b(file.getName(), ".mesh") && !C2633l.b(file.getName(), ".mwf")) {
            throw new RuntimeException("File needs to be .mesh");
        }
        Data c10 = c(vertex, serializeRenderableData);
        byte[] bytes = X7.a.m().toJson(c10).getBytes(StandardCharsets.UTF_8);
        long criticalDirectCppPointer = c10.hasVertices ? vertex.i1().getCriticalDirectCppPointer() : -1L;
        long criticalDirectCppPointer2 = c10.hasUVs ? vertex.a1().getCriticalDirectCppPointer() : -1L;
        long criticalDirectCppPointer3 = c10.hasIndices ? vertex.V0().getCriticalDirectCppPointer() : -1L;
        long criticalDirectCppPointer4 = c10.hasWeights ? vertex.l1().getCriticalDirectCppPointer() : -1L;
        long criticalDirectCppPointer5 = c10.hasJoints ? vertex.m0().getCriticalDirectCppPointer() : -1L;
        long criticalDirectCppPointer6 = c10.hasNormals ? vertex.x0().getCriticalDirectCppPointer() : -1L;
        long criticalDirectCppPointer7 = c10.hasTangents ? vertex.F0().getCriticalDirectCppPointer() : -1L;
        int nativeBuildBin = nativeBuildBin(criticalDirectCppPointer, c10.hasVertices, criticalDirectCppPointer2, c10.hasUVs, criticalDirectCppPointer3, c10.hasIndices, criticalDirectCppPointer4, c10.hasWeights, criticalDirectCppPointer5, c10.hasJoints, criticalDirectCppPointer6, c10.hasNormals, criticalDirectCppPointer7, c10.hasTangents, c10.maxExtent, null);
        if (nativeBuildBin <= 0) {
            throw new RuntimeException("nativeBuildBin(size) returned " + nativeBuildBin);
        }
        ByteBuffer order = ByteBuffer.allocateDirect(nativeBuildBin).order(ByteOrder.LITTLE_ENDIAN);
        int nativeBuildBin2 = nativeBuildBin(criticalDirectCppPointer, c10.hasVertices, criticalDirectCppPointer2, c10.hasUVs, criticalDirectCppPointer3, c10.hasIndices, criticalDirectCppPointer4, c10.hasWeights, criticalDirectCppPointer5, c10.hasJoints, criticalDirectCppPointer6, c10.hasNormals, criticalDirectCppPointer7, c10.hasTangents, c10.maxExtent, order);
        if (nativeBuildBin2 != nativeBuildBin) {
            throw new RuntimeException("nativeBuildBin wrote " + nativeBuildBin2 + " of " + nativeBuildBin);
        }
        byte[] bArr = new byte[nativeBuildBin2];
        order.position(0);
        order.get(bArr);
        byte[][] bArr2 = {null};
        if (serializeRenderableData) {
            vertex.S(new a(bArr2));
        }
        try {
            byte[] d10 = d(bytes, bArr, bArr2[0]);
            try {
                Path path = file.toPath();
                Files.createDirectories(path.getParent(), new FileAttribute[0]);
                Files.write(path, d10, StandardOpenOption.CREATE, StandardOpenOption.TRUNCATE_EXISTING, StandardOpenOption.WRITE);
                try {
                    ZipFile zipFile = new ZipFile(file);
                    try {
                        ZipEntry entry = zipFile.getEntry("data");
                        ZipEntry entry2 = zipFile.getEntry("bin");
                        long size = entry != null ? entry.getSize() : -1L;
                        long size2 = entry2 != null ? entry2.getSize() : -1L;
                        Log.d("VtxSerializer", "ZIP wrote entries: data=" + size + " bytes, bin=" + size2 + " bytes, file=" + ((Object) file));
                        if (entry != null && entry2 != null && size2 > 0) {
                            zipFile.close();
                            return true;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("ZIP on disk missing entries (data? ");
                        sb2.append(entry != null);
                        sb2.append(", bin? ");
                        if (entry2 == null) {
                            z10 = false;
                        }
                        sb2.append(z10);
                        sb2.append(", binSize=");
                        sb2.append(size2);
                        sb2.append(")");
                        throw new IllegalStateException(sb2.toString());
                    } finally {
                    }
                } catch (Exception e10) {
                    throw new RuntimeException(e10);
                }
            } catch (IOException e11) {
                throw new RuntimeException(e11);
            }
        } catch (IOException e12) {
            throw new RuntimeException(e12);
        }
    }
}
