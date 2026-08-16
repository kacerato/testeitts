package com.android.tools.r8.origin;

public class ArchiveEntryOrigin extends Origin {

    final String f56143f;

    public ArchiveEntryOrigin(String str, Origin origin) {
        super(origin);
        this.f56143f = str;
    }

    public String getEntryName() {
        return this.f56143f;
    }

    @Override
    public String part() {
        return this.f56143f;
    }
}
