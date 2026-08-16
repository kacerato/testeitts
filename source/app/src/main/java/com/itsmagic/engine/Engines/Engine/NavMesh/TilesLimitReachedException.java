package com.itsmagic.engine.Engines.Engine.NavMesh;

public class TilesLimitReachedException extends RuntimeException {
    public TilesLimitReachedException() {
    }

    public TilesLimitReachedException(String message) {
        super(message);
    }

    public TilesLimitReachedException(String message, Throwable cause) {
        super(message, cause);
    }

    public TilesLimitReachedException(Throwable cause) {
        super(cause);
    }

    public TilesLimitReachedException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
        super(message, cause, enableSuppression, writableStackTrace);
    }
}
