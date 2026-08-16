package java.lang;

import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.PrimitiveIterator;
import java.util.Spliterators;
import java.util.function.IntConsumer;
import java.util.stream.IntStream;
import java.util.stream.StreamSupport;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/CharSequence.class
 */
public interface CharSequence {
    int length();

    char charAt(int i10);

    CharSequence subSequence(int i10, int i11);

    String toString();

    default boolean isEmpty() {
        return length() == 0;
    }

    default IntStream chars() {
        return StreamSupport.intStream(() -> {
            return Spliterators.spliterator(new PrimitiveIterator.OfInt(this) {
                int cur;
                final CharSequence this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                    this.cur = 0;
                }

                @Override
                public boolean hasNext() {
                    return this.cur < this.this$0.length();
                }

                @Override
                public int nextInt() {
                    if (hasNext()) {
                        CharSequence charSequence = this.this$0;
                        int i10 = this.cur;
                        this.cur = i10 + 1;
                        return charSequence.charAt(i10);
                    }
                    throw new NoSuchElementException();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public void forEachRemaining(IntConsumer block) {
                    while (this.cur < this.this$0.length()) {
                        block.accept(this.this$0.charAt(this.cur));
                        this.cur++;
                    }
                }
            }, length(), 16);
        }, 16464, false);
    }

    default IntStream codePoints() {
        return StreamSupport.intStream(() -> {
            return Spliterators.spliteratorUnknownSize(new PrimitiveIterator.OfInt(this) {
                int cur;
                final CharSequence this$0;

                {
                    Objects.requireNonNull(this);
                    this.this$0 = this;
                    this.cur = 0;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override
                public void forEachRemaining(IntConsumer block) {
                    int length = this.this$0.length();
                    int i10 = this.cur;
                    while (i10 < length) {
                        try {
                            int i11 = i10;
                            i10++;
                            char c12 = this.this$0.charAt(i11);
                            if (!Character.isHighSurrogate(c12) || i10 >= length) {
                                block.accept(c12);
                            } else {
                                char c22 = this.this$0.charAt(i10);
                                if (Character.isLowSurrogate(c22)) {
                                    i10++;
                                    block.accept(Character.toCodePoint(c12, c22));
                                } else {
                                    block.accept(c12);
                                }
                            }
                        } finally {
                            this.cur = i10;
                        }
                    }
                }

                @Override
                public boolean hasNext() {
                    return this.cur < this.this$0.length();
                }

                @Override
                public int nextInt() {
                    int length = this.this$0.length();
                    if (this.cur >= length) {
                        throw new NoSuchElementException();
                    }
                    CharSequence charSequence = this.this$0;
                    int i10 = this.cur;
                    this.cur = i10 + 1;
                    char c12 = charSequence.charAt(i10);
                    if (Character.isHighSurrogate(c12) && this.cur < length) {
                        char c22 = this.this$0.charAt(this.cur);
                        if (Character.isLowSurrogate(c22)) {
                            this.cur++;
                            return Character.toCodePoint(c12, c22);
                        }
                    }
                    return c12;
                }
            }, 16);
        }, 16, false);
    }

    static int compare(CharSequence cs1, CharSequence cs2) {
        if (Objects.requireNonNull(cs1) == Objects.requireNonNull(cs2)) {
            return 0;
        }
        if (cs1.getClass() == cs2.getClass() && (cs1 instanceof Comparable)) {
            return ((Comparable) cs1).compareTo(cs2);
        }
        int len = Math.min(cs1.length(), cs2.length());
        for (int i10 = 0; i10 < len; i10++) {
            char a10 = cs1.charAt(i10);
            char b10 = cs2.charAt(i10);
            if (a10 != b10) {
                return a10 - b10;
            }
        }
        return cs1.length() - cs2.length();
    }

    default void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        Objects.checkFromToIndex(srcBegin, srcEnd, length());
        Objects.checkIndex(dstBegin, (dst.length - (srcEnd - srcBegin)) + 1);
        while (srcBegin < srcEnd) {
            int i10 = dstBegin;
            dstBegin++;
            int i11 = srcBegin;
            srcBegin++;
            dst[i10] = charAt(i11);
        }
    }
}
