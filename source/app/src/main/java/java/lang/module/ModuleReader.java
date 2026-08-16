package java.lang.module;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.ByteBuffer;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Stream;

public interface ModuleReader extends Closeable {
    Optional<URI> find(String str) throws IOException;

    Stream<String> list() throws IOException;

    @Override
    void close() throws IOException;

    default Optional<InputStream> open(String name) throws IOException {
        Optional<URI> ouri = find(name);
        if (ouri.isPresent()) {
            return Optional.of(ouri.get().toURL().openStream());
        }
        return Optional.empty();
    }

    default Optional<ByteBuffer> read(String name) throws IOException {
        Optional<InputStream> oin = open(name);
        if (oin.isPresent()) {
            InputStream in2 = oin.get();
            try {
                Optional<ByteBuffer> of2 = Optional.of(ByteBuffer.wrap(in2.readAllBytes()));
                if (in2 != null) {
                    in2.close();
                }
                return of2;
            } catch (Throwable th2) {
                if (in2 != null) {
                    try {
                        in2.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
        return Optional.empty();
    }

    default void release(ByteBuffer bb2) {
        Objects.requireNonNull(bb2);
    }
}
