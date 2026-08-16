package com.github.javaparser.resolution;

public class UnsolvedSymbolException extends RuntimeException {
    private Throwable cause;
    private String context;
    private String name;

    public UnsolvedSymbolException(String name) {
        this(name, null, null);
    }

    public String getName() {
        return this.name;
    }

    @Override
    public String toString() {
        return "UnsolvedSymbolException{context='" + this.context + "', name='" + this.name + "', cause='" + ((Object) this.cause) + "'}";
    }

    public UnsolvedSymbolException(String name, String context) {
        this(name, context, null);
    }

    public UnsolvedSymbolException(String name, Throwable cause) {
        this(name, null, cause);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UnsolvedSymbolException(String name, String context, Throwable cause) {
        super(r0.toString(), cause);
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Unsolved symbol");
        if (context != null) {
            str = " in " + context;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(" : ");
        sb2.append(name);
        this.name = name;
        this.context = context;
        this.cause = cause;
    }
}
