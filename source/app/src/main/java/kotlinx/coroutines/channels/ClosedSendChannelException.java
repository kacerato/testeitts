package kotlinx.coroutines.channels;

import org.jetbrains.annotations.Nullable;

public final class ClosedSendChannelException extends IllegalStateException {
    public ClosedSendChannelException(@Nullable String str) {
        super(str);
    }
}
