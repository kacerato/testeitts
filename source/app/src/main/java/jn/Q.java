package jn;

public enum Q {
    FAILURE,
    SUCCSESS,
    IN_PROGRESS,
    PARTIAL_RESULT,
    FAILURE_INVALID_PARAM;

    public boolean b() {
        return this == FAILURE || this == FAILURE_INVALID_PARAM;
    }

    public boolean c() {
        return this == IN_PROGRESS;
    }

    public boolean d() {
        return this == PARTIAL_RESULT;
    }

    public boolean e() {
        return this == SUCCSESS || this == PARTIAL_RESULT;
    }
}
