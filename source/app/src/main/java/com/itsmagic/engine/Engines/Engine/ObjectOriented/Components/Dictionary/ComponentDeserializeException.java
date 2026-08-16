package com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Dictionary;

public class ComponentDeserializeException extends RuntimeException {
    public ComponentDeserializeException() {
    }

    public ComponentDeserializeException(String message) {
        super(message);
    }

    public ComponentDeserializeException(String message, Throwable cause) {
        super(message, cause);
    }

    public ComponentDeserializeException(Throwable cause) {
        super(cause);
    }
}
