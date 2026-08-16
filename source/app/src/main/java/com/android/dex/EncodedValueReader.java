package com.android.dex;

import com.android.dex.util.ByteInput;

public final class EncodedValueReader {
    public static final int ENCODED_ANNOTATION = 29;
    public static final int ENCODED_ARRAY = 28;
    public static final int ENCODED_BOOLEAN = 31;
    public static final int ENCODED_BYTE = 0;
    public static final int ENCODED_CHAR = 3;
    public static final int ENCODED_DOUBLE = 17;
    public static final int ENCODED_ENUM = 27;
    public static final int ENCODED_FIELD = 25;
    public static final int ENCODED_FLOAT = 16;
    public static final int ENCODED_INT = 4;
    public static final int ENCODED_LONG = 6;
    public static final int ENCODED_METHOD = 26;
    public static final int ENCODED_NULL = 30;
    public static final int ENCODED_SHORT = 2;
    public static final int ENCODED_STRING = 23;
    public static final int ENCODED_TYPE = 24;
    private static final int MUST_READ = -1;
    private int annotationType;
    private int arg;

    protected final ByteInput f35082in;
    private int type;

    public EncodedValueReader(ByteInput byteInput) {
        this.type = -1;
        this.f35082in = byteInput;
    }

    private void checkType(int i10) {
        if (peek() != i10) {
            throw new IllegalStateException(String.format("Expected %x but was %x", Integer.valueOf(i10), Integer.valueOf(peek())));
        }
    }

    public int getAnnotationType() {
        return this.annotationType;
    }

    public int peek() {
        if (this.type == -1) {
            byte readByte = this.f35082in.readByte();
            this.type = readByte & 31;
            this.arg = (readByte & 224) >> 5;
        }
        return this.type;
    }

    public int readAnnotation() {
        checkType(29);
        this.type = -1;
        this.annotationType = Leb128.readUnsignedLeb128(this.f35082in);
        return Leb128.readUnsignedLeb128(this.f35082in);
    }

    public int readAnnotationName() {
        return Leb128.readUnsignedLeb128(this.f35082in);
    }

    public int readArray() {
        checkType(28);
        this.type = -1;
        return Leb128.readUnsignedLeb128(this.f35082in);
    }

    public boolean readBoolean() {
        checkType(31);
        this.type = -1;
        return this.arg != 0;
    }

    public byte readByte() {
        checkType(0);
        this.type = -1;
        return (byte) EncodedValueCodec.readSignedInt(this.f35082in, this.arg);
    }

    public char readChar() {
        checkType(3);
        this.type = -1;
        return (char) EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, false);
    }

    public double readDouble() {
        checkType(17);
        this.type = -1;
        return Double.longBitsToDouble(EncodedValueCodec.readUnsignedLong(this.f35082in, this.arg, true));
    }

    public int readEnum() {
        checkType(27);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, false);
    }

    public int readField() {
        checkType(25);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, false);
    }

    public float readFloat() {
        checkType(16);
        this.type = -1;
        return Float.intBitsToFloat(EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, true));
    }

    public int readInt() {
        checkType(4);
        this.type = -1;
        return EncodedValueCodec.readSignedInt(this.f35082in, this.arg);
    }

    public long readLong() {
        checkType(6);
        this.type = -1;
        return EncodedValueCodec.readSignedLong(this.f35082in, this.arg);
    }

    public int readMethod() {
        checkType(26);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, false);
    }

    public void readNull() {
        checkType(30);
        this.type = -1;
    }

    public short readShort() {
        checkType(2);
        this.type = -1;
        return (short) EncodedValueCodec.readSignedInt(this.f35082in, this.arg);
    }

    public int readString() {
        checkType(23);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, false);
    }

    public int readType() {
        checkType(24);
        this.type = -1;
        return EncodedValueCodec.readUnsignedInt(this.f35082in, this.arg, false);
    }

    public void skipValue() {
        int peek = peek();
        if (peek == 0) {
            readByte();
            return;
        }
        if (peek == 6) {
            readLong();
            return;
        }
        if (peek == 2) {
            readShort();
            return;
        }
        if (peek == 3) {
            readChar();
            return;
        }
        if (peek == 4) {
            readInt();
            return;
        }
        if (peek == 16) {
            readFloat();
            return;
        }
        if (peek == 17) {
            readDouble();
            return;
        }
        int i10 = 0;
        switch (peek) {
            case 23:
                readString();
                return;
            case 24:
                readType();
                return;
            case 25:
                readField();
                return;
            case 26:
                readMethod();
                return;
            case 27:
                readEnum();
                return;
            case 28:
                int readArray = readArray();
                while (i10 < readArray) {
                    skipValue();
                    i10++;
                }
                return;
            case 29:
                int readAnnotation = readAnnotation();
                while (i10 < readAnnotation) {
                    readAnnotationName();
                    skipValue();
                    i10++;
                }
                return;
            case 30:
                readNull();
                return;
            case 31:
                readBoolean();
                return;
            default:
                throw new DexException("Unexpected type: " + Integer.toHexString(this.type));
        }
    }

    public EncodedValueReader(EncodedValue encodedValue) {
        this(encodedValue.asByteInput());
    }

    public EncodedValueReader(ByteInput byteInput, int i10) {
        this.f35082in = byteInput;
        this.type = i10;
    }

    public EncodedValueReader(EncodedValue encodedValue, int i10) {
        this(encodedValue.asByteInput(), i10);
    }
}
