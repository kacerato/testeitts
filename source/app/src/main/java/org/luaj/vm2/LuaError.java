package org.luaj.vm2;

public class LuaError extends RuntimeException {
    private static final long serialVersionUID = 1;
    protected Throwable cause;
    protected String fileline;
    protected int level;
    private LuaValue object;
    protected String traceback;

    public LuaError(String str) {
        super(str);
        this.level = 1;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }

    @Override
    public String getMessage() {
        String str = this.traceback;
        if (str != null) {
            return str;
        }
        String message = super.getMessage();
        if (message == null) {
            return null;
        }
        if (this.fileline == null) {
            return message;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.fileline);
        stringBuffer.append(" ");
        stringBuffer.append(message);
        return stringBuffer.toString();
    }

    public LuaValue getMessageObject() {
        LuaValue luaValue = this.object;
        if (luaValue != null) {
            return luaValue;
        }
        String message = getMessage();
        if (message != null) {
            return LuaValue.valueOf(message);
        }
        return null;
    }

    public LuaError(String str, int i10) {
        super(str);
        this.level = i10;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public LuaError(Throwable th2) {
        super(r0.toString());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("vm error: ");
        stringBuffer.append((Object) th2);
        this.cause = th2;
        this.level = 1;
    }

    public LuaError(LuaValue luaValue) {
        super(luaValue.tojstring());
        this.object = luaValue;
        this.level = 1;
    }
}
