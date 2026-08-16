package com.jme3.terrain.heightmap;

import com.jme3.math.FastMath;
import com.jme3.util.LittleEndien;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.logging.Logger;

public class RawHeightMap extends AbstractHeightMap {
    public static final int FORMAT_16BITBE = 2;
    public static final int FORMAT_16BITLE = 1;
    public static final int FORMAT_8BIT = 0;
    private static final Logger logger = Logger.getLogger(RawHeightMap.class.getName());
    private int format;
    private InputStream stream;
    private boolean swapXy;

    public RawHeightMap(String str, int i10) throws Exception {
        this(str, i10, 0, false);
    }

    private void setup(InputStream inputStream, int i10, int i11, boolean z10) throws Exception {
        if (inputStream == null || i10 <= 0) {
            throw new Exception("Must supply valid stream and size (> 0)");
        }
        this.stream = inputStream;
        this.size = i10;
        this.format = i11;
        this.swapXy = z10;
        load();
    }

    @Override
    public boolean load() {
        if (this.stream == null || this.size <= 0) {
            throw new RuntimeException("Must supply valid stream and size (> 0)");
        }
        if (this.heightData != null) {
            unloadHeightMap();
        }
        int i10 = this.size;
        this.heightData = new float[i10 * i10];
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.stream);
            if (this.format == 1) {
                LittleEndien littleEndien = new LittleEndien(bufferedInputStream);
                for (int i11 = 0; i11 < this.size; i11++) {
                    int i12 = 0;
                    while (true) {
                        int i13 = this.size;
                        if (i12 < i13) {
                            this.heightData[this.swapXy ? (i13 * i12) + i11 : (i13 * i11) + i12] = littleEndien.readUnsignedShort();
                            i12++;
                        }
                    }
                }
                littleEndien.close();
            } else {
                DataInputStream dataInputStream = new DataInputStream(bufferedInputStream);
                for (int i14 = 0; i14 < this.size; i14++) {
                    int i15 = 0;
                    while (true) {
                        int i16 = this.size;
                        if (i15 < i16) {
                            int i17 = this.swapXy ? (i16 * i15) + i14 : (i16 * i14) + i15;
                            if (this.format == 2) {
                                this.heightData[i17] = dataInputStream.readUnsignedShort();
                            } else {
                                this.heightData[i17] = dataInputStream.readUnsignedByte();
                            }
                            i15++;
                        }
                    }
                }
                dataInputStream.close();
            }
            bufferedInputStream.close();
            return true;
        } catch (IOException unused) {
            logger.warning("Error reading height data from stream.");
            return false;
        }
    }

    public void setFilename(String str) throws Exception {
        if (str == null) {
            throw new Exception("Must supply valid filename.");
        }
        try {
            this.stream = new FileInputStream(str);
        } catch (FileNotFoundException unused) {
            throw new Exception("height file not found: " + str);
        }
    }

    public void setHeightStream(InputStream inputStream) throws Exception {
        if (inputStream == null) {
            throw new Exception("Must supply valid stream.");
        }
        this.stream = inputStream;
    }

    public RawHeightMap(float[] fArr) {
        this.heightData = fArr;
        this.size = (int) FastMath.sqrt(fArr.length);
        this.format = 0;
    }

    public RawHeightMap(String str, int i10, int i11, boolean z10) throws Exception {
        if (str != null && i10 > 0) {
            try {
                setup(new FileInputStream(str), i10, i11, z10);
                return;
            } catch (FileNotFoundException unused) {
                throw new Exception("height file not found: " + str);
            }
        }
        throw new Exception("Must supply valid filename and size (> 0)");
    }

    public RawHeightMap(InputStream inputStream, int i10, int i11, boolean z10) throws Exception {
        setup(inputStream, i10, i11, z10);
    }

    public RawHeightMap(URL url, int i10, int i11, boolean z10) throws Exception {
        if (url != null && i10 > 0) {
            try {
                setup(url.openStream(), i10, i11, z10);
                return;
            } catch (IOException unused) {
                throw new Exception("Unable to open height url: " + ((Object) url));
            }
        }
        throw new Exception("Must supply valid resource and size (> 0)");
    }
}
