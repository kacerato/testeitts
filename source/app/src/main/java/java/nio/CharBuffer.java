package java.nio;

import java.io.IOException;
import java.util.stream.IntStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/CharBuffer.class
 */
public abstract class CharBuffer extends Buffer implements Comparable<CharBuffer>, Appendable, CharSequence, Readable {
    public abstract CharBuffer slice();

    public abstract CharBuffer duplicate();

    public abstract CharBuffer asReadOnlyBuffer();

    public abstract char get();

    public abstract CharBuffer put(char c10);

    public abstract char get(int i10);

    public abstract CharBuffer put(int i10, char c10);

    public abstract CharBuffer compact();

    @Override
    public abstract boolean isDirect();

    @Override
    public abstract CharBuffer subSequence(int i10, int i11);

    public abstract ByteOrder order();

    CharBuffer() {
        throw new RuntimeException("Stub!");
    }

    public static CharBuffer allocate(int capacity) {
        throw new RuntimeException("Stub!");
    }

    public static CharBuffer wrap(char[] array, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public static CharBuffer wrap(char[] array) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(CharBuffer target) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static CharBuffer wrap(CharSequence csq, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public static CharBuffer wrap(CharSequence csq) {
        throw new RuntimeException("Stub!");
    }

    public CharBuffer get(char[] dst, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public CharBuffer get(char[] dst) {
        throw new RuntimeException("Stub!");
    }

    public CharBuffer put(CharBuffer src) {
        throw new RuntimeException("Stub!");
    }

    public CharBuffer put(char[] src, int offset, int length) {
        throw new RuntimeException("Stub!");
    }

    public final CharBuffer put(char[] src) {
        throw new RuntimeException("Stub!");
    }

    public CharBuffer put(String src, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    public final CharBuffer put(String src) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean hasArray() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final char[] array() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int arrayOffset() {
        throw new RuntimeException("Stub!");
    }

    public int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object ob2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int compareTo(CharBuffer that) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String toString() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final int length() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final char charAt(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharBuffer append(CharSequence csq) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharBuffer append(CharSequence csq, int start, int end) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharBuffer append(char c10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public IntStream chars() {
        throw new RuntimeException("Stub!");
    }
}
