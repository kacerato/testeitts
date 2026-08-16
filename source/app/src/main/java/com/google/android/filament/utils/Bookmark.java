package com.google.android.filament.utils;

public class Bookmark {

    public long f60384a;

    public Bookmark(long j10) {
        this.f60384a = j10;
    }

    private static native void nDestroyBookmark(long j10);

    public long a() {
        return this.f60384a;
    }

    public void finalize() throws Throwable {
        nDestroyBookmark(this.f60384a);
        super.finalize();
    }
}
