package com.jme3.asset.plugins;

import F2.d;
import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLocator;
import com.jme3.asset.AssetManager;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import qe.C15075d;

public class HttpZipLocator implements AssetLocator {
    private static final Logger logger = Logger.getLogger(HttpZipLocator.class.getName());
    private HashMap<String, ZipEntry2> entries;
    private int numEntries;
    private int tableLength;
    private int tableOffset;
    private URL zipUrl;
    private String rootPath = "";
    private final ByteBuffer byteBuf = ByteBuffer.allocate(250);
    private final CharBuffer charBuf = CharBuffer.allocate(250);
    private final CharsetDecoder utf8Decoder = StandardCharsets.UTF_8.newDecoder();

    public static class ZipEntry2 {
        int compSize;
        long crc;
        boolean deflate;
        Integer extraLength;
        int length;
        String name;
        Integer nameLength;
        int offset;

        private ZipEntry2() {
        }

        public String toString() {
            return "ZipEntry[name=" + this.name + ",  length=" + this.length + ",  compSize=" + this.compSize + ",  offset=" + this.offset + "]";
        }
    }

    private void fillByteArray(byte[] bArr, InputStream inputStream) throws IOException {
        int length = bArr.length;
        int i10 = 0;
        while (i10 < length) {
            int read = inputStream.read(bArr, i10, length - i10);
            if (read < 0) {
                throw new IOException("Failed to read entire array");
            }
            i10 += read;
        }
    }

    private static int get16(byte[] bArr, int i10) {
        int i11 = i10 + 1;
        return ((bArr[i11] & 255) << 8) | (bArr[i10] & 255);
    }

    private static int get32(byte[] bArr, int i10) {
        int i11 = ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
        return ((bArr[i10 + 3] & 255) << 24) | i11 | ((bArr[i10 + 2] & 255) << 16);
    }

    private String getUTF8String(byte[] bArr, int i10, int i11) throws CharacterCodingException {
        StringBuilder sb2 = new StringBuilder();
        int i12 = 0;
        while (i12 < i11) {
            int min = Math.min(i11 - i12, this.byteBuf.capacity());
            boolean z10 = min < this.byteBuf.capacity();
            this.byteBuf.put(bArr, i10 + i12, min);
            this.byteBuf.flip();
            CoderResult decode = this.utf8Decoder.decode(this.byteBuf, this.charBuf, z10);
            if (!decode.isUnderflow() || !z10) {
                decode.throwException();
            }
            this.charBuf.flip();
            sb2.append(this.charBuf.toString());
            this.byteBuf.clear();
            this.charBuf.clear();
            i12 += min;
        }
        return sb2.toString();
    }

    private static long getu32(byte[] bArr, int i10) throws IOException {
        int i11 = ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
        return ((bArr[i10 + 3] & 255) << 24) | i11 | ((bArr[i10 + 2] & 255) << 16);
    }

