package com.android.apksig.internal.asn1;

import android.os.Build;
import com.android.apksig.internal.asn1.Asn1BerParser;
import com.android.apksig.internal.asn1.ber.BerDataValue;
import com.android.apksig.internal.asn1.ber.BerDataValueFormatException;
import com.android.apksig.internal.asn1.ber.BerDataValueReader;
import com.android.apksig.internal.asn1.ber.BerEncoding;
import com.android.apksig.internal.asn1.ber.ByteBufferBerDataValueReader;
import com.android.apksig.internal.compat.ClassCompat;
import com.android.apksig.internal.util.ByteBufferUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class Asn1BerParser {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$android$apksig$internal$asn1$Asn1Type;

        static {
            int[] iArr = new int[Asn1Type.values().length];
            $SwitchMap$com$android$apksig$internal$asn1$Asn1Type = iArr;
            try {
                iArr[Asn1Type.CHOICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.SEQUENCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.UNENCODED_CONTAINER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.SET_OF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.SEQUENCE_OF.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.INTEGER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.OBJECT_IDENTIFIER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.UTC_TIME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.GENERALIZED_TIME.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$asn1$Asn1Type[Asn1Type.BOOLEAN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public static final class AnnotatedField {
        private final Asn1Field mAnnotation;
        private final int mBerTagClass;
        private final int mBerTagNumber;
        private final Asn1Type mDataType;
        private final Field mField;
        private final boolean mOptional;
        private final Asn1TagClass mTagClass;
        private final Asn1Tagging mTagging;

        public AnnotatedField(Field field, Asn1Field asn1Field) throws Asn1DecodingException {
            this.mField = field;
            this.mAnnotation = asn1Field;
            Asn1Type type = asn1Field.type();
            this.mDataType = type;
            Asn1TagClass cls = asn1Field.cls();
            cls = cls == Asn1TagClass.AUTOMATIC ? asn1Field.tagNumber() != -1 ? Asn1TagClass.CONTEXT_SPECIFIC : Asn1TagClass.UNIVERSAL : cls;
            this.mTagClass = cls;
            this.mBerTagClass = BerEncoding.getTagClass(cls);
            this.mBerTagNumber = asn1Field.tagNumber() != -1 ? asn1Field.tagNumber() : (type == Asn1Type.CHOICE || type == Asn1Type.ANY) ? -1 : BerEncoding.getTagNumber(type);
            Asn1Tagging tagging = asn1Field.tagging();
            this.mTagging = tagging;
            if ((tagging != Asn1Tagging.EXPLICIT && tagging != Asn1Tagging.IMPLICIT) || asn1Field.tagNumber() != -1) {
                this.mOptional = asn1Field.optional();
                return;
            }
            throw new Asn1DecodingException("Tag number must be specified when tagging mode is " + ((Object) tagging));
        }

        public Asn1Field getAnnotation() {
            return this.mAnnotation;
        }

        public int getBerTagClass() {
            return this.mBerTagClass;
        }

        public int getBerTagNumber() {
            return this.mBerTagNumber;
        }

        public Field getField() {
            return this.mField;
        }

        public boolean isOptional() {
            return this.mOptional;
        }

        public void setValueFrom(BerDataValue berDataValue, Object obj) throws Asn1DecodingException {
            int tagClass = berDataValue.getTagClass();
            if (this.mBerTagNumber != -1) {
                int tagNumber = berDataValue.getTagNumber();
                if (tagClass != this.mBerTagClass || tagNumber != this.mBerTagNumber) {
                    throw new Asn1UnexpectedTagException("Tag mismatch. Expected: " + BerEncoding.tagClassAndNumberToString(this.mBerTagClass, this.mBerTagNumber) + ", but found " + BerEncoding.tagClassAndNumberToString(tagClass, tagNumber));
                }
            } else if (tagClass != this.mBerTagClass) {
                throw new Asn1UnexpectedTagException("Tag mismatch. Expected class: " + BerEncoding.tagClassToString(this.mBerTagClass) + ", but found " + BerEncoding.tagClassToString(tagClass));
            }
            if (this.mTagging == Asn1Tagging.EXPLICIT) {
                try {
                    berDataValue = berDataValue.contentsReader().readDataValue();
                } catch (BerDataValueFormatException e10) {
                    throw new Asn1DecodingException("Failed to read contents of EXPLICIT data value", e10);
                }
            }
            BerToJavaConverter.setFieldValue(obj, this.mField, this.mDataType, berDataValue);
        }
    }

    public static class Asn1UnexpectedTagException extends Asn1DecodingException {
        private static final long serialVersionUID = 1;

        public Asn1UnexpectedTagException(String str) {
            super(str);
        }
    }

    public static final class BerToJavaConverter {
        private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];

        private BerToJavaConverter() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v23, types: [T, byte[]] */
        public static <T> T convert(Asn1Type asn1Type, BerDataValue berDataValue, Class<T> cls) throws Asn1DecodingException {
            if (ByteBuffer.class.equals(cls)) {
                return (T) berDataValue.getEncodedContents();
            }
            if (byte[].class.equals(cls)) {
                ByteBuffer encodedContents = berDataValue.getEncodedContents();
                if (!encodedContents.hasRemaining()) {
                    return (T) EMPTY_BYTE_ARRAY;
                }
                ?? r62 = (T) new byte[encodedContents.remaining()];
                encodedContents.get((byte[]) r62);
                return r62;
            }
            if (Asn1OpaqueObject.class.equals(cls)) {
                return (T) new Asn1OpaqueObject(berDataValue.getEncoded());
            }
            ByteBuffer encodedContents2 = berDataValue.getEncodedContents();
            int i10 = AnonymousClass1.$SwitchMap$com$android$apksig$internal$asn1$Asn1Type[asn1Type.ordinal()];
            if (i10 == 1) {
                Asn1Class asn1Class = (Asn1Class) ClassCompat.getDeclaredAnnotation(cls, Asn1Class.class);
                if (asn1Class != null && asn1Class.type() == Asn1Type.CHOICE) {
                    return (T) Asn1BerParser.parseChoice(berDataValue, cls);
                }
            } else if (i10 != 2) {
                switch (i10) {
                    case 6:
                        if (Integer.TYPE.equals(cls) || Integer.class.equals(cls)) {
                            return (T) Integer.valueOf(Asn1BerParser.integerToInt(encodedContents2));
                        }
                        if (Long.TYPE.equals(cls) || Long.class.equals(cls)) {
                            return (T) Long.valueOf(Asn1BerParser.integerToLong(encodedContents2));
                        }
                        if (BigInteger.class.equals(cls)) {
                            return (T) Asn1BerParser.integerToBigInteger(encodedContents2);
                        }
                        break;
                    case 7:
                        if (String.class.equals(cls)) {
                            return (T) Asn1BerParser.oidToString(encodedContents2);
                        }
                        break;
                    case 8:
                    case 9:
                        if (String.class.equals(cls)) {
                            return (T) new String(ByteBufferUtils.toByteArray(encodedContents2));
                        }
                        break;
                    case 10:
                        if (Boolean.TYPE.equals(cls)) {
                            if (encodedContents2.remaining() == 1) {
                                return (T) Boolean.valueOf(encodedContents2.get() != 0);
                            }
                            throw new Asn1DecodingException("Incorrect encoded size of boolean value: " + encodedContents2.remaining());
                        }
                        break;
                }
            } else {
                Asn1Class asn1Class2 = (Asn1Class) ClassCompat.getDeclaredAnnotation(cls, Asn1Class.class);
                if (asn1Class2 != null && asn1Class2.type() == Asn1Type.SEQUENCE) {
                    return (T) Asn1BerParser.parseSequence(berDataValue, cls);
                }
            }
            throw new Asn1DecodingException("Unsupported conversion: ASN.1 " + ((Object) asn1Type) + " to " + cls.getName());
        }

        public static void setFieldValue(Object obj, Field field, Asn1Type asn1Type, BerDataValue berDataValue) throws Asn1DecodingException {
            try {
                int i10 = AnonymousClass1.$SwitchMap$com$android$apksig$internal$asn1$Asn1Type[asn1Type.ordinal()];
                if (i10 != 4 && i10 != 5) {
                    field.set(obj, convert(asn1Type, berDataValue, field.getType()));
                } else if (Asn1OpaqueObject.class.equals(field.getType())) {
                    field.set(obj, convert(asn1Type, berDataValue, field.getType()));
                } else {
                    field.set(obj, Asn1BerParser.parseSetOf(berDataValue, Asn1BerParser.getElementType(field)));
                }
            } catch (ReflectiveOperationException e10) {
                throw new Asn1DecodingException("Failed to set value of " + obj.getClass().getName() + "." + field.getName(), e10);
            }
        }
    }

    private Asn1BerParser() {
    }

    private static long decodeBase128UnsignedLong(ByteBuffer byteBuffer) throws Asn1DecodingException {
        long j10 = 0;
        if (!byteBuffer.hasRemaining()) {
            return 0L;
        }
        while (byteBuffer.hasRemaining()) {
            if (j10 > 72057594037927935L) {
                throw new Asn1DecodingException("Base-128 number too large");
            }
            j10 = (j10 << 7) | (r0 & Byte.MAX_VALUE);
            if ((byteBuffer.get() & 128) == 0) {
                return j10;
            }
        }
        throw new Asn1DecodingException("Truncated base-128 encoded input: missing terminating byte, with highest bit not set");
    }

    private static List<AnnotatedField> getAnnotatedFields(Class<?> cls) throws Asn1DecodingException {
        Field[] declaredFields = cls.getDeclaredFields();
        ArrayList arrayList = new ArrayList(declaredFields.length);
        for (Field field : declaredFields) {
            Asn1Field asn1Field = (Asn1Field) field.getAnnotation(Asn1Field.class);
            if (asn1Field != null) {
                if (Modifier.isStatic(field.getModifiers())) {
                    throw new Asn1DecodingException(Asn1Field.class.getName() + " used on a static field: " + cls.getName() + "." + field.getName());
                }
                try {
                    arrayList.add(new AnnotatedField(field, asn1Field));
                } catch (Asn1DecodingException e10) {
                    throw new Asn1DecodingException("Invalid ASN.1 annotation on " + cls.getName() + "." + field.getName(), e10);
                }
            }
        }
        return arrayList;
    }

    private static Asn1Type getContainerAsn1Type(Class<?> cls) throws Asn1DecodingException {
        Asn1Class asn1Class = (Asn1Class) ClassCompat.getDeclaredAnnotation(cls, Asn1Class.class);
        if (asn1Class == null) {
            throw new Asn1DecodingException(cls.getName() + " is not annotated with " + Asn1Class.class.getName());
        }
        int i10 = AnonymousClass1.$SwitchMap$com$android$apksig$internal$asn1$Asn1Type[asn1Class.type().ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return asn1Class.type();
        }
        throw new Asn1DecodingException("Unsupported ASN.1 container annotation type: " + ((Object) asn1Class.type()));
    }

    public static Class<?> getElementType(Field field) throws Asn1DecodingException, ClassNotFoundException {
        String typeName = Build.VERSION.SDK_INT >= 28 ? field.getGenericType().getTypeName() : field.getGenericType().toString();
        int indexOf = typeName.indexOf(60);
        if (indexOf == -1) {
            throw new Asn1DecodingException("Not a container type: " + ((Object) field.getGenericType()));
        }
        int i10 = indexOf + 1;
        int indexOf2 = typeName.indexOf(62, i10);
        if (indexOf2 != -1) {
            return Class.forName(typeName.substring(i10, indexOf2));
        }
        throw new Asn1DecodingException("Not a container type: " + ((Object) field.getGenericType()));
    }

    public static BigInteger integerToBigInteger(ByteBuffer byteBuffer) {
        return !byteBuffer.hasRemaining() ? BigInteger.ZERO : new BigInteger(ByteBufferUtils.toByteArray(byteBuffer));
    }

    public static int integerToInt(ByteBuffer byteBuffer) throws Asn1DecodingException {
        BigInteger integerToBigInteger = integerToBigInteger(byteBuffer);
        if (integerToBigInteger.compareTo(BigInteger.valueOf(-2147483648L)) < 0 || integerToBigInteger.compareTo(BigInteger.valueOf(2147483647L)) > 0) {
            throw new Asn1DecodingException(String.format("INTEGER cannot be represented as int: %1$d (0x%1$x)", integerToBigInteger));
        }
        return integerToBigInteger.intValue();
    }

    public static long integerToLong(ByteBuffer byteBuffer) throws Asn1DecodingException {
        BigInteger integerToBigInteger = integerToBigInteger(byteBuffer);
        if (integerToBigInteger.compareTo(BigInteger.valueOf(Long.MIN_VALUE)) < 0 || integerToBigInteger.compareTo(BigInteger.valueOf(Long.MAX_VALUE)) > 0) {
            throw new Asn1DecodingException(String.format("INTEGER cannot be represented as long: %1$d (0x%1$x)", integerToBigInteger));
        }
        return integerToBigInteger.longValue();
    }

    public static int lambda$parseSequence$0(AnnotatedField annotatedField, AnnotatedField annotatedField2) {
        return annotatedField.getAnnotation().index() - annotatedField2.getAnnotation().index();
    }

    public static String oidToString(ByteBuffer byteBuffer) throws Asn1DecodingException {
        if (!byteBuffer.hasRemaining()) {
            throw new Asn1DecodingException("Empty OBJECT IDENTIFIER");
        }
        long decodeBase128UnsignedLong = decodeBase128UnsignedLong(byteBuffer);
        int min = (int) Math.min(decodeBase128UnsignedLong / 40, 2L);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Long.toString(min));
        sb2.append('.');
        sb2.append(Long.toString(decodeBase128UnsignedLong - (min * 40)));
        while (byteBuffer.hasRemaining()) {
            long decodeBase128UnsignedLong2 = decodeBase128UnsignedLong(byteBuffer);
            sb2.append('.');
            sb2.append(Long.toString(decodeBase128UnsignedLong2));
        }
        return sb2.toString();
    }

    public static <T> T parse(ByteBuffer byteBuffer, Class<T> cls) throws Asn1DecodingException {
        try {
            BerDataValue readDataValue = new ByteBufferBerDataValueReader(byteBuffer).readDataValue();
            if (readDataValue != null) {
                return (T) parse(readDataValue, cls);
            }
            throw new Asn1DecodingException("Empty input");
        } catch (BerDataValueFormatException e10) {
            throw new Asn1DecodingException("Failed to decode top-level data value", e10);
        }
    }

    public static <T> T parseChoice(BerDataValue berDataValue, Class<T> cls) throws Asn1DecodingException {
        List<AnnotatedField> annotatedFields = getAnnotatedFields(cls);
        if (annotatedFields.isEmpty()) {
            throw new Asn1DecodingException("No fields annotated with " + Asn1Field.class.getName() + " in CHOICE class " + cls.getName());
        }
        int i10 = 0;
        while (i10 < annotatedFields.size() - 1) {
            AnnotatedField annotatedField = annotatedFields.get(i10);
            int berTagNumber = annotatedField.getBerTagNumber();
            int berTagClass = annotatedField.getBerTagClass();
            i10++;
            for (int i11 = i10; i11 < annotatedFields.size(); i11++) {
                AnnotatedField annotatedField2 = annotatedFields.get(i11);
                int berTagNumber2 = annotatedField2.getBerTagNumber();
                int berTagClass2 = annotatedField2.getBerTagClass();
                if (berTagNumber == berTagNumber2 && berTagClass == berTagClass2) {
                    throw new Asn1DecodingException("CHOICE fields are indistinguishable because they have the same tag class and number: " + cls.getName() + "." + annotatedField.getField().getName() + " and ." + annotatedField2.getField().getName());
                }
            }
        }
        try {
            T newInstance = cls.getConstructor(null).newInstance(null);
            Iterator<AnnotatedField> it = annotatedFields.iterator();
            while (it.hasNext()) {
                try {
                    it.next().setValueFrom(berDataValue, newInstance);
                    return newInstance;
                } catch (Asn1UnexpectedTagException unused) {
                }
            }
            throw new Asn1DecodingException("No options of CHOICE " + cls.getName() + " matched");
        } catch (IllegalArgumentException | ReflectiveOperationException e10) {
            throw new Asn1DecodingException("Failed to instantiate " + cls.getName(), e10);
        }
    }

    public static <T> List<T> parseImplicitSetOf(ByteBuffer byteBuffer, Class<T> cls) throws Asn1DecodingException {
        try {
            BerDataValue readDataValue = new ByteBufferBerDataValueReader(byteBuffer).readDataValue();
            if (readDataValue != null) {
                return parseSetOf(readDataValue, cls);
            }
            throw new Asn1DecodingException("Empty input");
        } catch (BerDataValueFormatException e10) {
            throw new Asn1DecodingException("Failed to decode top-level data value", e10);
        }
    }

    public static <T> T parseSequence(BerDataValue berDataValue, Class<T> cls) throws Asn1DecodingException {
        return (T) parseSequence(berDataValue, cls, false);
    }

    public static <T> List<T> parseSetOf(BerDataValue berDataValue, Class<T> cls) throws Asn1DecodingException {
        ArrayList arrayList = new ArrayList();
        BerDataValueReader contentsReader = berDataValue.contentsReader();
        while (true) {
            try {
                BerDataValue readDataValue = contentsReader.readDataValue();
                if (readDataValue == null) {
                    return arrayList;
                }
                arrayList.add(ByteBuffer.class.equals(cls) ? readDataValue.getEncodedContents() : Asn1OpaqueObject.class.equals(cls) ? new Asn1OpaqueObject(readDataValue.getEncoded()) : parse(readDataValue, cls));
            } catch (BerDataValueFormatException e10) {
                throw new Asn1DecodingException("Malformed data value", e10);
            }
        }
    }

    private static <T> T parseSequence(BerDataValue berDataValue, Class<T> cls, boolean z10) throws Asn1DecodingException {
        BerDataValue readDataValue;
        List<AnnotatedField> annotatedFields = getAnnotatedFields(cls);
        Collections.sort(annotatedFields, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int lambda$parseSequence$0;
                lambda$parseSequence$0 = Asn1BerParser.lambda$parseSequence$0((Asn1BerParser.AnnotatedField) obj, (Asn1BerParser.AnnotatedField) obj2);
                return lambda$parseSequence$0;
            }
        });
        if (annotatedFields.size() > 1) {
            AnnotatedField annotatedField = null;
            for (AnnotatedField annotatedField2 : annotatedFields) {
                if (annotatedField != null && annotatedField.getAnnotation().index() == annotatedField2.getAnnotation().index()) {
                    throw new Asn1DecodingException("Fields have the same index: " + cls.getName() + "." + annotatedField.getField().getName() + " and ." + annotatedField2.getField().getName());
                }
                annotatedField = annotatedField2;
            }
        }
        try {
            T newInstance = cls.getConstructor(null).newInstance(null);
            BerDataValueReader contentsReader = berDataValue.contentsReader();
            int i10 = 0;
            while (i10 < annotatedFields.size()) {
                if (z10 && i10 == 0) {
                    readDataValue = berDataValue;
                } else {
                    try {
                        readDataValue = contentsReader.readDataValue();
                    } catch (BerDataValueFormatException e10) {
                        throw new Asn1DecodingException("Malformed data value", e10);
                    }
                }
                if (readDataValue == null) {
                    break;
                }
                for (int i11 = i10; i11 < annotatedFields.size(); i11++) {
                    AnnotatedField annotatedField3 = annotatedFields.get(i11);
                    try {
                        if (annotatedField3.isOptional()) {
                            try {
                                annotatedField3.setValueFrom(readDataValue, newInstance);
                            } catch (Asn1UnexpectedTagException unused) {
                            }
                        } else {
                            annotatedField3.setValueFrom(readDataValue, newInstance);
                        }
                        i10 = i11 + 1;
                        break;
                    } catch (Asn1DecodingException e11) {
                        throw new Asn1DecodingException("Failed to parse " + cls.getName() + "." + annotatedField3.getField().getName(), e11);
                    }
                }
            }
            return newInstance;
        } catch (IllegalArgumentException | ReflectiveOperationException e12) {
            throw new Asn1DecodingException("Failed to instantiate " + cls.getName(), e12);
        }
    }

    private static <T> T parse(BerDataValue berDataValue, Class<T> cls) throws Asn1DecodingException {
        if (berDataValue == null) {
            throw new NullPointerException("container == null");
        }
        if (cls != null) {
            Asn1Type containerAsn1Type = getContainerAsn1Type(cls);
            int i10 = AnonymousClass1.$SwitchMap$com$android$apksig$internal$asn1$Asn1Type[containerAsn1Type.ordinal()];
            if (i10 == 1) {
                return (T) parseChoice(berDataValue, cls);
            }
            if (i10 != 2) {
                if (i10 == 3) {
                    return (T) parseSequence(berDataValue, cls, true);
                }
                throw new Asn1DecodingException("Parsing container " + ((Object) containerAsn1Type) + " not supported");
            }
            int tagNumber = BerEncoding.getTagNumber(containerAsn1Type);
            if (berDataValue.getTagClass() == 0 && berDataValue.getTagNumber() == tagNumber) {
                return (T) parseSequence(berDataValue, cls);
            }
            throw new Asn1UnexpectedTagException("Unexpected data value read as " + cls.getName() + ". Expected " + BerEncoding.tagClassAndNumberToString(0, tagNumber) + ", but read: " + BerEncoding.tagClassAndNumberToString(berDataValue.getTagClass(), berDataValue.getTagNumber()));
        }
        throw new NullPointerException("containerClass == null");
    }
}
