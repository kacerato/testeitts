package java.nio.charset;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/charset/CharsetEncoder.class
 */
public abstract class CharsetEncoder {
    protected abstract CoderResult encodeLoop(CharBuffer charBuffer, ByteBuffer byteBuffer);

    protected CharsetEncoder(Charset cs, float averageBytesPerChar, float maxBytesPerChar, byte[] replacement) {
        throw new RuntimeException("Stub!");
    }

    protected CharsetEncoder(Charset cs, float averageBytesPerChar, float maxBytesPerChar) {
        throw new RuntimeException("Stub!");
    }

    public final Charset charset() {
        throw new RuntimeException("Stub!");
    }

    public final byte[] replacement() {
        throw new RuntimeException("Stub!");
    }

    public final CharsetEncoder replaceWith(byte[] newReplacement) {
        throw new RuntimeException("Stub!");
    }

    protected void implReplaceWith(byte[] newReplacement) {
        throw new RuntimeException("Stub!");
    }

    public boolean isLegalReplacement(byte[] repl) {
        throw new RuntimeException("Stub!");
    }

    public CodingErrorAction malformedInputAction() {
        throw new RuntimeException("Stub!");
    }

    public final CharsetEncoder onMalformedInput(CodingErrorAction newAction) {
        throw new RuntimeException("Stub!");
    }

    protected void implOnMalformedInput(CodingErrorAction newAction) {
        throw new RuntimeException("Stub!");
    }

    public CodingErrorAction unmappableCharacterAction() {
        throw new RuntimeException("Stub!");
    }

    public final CharsetEncoder onUnmappableCharacter(CodingErrorAction newAction) {
        throw new RuntimeException("Stub!");
    }

    protected void implOnUnmappableCharacter(CodingErrorAction newAction) {
        throw new RuntimeException("Stub!");
    }

    public final float averageBytesPerChar() {
        throw new RuntimeException("Stub!");
    }

    public final float maxBytesPerChar() {
        throw new RuntimeException("Stub!");
    }

    public final CoderResult encode(CharBuffer in2, ByteBuffer out, boolean endOfInput) {
        throw new RuntimeException("Stub!");
    }

    public final CoderResult flush(ByteBuffer out) {
        throw new RuntimeException("Stub!");
    }

    protected CoderResult implFlush(ByteBuffer out) {
        throw new RuntimeException("Stub!");
    }

    public final CharsetEncoder reset() {
        throw new RuntimeException("Stub!");
    }

    protected void implReset() {
        throw new RuntimeException("Stub!");
    }

    public final ByteBuffer encode(CharBuffer in2) throws CharacterCodingException {
        throw new RuntimeException("Stub!");
    }

    public boolean canEncode(char c10) {
        throw new RuntimeException("Stub!");
    }

    public boolean canEncode(CharSequence cs) {
        throw new RuntimeException("Stub!");
    }
}
