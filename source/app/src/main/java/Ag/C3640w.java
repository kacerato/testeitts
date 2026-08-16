package ag;

import androidx.exifinterface.media.ExifInterface;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.Set;
import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.jvm.internal.t0;

@t0({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,420:1\n1849#2,3:421\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n*L\n21#1:421,3\n*E\n"})
public final class C3640w {

    @t0({"SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt$fromInt$1$1\n*L\n1#1,420:1\n*E\n"})
    public static final class a<T> implements Mf.l<T, Boolean> {

        public final int f32189b;

        public a(int i10) {
            this.f32189b = i10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Boolean invoke(Enum r32) {
            InterfaceC3628j interfaceC3628j = (InterfaceC3628j) r32;
            return Boolean.valueOf((this.f32189b & interfaceC3628j.a()) == interfaceC3628j.getValue());
        }
    }

    public static final r a(Matcher matcher, int i10, CharSequence charSequence) {
        return f(matcher, i10, charSequence);
    }

    public static final Vf.l c(MatchResult matchResult) {
        return i(matchResult);
    }

    public static final Vf.l d(MatchResult matchResult, int i10) {
        return j(matchResult, i10);
    }

    public static final r f(Matcher matcher, int i10, CharSequence charSequence) {
        if (matcher.find(i10)) {
            return new C3636s(matcher, charSequence);
        }
        return null;
    }

    public static final <T extends Enum<T> & InterfaceC3628j> Set<T> g(int i10) {
        kotlin.jvm.internal.M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        EnumSet allOf = EnumSet.allOf(Enum.class);
        kotlin.jvm.internal.M.m(allOf);
        kotlin.jvm.internal.M.w();
        pf.M.S0(allOf, new a(i10));
        Set<T> unmodifiableSet = Collections.unmodifiableSet(allOf);
        kotlin.jvm.internal.M.o(unmodifiableSet, "unmodifiableSet(...)");
        return unmodifiableSet;
    }

    public static final r h(Matcher matcher, CharSequence charSequence) {
        if (matcher.matches()) {
            return new C3636s(matcher, charSequence);
        }
        return null;
    }

    public static final Vf.l i(MatchResult matchResult) {
        return Vf.u.Y1(matchResult.start(), matchResult.end());
    }

    public static final Vf.l j(MatchResult matchResult, int i10) {
        return Vf.u.Y1(matchResult.start(i10), matchResult.end(i10));
    }

    public static final int k(Iterable<? extends InterfaceC3628j> iterable) {
        Iterator<? extends InterfaceC3628j> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 |= it.next().getValue();
        }
        return i10;
    }
}
