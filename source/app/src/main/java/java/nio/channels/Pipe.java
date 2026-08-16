package java.nio.channels;

import java.io.IOException;
import java.nio.channels.spi.AbstractSelectableChannel;
import java.nio.channels.spi.SelectorProvider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/Pipe.class
 */
public abstract class Pipe {
    public abstract SourceChannel source();

    public abstract SinkChannel sink();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/Pipe$SourceChannel.class
 */
    public static abstract class SourceChannel extends AbstractSelectableChannel implements ReadableByteChannel, ScatteringByteChannel {
        protected SourceChannel(SelectorProvider provider) {
            super((SelectorProvider) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public final int validOps() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/channels/Pipe$SinkChannel.class
 */
    public static abstract class SinkChannel extends AbstractSelectableChannel implements WritableByteChannel, GatheringByteChannel {
        protected SinkChannel(SelectorProvider provider) {
            super((SelectorProvider) null);
            throw new RuntimeException("Stub!");
        }

        @Override
        public final int validOps() {
            throw new RuntimeException("Stub!");
        }
    }

    protected Pipe() {
        throw new RuntimeException("Stub!");
    }

    public static Pipe open() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
