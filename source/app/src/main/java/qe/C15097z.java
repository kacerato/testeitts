package qe;

import android.text.SpannableStringBuilder;
import android.text.Spanned;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;

public class C15097z implements Appendable, CharSequence {

    public final StringBuilder f107838b;

    public final Deque<a> f107839c;

    public static class a {

        public final Object f107840a;

        public int f107841b;

        public int f107842c;

        public final int f107843d;

        public a(@NonNull Object obj, int i10, int i11, int i12) {
            this.f107840a = obj;
            this.f107841b = i10;
            this.f107842c = i11;
            this.f107843d = i12;
        }
    }

    public static class b extends SpannableStringBuilder {
        public b(CharSequence charSequence) {
            super(charSequence);
        }
    }

    public C15097z() {
        this("");
    }

    @VisibleForTesting
    public static boolean i(int i10, int i11, int i12) {
        return i12 > i11 && i11 >= 0 && i12 <= i10;
    }

    public static void o(@NonNull C15097z c15097z, @Nullable Object obj, int i10, int i11) {
        if (obj == null || !i(c15097z.length(), i10, i11)) {
            return;
        }
        p(c15097z, obj, i10, i11);
    }

    public static void p(@NonNull C15097z c15097z, @Nullable Object obj, int i10, int i11) {
        if (obj != null) {
            if (!obj.getClass().isArray()) {
                c15097z.n(obj, i10, i11, 33);
                return;
            }
            for (Object obj2 : (Object[]) obj) {
                p(c15097z, obj2, i10, i11);
            }
        }
    }

    @Override
    @NonNull
    public C15097z append(char c10) {
        this.f107838b.append(c10);
        return this;
    }

    @Override
    @NonNull
    public C15097z append(@NonNull CharSequence charSequence) {
        g(length(), charSequence);
        this.f107838b.append(charSequence);
        return this;
    }

    @Override
    @NonNull
    public C15097z append(CharSequence charSequence, int i10, int i11) {
        CharSequence subSequence = charSequence.subSequence(i10, i11);
        g(length(), subSequence);
        this.f107838b.append(subSequence);
        return this;
    }

    @Override
    public char charAt(int i10) {
        return this.f107838b.charAt(i10);
    }

    public void clear() {
        this.f107838b.setLength(0);
        this.f107839c.clear();
    }

    @NonNull
    public C15097z d(@NonNull CharSequence charSequence, @NonNull Object obj) {
        int length = length();
        append(charSequence);
        l(obj, length);
        return this;
    }

    @NonNull
    public C15097z e(@NonNull CharSequence charSequence, @NonNull Object obj, int i10) {
        int length = length();
        append(charSequence);
        n(obj, length, length(), i10);
        return this;
    }

    @NonNull
    public C15097z f(@NonNull String str) {
        this.f107838b.append(str);
        return this;
    }

    public final void g(int i10, @Nullable CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            boolean z10 = spanned instanceof b;
            Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
            int length = spans != null ? spans.length : 0;
            if (length > 0) {
                if (!z10) {
                    for (int i11 = 0; i11 < length; i11++) {
                        Object obj = spans[i11];
                        n(obj, spanned.getSpanStart(obj) + i10, spanned.getSpanEnd(obj) + i10, spanned.getSpanFlags(obj));
                    }
                    return;
                }
                for (int i12 = length - 1; i12 >= 0; i12--) {
                    Object obj2 = spans[i12];
                    n(obj2, spanned.getSpanStart(obj2) + i10, spanned.getSpanEnd(obj2) + i10, spanned.getSpanFlags(obj2));
                }
            }
        }
    }

    @NonNull
    public List<a> h(int i10, int i11) {
        int i12;
        int length = length();
        if (!i(length, i10, i11)) {
            return Collections.emptyList();
        }
        if (i10 == 0 && length == i11) {
            ArrayList arrayList = new ArrayList(this.f107839c);
            Collections.reverse(arrayList);
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(0);
        Iterator<a> descendingIterator = this.f107839c.descendingIterator();
        while (descendingIterator.hasNext()) {
            a next = descendingIterator.next();
            int i13 = next.f107841b;
            if ((i13 >= i10 && i13 < i11) || (((i12 = next.f107842c) <= i11 && i12 > i10) || (i13 < i10 && i12 > i11))) {
                arrayList2.add(next);
            }
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public char j() {
        return this.f107838b.charAt(length() - 1);
    }

    @NonNull
    public CharSequence k(int i10) {
        a next;
        int i11;
        int length = length();
        b bVar = new b(this.f107838b.subSequence(i10, length));
        Iterator<a> it = this.f107839c.iterator();
        while (it.hasNext() && (next = it.next()) != null) {
            int i12 = next.f107841b;
            if (i12 >= i10 && (i11 = next.f107842c) <= length) {
                bVar.setSpan(next.f107840a, i12 - i10, i11 - i10, 33);
                it.remove();
            }
        }
        this.f107838b.replace(i10, length, "");
        return bVar;
    }

    @NonNull
    public C15097z l(@NonNull Object obj, int i10) {
        return m(obj, i10, length());
    }

    @Override
    public int length() {
        return this.f107838b.length();
    }

    @NonNull
    public C15097z m(@NonNull Object obj, int i10, int i11) {
        return n(obj, i10, i11, 33);
    }

    @NonNull
    public C15097z n(@NonNull Object obj, int i10, int i11, int i12) {
        this.f107839c.push(new a(obj, i10, i11, i12));
        return this;
    }

    @NonNull
    public SpannableStringBuilder q() {
        b bVar = new b(this.f107838b);
        for (a aVar : this.f107839c) {
            bVar.setSpan(aVar.f107840a, aVar.f107841b, aVar.f107842c, aVar.f107843d);
        }
        return bVar;
    }

    @NonNull
    public CharSequence r() {
        return q();
    }

    @Override
    public CharSequence subSequence(int i10, int i11) {
        List<a> h10 = h(i10, i11);
        if (h10.isEmpty()) {
            return this.f107838b.subSequence(i10, i11);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f107838b.subSequence(i10, i11));
        int length = spannableStringBuilder.length();
        for (a aVar : h10) {
            int max = Math.max(0, aVar.f107841b - i10);
            spannableStringBuilder.setSpan(aVar.f107840a, max, Math.min(length, (aVar.f107842c - aVar.f107841b) + max), aVar.f107843d);
        }
        return spannableStringBuilder;
    }

    @Override
    @NonNull
    public String toString() {
        return this.f107838b.toString();
    }

    public C15097z(@NonNull CharSequence charSequence) {
        this.f107839c = new ArrayDeque(8);
        this.f107838b = new StringBuilder(charSequence);
        g(0, charSequence);
    }
}
