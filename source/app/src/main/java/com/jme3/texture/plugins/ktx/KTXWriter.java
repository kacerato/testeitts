package com.jme3.texture.plugins.ktx;

import com.jme3.renderer.Caps;
import com.jme3.renderer.opengl.GLImageFormat;
import com.jme3.renderer.opengl.GLImageFormats;
import com.jme3.texture.Image;
import com.jme3.texture.Texture;
import com.jme3.texture.Texture2D;
import com.jme3.texture.Texture3D;
import com.jme3.texture.TextureArray;
import com.jme3.texture.TextureCubeMap;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.EnumSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class KTXWriter {
    private final String filePath;
    private static final Logger log = Logger.getLogger(KTXWriter.class.getName());
    private static final byte[] fileIdentifier = {Opcodes.OPC_lookupswitch, Opcodes.OPC_astore_0, Opcodes.OPC_bastore, Opcodes.OPC_pop2, 32, Opcodes.OPC_daload, Opcodes.OPC_daload, Opcodes.OPC_new, 13, 10, 26, 10};

    public KTXWriter(String str) {
        this.filePath = str;
    }

    private byte[] getByteBufferArray(ByteBuffer byteBuffer, int i10) {
        if (byteBuffer.hasArray()) {
            return byteBuffer.array();
        }
        byte[] bArr = new byte[i10];
        byteBuffer.get(bArr, 0, i10);
        return bArr;
    }

    private GLImageFormat getGlFormat(Image.Format format) {
        return GLImageFormats.getFormatsForCaps(EnumSet.allOf(Caps.class))[0][format.ordinal()];
    }

    private static int getSlice(int i10, int i11) {
        return Math.max(i10, i11);
    }

    private void pad(int i10, DataOutput dataOutput) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            dataOutput.write(0);
        }
    }

    public void write(Image image, String str) {
        write(image, Texture2D.class, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0209 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void write(Image image, Class<? extends Texture> cls, String str) {
        Class<KTXWriter> cls2;
        FileOutputStream fileOutputStream;
        Throwable th2;
        Class<KTXWriter> cls3;
        IOException iOException;
        Logger logger;
        Level level;
        String str2;
        int i10;
        int i11;
        int bitsPerPixel;
        Class<KTXWriter> cls4 = KTXWriter.class;
        try {
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            try {
                fileOutputStream = new FileOutputStream(new File(this.filePath + "/" + str));
            } catch (IOException e10) {
                iOException = e10;
                logger = Logger.getLogger(cls3.getName());
                level = Level.SEVERE;
            }
        } catch (FileNotFoundException e11) {
            e = e11;
            cls3 = cls4;
            fileOutputStream = null;
        } catch (IOException e12) {
            e = e12;
            cls3 = cls4;
            fileOutputStream = null;
        } catch (Throwable th4) {
            cls2 = cls4;
            th2 = th4;
            fileOutputStream = null;
            if (fileOutputStream == null) {
                try {
                    fileOutputStream.close();
                    throw th2;
                } catch (IOException e13) {
                    Logger.getLogger(cls2.getName()).log(Level.SEVERE, (String) null, (Throwable) e13);
                    throw th2;
                }
            }
            throw th2;
        }
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(fileOutputStream);
            dataOutputStream.write(fileIdentifier);
            dataOutputStream.writeInt(67305985);
            GLImageFormat glFormat = getGlFormat(image.getFormat());
            dataOutputStream.writeInt(glFormat.dataType);
            int i12 = 1;
            dataOutputStream.writeInt(1);
            dataOutputStream.writeInt(glFormat.format);
            dataOutputStream.writeInt(glFormat.internalFormat);
            dataOutputStream.writeInt(glFormat.format);
            dataOutputStream.writeInt(image.getWidth());
            dataOutputStream.writeInt(image.getHeight());
            int depth = (image.getDepth() <= 1 || cls != Texture3D.class) ? 1 : image.getDepth();
            if (image.getData().size() > 1) {
                i11 = cls == TextureArray.class ? image.getData().size() : 1;
                i10 = cls == TextureCubeMap.class ? image.getData().size() : 1;
            } else {
                i10 = 1;
                i11 = 1;
            }
            dataOutputStream.writeInt(depth);
            dataOutputStream.writeInt(i11);
            dataOutputStream.writeInt(i10);
            int length = image.hasMipmaps() ? image.getMipMapSizes().length : 1;
            dataOutputStream.writeInt(length);
            dataOutputStream.writeInt(28);
            dataOutputStream.writeInt(23);
            dataOutputStream.writeBytes("KTXorientation\u0000S=r,T=u\u0000");
            pad(1, dataOutputStream);
            int i13 = 0;
            int i14 = 0;
            while (i13 < length) {
                int max = Math.max(i12, image.getWidth() >> i13);
                int max2 = Math.max(i12, image.getHeight() >> i13);
                if (image.hasMipmaps()) {
                    bitsPerPixel = image.getMipMapSizes()[i13];
                } else {
                    bitsPerPixel = ((max * max2) * image.getFormat().getBitsPerPixel()) / 8;
                }
                dataOutputStream.writeInt(bitsPerPixel);
                for (int i15 = 0; i15 < i11; i15++) {
                    int i16 = 0;
                    while (i16 < i10) {
                        int i17 = 0;
                        int i18 = 0;
                        while (i17 < depth) {
                            ByteBuffer data = image.getData(getSlice(i16, i15));
                            int i19 = depth;
                            int i20 = length;
                            cls3 = cls4;
                            try {
                                log.log(Level.FINE, "position {0}", Integer.valueOf(data.position()));
                                data.position(i14);
                                byte[] byteBufferArray = getByteBufferArray(data, bitsPerPixel);
                                dataOutputStream.write(byteBufferArray);
                                i17++;
                                i18 = byteBufferArray.length;
                                depth = i19;
                                length = i20;
                                cls4 = cls3;
                            } catch (FileNotFoundException e14) {
                                e = e14;
                                str2 = null;
                                Logger.getLogger(cls3.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                    return;
                                }
                                return;
                            } catch (IOException e15) {
                                e = e15;
                                str2 = null;
                                Logger.getLogger(cls3.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                    return;
                                }
                                return;
                            }
                        }
                        Class<KTXWriter> cls5 = cls4;
                        int i21 = depth;
                        int i22 = length;
                        if (i10 == 6 && i11 == 0) {
                            pad(3 - ((i18 + 3) % 4), dataOutputStream);
                        }
                        i16++;
                        depth = i21;
                        length = i22;
                        cls4 = cls5;
                    }
                }
                Class<KTXWriter> cls6 = cls4;
                int i23 = depth;
                int i24 = length;
                int i25 = bitsPerPixel + 3;
                log.log(Level.FINE, "skipping {0}", Integer.valueOf(3 - (i25 % 4)));
                pad(3 - (i25 % 4), dataOutputStream);
                i14 += bitsPerPixel;
                i13++;
                depth = i23;
                length = i24;
                cls4 = cls6;
                i12 = 1;
            }
            Class<KTXWriter> cls7 = cls4;
            try {
                fileOutputStream.close();
            } catch (IOException e16) {
                iOException = e16;
                logger = Logger.getLogger(cls7.getName());
                level = Level.SEVERE;
                str2 = null;
                logger.log(level, str2, (Throwable) iOException);
            }
        } catch (FileNotFoundException e17) {
            e = e17;
            cls3 = cls4;
        } catch (IOException e18) {
            e = e18;
            cls3 = cls4;
        } catch (Throwable th5) {
            th = th5;
            cls2 = cls4;
            th2 = th;
            if (fileOutputStream == null) {
            }
        }
    }
}