    public InputStream openStream(ZipEntry2 zipEntry2) throws IOException {
        if (zipEntry2.nameLength == null && zipEntry2.extraLength == null) {
            InputStream readData = readData(zipEntry2.offset, 30);
            try {
                byte[] bArr = new byte[30];
                readData.read(bArr);
                zipEntry2.nameLength = Integer.valueOf(get16(bArr, 26));
                zipEntry2.extraLength = Integer.valueOf(get16(bArr, 28));
                readData.close();
            } catch (Throwable th2) {
                if (readData != null) {
                    try {
                        readData.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
        InputStream readData2 = readData(zipEntry2.offset + 30 + zipEntry2.nameLength.intValue() + zipEntry2.extraLength.intValue(), zipEntry2.compSize);
        return zipEntry2.deflate ? new InflaterInputStream(readData2, new Inflater(true)) : readData2;
    }

    private void readCentralDirectory() throws IOException {
        int i10 = this.tableLength;
        byte[] bArr = new byte[i10];
        InputStream readData = readData(this.tableOffset, i10);
        try {
            fillByteArray(bArr, readData);
            if (readData != null) {
                readData.close();
            }
            this.entries = new HashMap<>(this.numEntries);
            int i11 = 0;
            for (int i12 = 0; i12 < this.numEntries; i12++) {
                i11 = readTableEntry(bArr, i11);
            }
        } catch (Throwable th2) {
            if (readData != null) {
                try {
                    readData.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    private InputStream readData(int i10, int i11) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) this.zipUrl.openConnection();
        httpURLConnection.setDoOutput(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(false);
        String str = "-";
        if (i10 != Integer.MAX_VALUE) {
            str = i10 + "-";
        }
        if (i11 != Integer.MAX_VALUE) {
            if (i10 != Integer.MAX_VALUE) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append((i10 + i11) - 1);
                str = sb2.toString();
            } else {
                str = str + i11;
            }
        }
        httpURLConnection.setRequestProperty(d.f6168I, "bytes=" + str);
        httpURLConnection.connect();
        if (httpURLConnection.getResponseCode() == 206) {
            return httpURLConnection.getInputStream();
        }
        if (httpURLConnection.getResponseCode() == 200) {
            throw new IOException("Your server does not support HTTP feature Content-Range. Please contact your server administrator.");
        }
        throw new IOException(httpURLConnection.getResponseCode() + " " + httpURLConnection.getResponseMessage());
    }

    private void readEndHeader() throws IOException {
        byte[] bArr = new byte[200];
        InputStream readData = readData(Integer.MAX_VALUE, 200);
        try {
            fillByteArray(bArr, readData);
            if (readData != null) {
                readData.close();
            }
            int i10 = 178;
            while (true) {
                if (i10 < 0) {
                    i10 = -1;
                    break;
                } else if (bArr[i10] == 80 && get32(bArr, i10) == 101010256) {
                    break;
                } else {
                    i10--;
                }
            }
            if (i10 == -1) {
                throw new IOException("Cannot find Zip End Header in file!");
            }
            this.numEntries = get16(bArr, i10 + 10);
            this.tableLength = get32(bArr, i10 + 12);
            this.tableOffset = get32(bArr, i10 + 16);
        } catch (Throwable th2) {
            if (readData != null) {
                try {
                    readData.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
            }
            throw th2;
        }
    }

    private int readTableEntry(byte[] bArr, int i10) throws IOException {
        if (get32(bArr, i10) != 33639248) {
            throw new IOException("Central directory error, expected 'PK12'");
        }
        int i11 = get16(bArr, i10 + 28);
        int i12 = i10 + 46;
        int i13 = i12 + i11 + get16(bArr, i10 + 30) + get16(bArr, i10 + 32);
        if ((get16(bArr, i10 + 8) & 1) == 1) {
            return i13;
        }
        int i14 = get16(bArr, i10 + 10);
        if (i14 != 8 && i14 != 0) {
            return i13;
        }
        String uTF8String = getUTF8String(bArr, i12, i11);
        if (uTF8String.charAt(uTF8String.length() - 1) == '/') {
            return i13;
        }
        ZipEntry2 zipEntry2 = new ZipEntry2();
        zipEntry2.name = uTF8String;
        zipEntry2.deflate = i14 == 8;
        zipEntry2.crc = getu32(bArr, i10 + 16);
        zipEntry2.length = get32(bArr, i10 + 24);
        zipEntry2.compSize = get32(bArr, i10 + 20);
        zipEntry2.offset = get32(bArr, i10 + 42);
        this.entries.put(zipEntry2.name, zipEntry2);
        return i13;
    }

    public void load(URL url) throws IOException {
        if (!url.getProtocol().equals("http") && !url.getProtocol().equals(C15075d.f106134a)) {
            throw new UnsupportedOperationException("HttpZipLocator only supports HTTP(S) URLs");
        }
        this.zipUrl = url;
        readEndHeader();
        readCentralDirectory();
    }

    @Override
    public AssetInfo locate(AssetManager assetManager, AssetKey assetKey) {
        final ZipEntry2 zipEntry2 = this.entries.get(assetKey.getName());
        if (zipEntry2 == null) {
            return null;
        }
        return new AssetInfo(this, assetManager, assetKey) {
            final HttpZipLocator this$0;

            {
                this.this$0 = this;
            }

            @Override
            public InputStream openStream() {
                try {
                    return this.this$0.openStream(zipEntry2);
                } catch (IOException e10) {
                    HttpZipLocator.logger.log(Level.WARNING, "Error retrieving " + zipEntry2.name, (Throwable) e10);
                    return null;
                }
            }
        };
    }

    @Override
    public void setRootPath(String str) {
        if (this.rootPath.equals(str)) {
            return;
        }
        this.rootPath = str;
        try {
            load(new URL(str));
        } catch (IOException e10) {
            logger.log(Level.WARNING, "Failed to set root path " + str, (Throwable) e10);
        }
    }

    public InputStream openStream(String str) throws IOException {
        ZipEntry2 zipEntry2 = this.entries.get(str);
        if (zipEntry2 != null) {
            return openStream(zipEntry2);
        }
        throw new RuntimeException("Entry not found: " + str);
    }
}
