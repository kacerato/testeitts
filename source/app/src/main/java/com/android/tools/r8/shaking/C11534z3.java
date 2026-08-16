package com.android.tools.r8.shaking;

import com.android.tools.r8.origin.Origin;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

public class C11534z3 implements InterfaceC11485w3 {

    public final Path f58015a;

    public final List f58016b;

    public final Origin f58017c;

    public C11534z3(List list, Path path, Origin origin) {
        this.f58015a = path;
        this.f58016b = list;
        this.f58017c = origin;
    }

    public static C11534z3 a(List<String> list) {
        return new C11534z3(list);
    }

    @Override
    public final String get() {
        return String.join(System.lineSeparator(), this.f58016b);
    }

    @Override
    public final String getName() {
        return "<no file>";
    }

    @Override
    public final Origin getOrigin() {
        return this.f58017c;
    }

    @Override
    public final Path a() {
        return this.f58015a;
    }

    public C11534z3(List list) {
        Path path = Paths.get("", new String[0]);
        Origin unknown = Origin.unknown();
        this.f58015a = path;
        this.f58016b = list;
        this.f58017c = unknown;
    }
}
