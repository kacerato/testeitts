package b3;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import h3.C13423b;
import h3.InterfaceC13422a;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class s {

    public static final String f32937c = ":";

    public static s f32939e;

    public final InterfaceC13422a f32940a;

    public static final long f32936b = TimeUnit.HOURS.toSeconds(1);

    public static final Pattern f32938d = Pattern.compile("\\AA[\\w-]{38}\\z");

    public s(InterfaceC13422a interfaceC13422a) {
        this.f32940a = interfaceC13422a;
    }

    public static s c() {
        return d(C13423b.b());
    }

    public static s d(InterfaceC13422a interfaceC13422a) {
        if (f32939e == null) {
            f32939e = new s(interfaceC13422a);
        }
        return f32939e;
    }

    public static boolean g(@Nullable String str) {
        return f32938d.matcher(str).matches();
    }

    public static boolean h(@Nullable String str) {
        return str.contains(f32937c);
    }

    public long a() {
        return this.f32940a.a();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long e() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean f(@NonNull f3.d dVar) {
        return TextUtils.isEmpty(dVar.b()) || dVar.h() + dVar.c() < b() + f32936b;
    }
}
