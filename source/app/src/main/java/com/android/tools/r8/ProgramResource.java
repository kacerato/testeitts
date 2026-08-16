package com.android.tools.r8;

import com.android.tools.r8.internal.C6040Uo0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.Set;

public interface ProgramResource extends Resource {

    public static class ByteResource implements ProgramResource {

        static final boolean f35423e = true;

        private final Origin f35424a;

        private final Kind f35425b;

        private final byte[] f35426c;

        private final Set f35427d;

        @Override
        public InputStream getByteStream() throws ResourceException {
            return new ByteArrayInputStream(this.f35426c);
        }

        @Override
        public byte[] getBytes() throws ResourceException {
            return this.f35426c;
        }

        @Override
        public Set<String> getClassDescriptors() {
            return this.f35427d;
        }

        @Override
        public Kind getKind() {
            return this.f35425b;
        }

        @Override
        public Origin getOrigin() {
            return this.f35424a;
        }

        private ByteResource(Origin origin, Kind kind, byte[] bArr, Set set) {
            if (!f35423e && bArr == null) {
                throw new AssertionError();
            }
            this.f35424a = origin;
            this.f35425b = kind;
            this.f35426c = bArr;
            this.f35427d = set;
        }
    }

    public static class FileResource implements ProgramResource {

        private final PathOrigin f35428a;

        private final Kind f35429b;

        private final Path f35430c;

        @Override
        public InputStream getByteStream() throws ResourceException {
            try {
                return Files.newInputStream(this.f35430c, new OpenOption[0]);
            } catch (IOException e10) {
                throw new ResourceException(getOrigin(), e10);
            }
        }

        @Override
        public byte[] getBytes() throws ResourceException {
            try {
                return Files.readAllBytes(this.f35430c);
            } catch (IOException e10) {
                throw new ResourceException(getOrigin(), e10);
            }
        }

        @Override
        public Set<String> getClassDescriptors() {
            return null;
        }

        @Override
        public Kind getKind() {
            return this.f35429b;
        }

        @Override
        public Origin getOrigin() {
            return this.f35428a;
        }

        private FileResource(Kind kind, Path path) {
            this.f35428a = new PathOrigin(path);
            this.f35429b = kind;
            this.f35430c = path;
        }
    }

    public enum Kind {
        CF,
        DEX;

        Kind() {
        }
    }

    static ProgramResource fromBytes(Origin origin, Kind kind, byte[] bArr, Set<String> set) {
        return new ByteResource(origin, kind, bArr, set);
    }

    static ProgramResource fromFile(Kind kind, Path path) {
        return new FileResource(kind, path);
    }

    InputStream getByteStream() throws ResourceException;

    default byte[] getBytes() throws ResourceException {
        try {
            return C6040Uo0.a(getByteStream());
        } catch (IOException e10) {
            throw new ResourceException(getOrigin(), e10);
        }
    }

    Set<String> getClassDescriptors();

    Kind getKind();
}
