package com.android.tools.r8;

import com.android.tools.r8.origin.Origin;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public interface DataEntryResource extends DataResource {

    public static class a implements DataEntryResource {

        public final byte[] f35255a;

        public final String f35256b;

        public final Origin f35257c;

        public a(byte[] bArr, String str, Origin origin) {
            this.f35255a = bArr;
            this.f35256b = str;
            this.f35257c = origin;
        }

        @Override
        public final InputStream getByteStream() {
            return new ByteArrayInputStream(this.f35255a);
        }

        @Override
        public final String getName() {
            return this.f35256b;
        }

        @Override
        public final Origin getOrigin() {
            return this.f35257c;
        }
    }

    static DataEntryResource fromBytes(byte[] bArr, String str, Origin origin) {
        return new a(bArr, str, origin);
    }

    static DataEntryResource fromFile(Path path, Path path2) {
        return new C11649u(path2.toString().replace(File.separatorChar, '/'), path.resolve(path2).toFile());
    }

    static DataEntryResource fromString(String str, Origin origin, String... strArr) {
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArr) {
            sb2.append(str2);
            sb2.append(System.lineSeparator());
        }
        return new a(sb2.toString().getBytes(), str, origin);
    }

    static DataEntryResource fromZip(ZipFile zipFile, ZipEntry zipEntry) {
        return new C11681w(zipFile, zipEntry);
    }

    InputStream getByteStream() throws ResourceException;

    default DataEntryResource withName(String str) {
        return new C11676v(str, this);
    }
}
