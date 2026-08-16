.class public interface abstract Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATION_TAG:I = 0x40

.field public static final ARRAY_TAG:I = 0x5b

.field public static final BOOLEAN_TAG:I = 0x5a

.field public static final BYTE_TAG:I = 0x42

.field public static final CHAR_TAG:I = 0x43

.field public static final CLASS_TAG:I = 0x63

.field public static final DOUBLE_TAG:I = 0x44

.field public static final ENUM_TAG:I = 0x65

.field public static final FLOAT_TAG:I = 0x46

.field public static final INTEGER_TAG:I = 0x49

.field public static final LONG_TAG:I = 0x4a

.field public static final SHORT_TAG:I = 0x53

.field public static final STRING_TAG:I = 0x73


# virtual methods
.method public abstract getAnnotationComponentValues()[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;
.end method

.method public abstract getAnnotationValue()Lorg/eclipse/jdt/core/util/IAnnotation;
.end method

.method public abstract getClassInfo()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;
.end method

.method public abstract getClassInfoIndex()I
.end method

.method public abstract getConstantValue()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;
.end method

.method public abstract getConstantValueIndex()I
.end method

.method public abstract getEnumConstantName()[C
.end method

.method public abstract getEnumConstantNameIndex()I
.end method

.method public abstract getEnumConstantTypeName()[C
.end method

.method public abstract getEnumConstantTypeNameIndex()I
.end method

.method public abstract getTag()I
.end method

.method public abstract getValuesNumber()I
.end method
