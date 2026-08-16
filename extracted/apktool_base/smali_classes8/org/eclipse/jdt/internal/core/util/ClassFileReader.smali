.class public Lorg/eclipse/jdt/internal/core/util/ClassFileReader;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IClassFileReader;


# static fields
.field private static final NO_FIELD_INFOS:[Lorg/eclipse/jdt/core/util/IFieldInfo;

.field private static final NO_INTERFACES_NAMES:[[C

.field private static final NO_METHOD_INFOS:[Lorg/eclipse/jdt/core/util/IMethodInfo;


# instance fields
.field private accessFlags:I

.field private attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

.field private attributesCount:I

.field private className:[C

.field private classNameIndex:I

.field private constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

.field private fields:[Lorg/eclipse/jdt/core/util/IFieldInfo;

.field private fieldsCount:I

.field private innerClassesAttribute:Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;

.field private interfaceIndexes:[I

.field private interfaceNames:[[C

.field private interfacesCount:I

.field private magicNumber:I

.field private majorVersion:I

.field private methods:[Lorg/eclipse/jdt/core/util/IMethodInfo;

.field private methodsCount:I

.field private minorVersion:I

.field private nestMembersAttribute:Lorg/eclipse/jdt/core/util/INestMembersAttribute;

.field private sourceFileAttribute:Lorg/eclipse/jdt/core/util/ISourceAttribute;

.field private superclassName:[C

.field private superclassNameIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/core/util/IFieldInfo;

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->NO_FIELD_INFOS:[Lorg/eclipse/jdt/core/util/IFieldInfo;

    sget-object v1, Lorg/eclipse/jdt/core/compiler/CharOperation;->NO_CHAR_CHAR:[[C

    sput-object v1, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->NO_INTERFACES_NAMES:[[C

    new-array v0, v0, [Lorg/eclipse/jdt/core/util/IMethodInfo;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->NO_METHOD_INFOS:[Lorg/eclipse/jdt/core/util/IMethodInfo;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->magicNumber:I

    const v3, -0x35014542    # -8346975.0f

    const/16 v4, 0x8

    if-ne v2, v3, :cond_25

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->minorVersion:I

    const/4 v3, 0x6

    invoke-virtual {p0, p1, v3, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->majorVersion:I

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v4, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    new-array v6, v5, [I

    const/4 v7, 0x1

    const/16 v8, 0xa

    move v9, v7

    :goto_0
    if-lt v9, v5, :cond_24

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/ConstantPool;

    invoke-direct {v5, p1, v6}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;-><init>([B[I)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->accessFlags:I

    add-int/lit8 v5, v8, 0x2

    invoke-virtual {p0, p1, v5, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->classNameIndex:I

    invoke-direct {p0, p1, v6, v5}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->getConstantClassNameAt([B[II)[C

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->className:[C

    add-int/lit8 v5, v8, 0x4

    invoke-virtual {p0, p1, v5, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->superclassNameIndex:I

    add-int/lit8 v9, v8, 0x6

    if-eqz v5, :cond_1

    invoke-direct {p0, p1, v6, v5}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->getConstantClassNameAt([B[II)[C

    move-result-object v5

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->superclassName:[C

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_18

    :catch_1
    move-exception p1

    goto/16 :goto_19

    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v9, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    iput v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfacesCount:I

    add-int/2addr v8, v4

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->NO_INTERFACES_NAMES:[[C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceNames:[[C

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceIndexes:[I

    if-eqz v5, :cond_4

    and-int/lit8 v4, p2, 0x9

    if-eq v4, v7, :cond_3

    new-array v4, v5, [[C

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceNames:[[C

    new-array v4, v5, [I

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceIndexes:[I

    move v4, v1

    :goto_2
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfacesCount:I

    if-lt v4, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceIndexes:[I

    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v9

    aput v9, v5, v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceNames:[[C

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceIndexes:[I

    aget v9, v9, v4

    invoke-direct {p0, p1, v6, v9}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->getConstantClassNameAt([B[II)[C

    move-result-object v9

    aput-object v9, v5, v4

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    mul-int/2addr v5, v0

    add-int/2addr v8, v5

    :cond_4
    :goto_3
    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fieldsCount:I

    add-int/2addr v8, v0

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->NO_FIELD_INFOS:[Lorg/eclipse/jdt/core/util/IFieldInfo;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fields:[Lorg/eclipse/jdt/core/util/IFieldInfo;

    if-eqz v4, :cond_a

    and-int/lit8 v5, p2, 0x5

    if-eq v5, v7, :cond_6

    new-array v4, v4, [Lorg/eclipse/jdt/internal/core/util/FieldInfo;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fields:[Lorg/eclipse/jdt/core/util/IFieldInfo;

    move v4, v1

    :goto_4
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fieldsCount:I

    if-lt v4, v5, :cond_5

    goto :goto_8

    :cond_5
    new-instance v5, Lorg/eclipse/jdt/internal/core/util/FieldInfo;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v5, p1, v9, v8}, Lorg/eclipse/jdt/internal/core/util/FieldInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fields:[Lorg/eclipse/jdt/core/util/IFieldInfo;

    aput-object v5, v9, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->sizeInBytes()I

    move-result v5

    add-int/2addr v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_5
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fieldsCount:I

    if-lt v4, v5, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {p0, p1, v3, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    add-int/lit8 v8, v8, 0x8

    if-eqz v5, :cond_9

    move v9, v1

    :goto_6
    if-lt v9, v5, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p0, p1, v0, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methodsCount:I

    add-int/2addr v8, v0

    sget-object v5, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->NO_METHOD_INFOS:[Lorg/eclipse/jdt/core/util/IMethodInfo;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methods:[Lorg/eclipse/jdt/core/util/IMethodInfo;

    if-eqz v4, :cond_10

    and-int/lit8 v5, p2, 0x3

    if-eq v5, v7, :cond_c

    new-array v3, v4, [Lorg/eclipse/jdt/internal/core/util/MethodInfo;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methods:[Lorg/eclipse/jdt/core/util/IMethodInfo;

    move v3, v1

    :goto_9
    iget v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methodsCount:I

    if-lt v3, v4, :cond_b

    goto :goto_d

    :cond_b
    new-instance v4, Lorg/eclipse/jdt/internal/core/util/MethodInfo;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v4, p1, v5, v8, p2}, Lorg/eclipse/jdt/internal/core/util/MethodInfo;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;II)V

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methods:[Lorg/eclipse/jdt/core/util/IMethodInfo;

    aput-object v4, v5, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/core/util/MethodInfo;->sizeInBytes()I

    move-result v4

    add-int/2addr v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    move v4, v1

    :goto_a
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methodsCount:I

    if-lt v4, v5, :cond_d

    goto :goto_d

    :cond_d
    invoke-virtual {p0, p1, v3, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    add-int/lit8 v8, v8, 0x8

    if-eqz v5, :cond_f

    move v9, v1

    :goto_b
    if-lt v9, v5, :cond_e

    goto :goto_c

    :cond_e
    invoke-virtual {p0, p1, v0, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_f
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_10
    :goto_d
    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v3

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributesCount:I

    add-int/2addr v8, v0

    sget-object v4, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->NO_ATTRIBUTES:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    if-eqz v3, :cond_22

    and-int/lit8 p2, p2, 0x11

    const-wide/16 v4, 0x6

    if-eq p2, v7, :cond_20

    new-array p2, v3, [Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    move p2, v1

    move v3, p2

    :goto_e
    iget v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributesCount:I

    if-lt p2, v9, :cond_11

    goto/16 :goto_13

    :cond_11
    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v9

    aget v9, v6, v9

    add-int/lit8 v10, v9, 0x3

    add-int/2addr v9, v7

    invoke-virtual {p0, p1, v9, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v9

    invoke-virtual {p0, p1, v10, v1, v9}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->utf8At([BIII)[C

    move-result-object v9

    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->INNER_CLASSES:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v9, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttribute;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v9, p1, v10, v8}, Lorg/eclipse/jdt/internal/core/util/InnerClassesAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->innerClassesAttribute:Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v11, v3, 0x1

    aput-object v9, v10, v3

    :goto_f
    move v3, v11

    goto/16 :goto_11

    :cond_12
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SOURCE:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_13

    new-instance v9, Lorg/eclipse/jdt/internal/core/util/SourceFileAttribute;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v9, p1, v10, v8}, Lorg/eclipse/jdt/internal/core/util/SourceFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->sourceFileAttribute:Lorg/eclipse/jdt/core/util/ISourceAttribute;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v11, v3, 0x1

    aput-object v9, v10, v3

    goto :goto_f

    :cond_13
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->ENCLOSING_METHOD:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/EnclosingMethodAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    :goto_10
    move v3, v10

    goto/16 :goto_11

    :cond_14
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SIGNATURE:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/SignatureAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/SignatureAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto :goto_10

    :cond_15
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleAnnotationsAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto :goto_10

    :cond_16
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleAnnotationsAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto :goto_10

    :cond_17
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->BOOTSTRAP_METHODS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_18

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/BootstrapMethodsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto :goto_10

    :cond_18
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto :goto_10

    :cond_19
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto/16 :goto_10

    :cond_1a
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/ModuleAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto/16 :goto_10

    :cond_1b
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE_PACKAGES:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/ModulePackagesAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto/16 :goto_10

    :cond_1c
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->MODULE_MAIN_CLASS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/ModuleMainClassAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto/16 :goto_10

    :cond_1d
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->NEST_HOST:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v10

    if-eqz v10, :cond_1e

    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/NestHostAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/NestHostAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto/16 :goto_10

    :cond_1e
    sget-object v10, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->NEST_MEMBERS:[C

    invoke-virtual {p0, v9, v10}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_1f

    new-instance v9, Lorg/eclipse/jdt/internal/core/util/NestMembersAttribute;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v9, p1, v10, v8}, Lorg/eclipse/jdt/internal/core/util/NestMembersAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->nestMembersAttribute:Lorg/eclipse/jdt/core/util/INestMembersAttribute;

    iget-object v10, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v11, v3, 0x1

    aput-object v9, v10, v3

    goto/16 :goto_f

    :cond_1f
    iget-object v9, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v10, v3, 0x1

    new-instance v11, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    iget-object v12, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    invoke-direct {v11, p1, v12, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v11, v9, v3

    goto/16 :goto_10

    :goto_11
    add-int/lit8 v9, v8, 0x2

    invoke-virtual {p0, p1, v9, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v9

    int-to-long v11, v8

    add-long/2addr v9, v4

    add-long/2addr v11, v9

    long-to-int v8, v11

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_e

    :cond_20
    move p2, v1

    :goto_12
    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributesCount:I

    if-lt p2, v3, :cond_21

    goto :goto_13

    :cond_21
    int-to-long v6, v8

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v8

    add-long/2addr v8, v4

    add-long/2addr v6, v8

    long-to-int v8, v6

    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    :cond_22
    :goto_13
    array-length p1, p1

    if-ne v8, p1, :cond_23

    return-void

    :cond_23
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_24
    invoke-virtual {p0, p1, v8, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :pswitch_1
    aput v8, v6, v9

    :goto_14
    add-int/lit8 v8, v8, 0x3

    goto :goto_17

    :pswitch_2
    aput v8, v6, v9

    goto :goto_14

    :pswitch_3
    aput v8, v6, v9

    :goto_15
    add-int/lit8 v8, v8, 0x5

    goto :goto_17

    :pswitch_4
    aput v8, v6, v9

    goto :goto_15

    :pswitch_5
    aput v8, v6, v9

    goto :goto_14

    :pswitch_6
    aput v8, v6, v9

    add-int/lit8 v8, v8, 0x4

    goto :goto_17

    :pswitch_7
    aput v8, v6, v9

    goto :goto_15

    :pswitch_8
    aput v8, v6, v9

    goto :goto_15

    :pswitch_9
    aput v8, v6, v9

    goto :goto_15

    :pswitch_a
    aput v8, v6, v9

    goto :goto_15

    :pswitch_b
    aput v8, v6, v9

    goto :goto_14

    :pswitch_c
    aput v8, v6, v9

    goto :goto_14

    :pswitch_d
    aput v8, v6, v9

    :goto_16
    add-int/lit8 v8, v8, 0x9

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :pswitch_e
    aput v8, v6, v9

    goto :goto_16

    :pswitch_f
    aput v8, v6, v9

    goto :goto_15

    :pswitch_10
    aput v8, v6, v9

    goto :goto_15

    :pswitch_11
    aput v8, v6, v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, p1, v10, v1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_14

    :goto_17
    add-int/2addr v9, v7

    goto/16 :goto_0

    :cond_25
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Lorg/eclipse/jdt/core/util/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v0}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :goto_19
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getConstantClassNameAt([B[II)[C
    .locals 1

    aget p3, p2, p3

    add-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p3

    aget p2, p2, p3

    add-int/lit8 p3, p2, 0x3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p2

    invoke-virtual {p0, p1, p3, v0, p2}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->utf8At([BIII)[C

    move-result-object p1

    return-object p1
.end method

.method private isModule()Z
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->getAccessFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->accessFlags:I

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributesCount:I

    return v0
.end method

.method public getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    return-object v0
.end method

.method public getClassIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->classNameIndex:I

    return v0
.end method

.method public getClassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->className:[C

    return-object v0
.end method

.method public getConstantPool()Lorg/eclipse/jdt/core/util/IConstantPool;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->constantPool:Lorg/eclipse/jdt/core/util/IConstantPool;

    return-object v0
.end method

.method public getFieldInfos()[Lorg/eclipse/jdt/core/util/IFieldInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fields:[Lorg/eclipse/jdt/core/util/IFieldInfo;

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->fieldsCount:I

    return v0
.end method

.method public getInnerClassesAttribute()Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->innerClassesAttribute:Lorg/eclipse/jdt/core/util/IInnerClassesAttribute;

    return-object v0
.end method

.method public getInterfaceIndexes()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceIndexes:[I

    return-object v0
.end method

.method public getInterfaceNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->interfaceNames:[[C

    return-object v0
.end method

.method public getMagic()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->magicNumber:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->majorVersion:I

    return v0
.end method

.method public getMethodInfos()[Lorg/eclipse/jdt/core/util/IMethodInfo;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methods:[Lorg/eclipse/jdt/core/util/IMethodInfo;

    return-object v0
.end method

.method public getMethodsCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->methodsCount:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->minorVersion:I

    return v0
.end method

.method public getNestMembersAttribute()Lorg/eclipse/jdt/core/util/INestMembersAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->nestMembersAttribute:Lorg/eclipse/jdt/core/util/INestMembersAttribute;

    return-object v0
.end method

.method public getSourceFileAttribute()Lorg/eclipse/jdt/core/util/ISourceAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->sourceFileAttribute:Lorg/eclipse/jdt/core/util/ISourceAttribute;

    return-object v0
.end method

.method public getSuperclassIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->superclassNameIndex:I

    return v0
.end method

.method public getSuperclassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->superclassName:[C

    return-object v0
.end method

.method public isClass()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->isModule()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public isInterface()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileReader;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
