package okhttp3.internal.http2;

import Ng.a;
import java.io.IOException;

public final class StreamResetException extends IOException {
    public final a errorCode;

    public StreamResetException(a aVar) {
        super("stream was reset: " + ((Object) aVar));
        this.errorCode = aVar;
    }
}
