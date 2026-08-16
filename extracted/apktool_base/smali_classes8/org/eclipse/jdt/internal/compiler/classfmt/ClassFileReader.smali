.class public Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
.super Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;


# instance fields
.field private accessFlags:I

.field private annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

.field private classFileName:[C

.field private className:[C

.field private classNameIndex:I

.field private constantPoolCount:I

.field private enclosingMethod:[C

.field private enclosingNameAndTypeIndex:I

.field private enclosingTypeName:[C

.field private fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

.field private fieldsCount:I

.field private innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

.field private innerInfoIndex:I

.field private innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

.field private interfaceNames:[[C

.field private interfacesCount:I

.field private methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

.field private methodsCount:I

.field private missingTypeNames:[[[C

.field private moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

.field public moduleName:[C

.field private nestHost:[C

.field private nestMembers:[[C

.field private nestMembersCount:I

.field private signature:[C

.field private sourceFileName:[C

.field private sourceName:[C

.field private superclassName:[C

.field private tagBits:J

.field private typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

.field private version:J


# direct methods
.method public constructor <init>([B[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[CZ)V

    return-void
.end method

.method public constructor <init>([B[CZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 2
    invoke-direct {v1, v4, v2, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;-><init>([B[II)V

    move-object/from16 v4, p2

    .line 3
    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    const/4 v4, 0x6

    const/16 v5, 0xa

    .line 4
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    int-to-long v6, v4

    const/16 v4, 0x10

    shl-long/2addr v6, v4

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    const/16 v4, 0x8

    .line 5
    invoke-virtual {v1, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v4

    iput v4, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->constantPoolCount:I

    .line 6
    new-array v4, v4, [I

    iput-object v4, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    const/4 v4, 0x1

    move v6, v4

    .line 7
    :goto_0
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->constantPoolCount:I

    if-lt v6, v7, :cond_23

    .line 8
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    add-int/lit8 v6, v5, 0x2

    .line 9
    :try_start_1
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v7

    iput v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classNameIndex:I

    if-eqz v7, :cond_0

    .line 10
    invoke-direct {v1, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getConstantClassNameAt(I)[C

    move-result-object v7

    iput-object v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->className:[C

    goto :goto_1

    :catch_0
    move-exception v0

    move v5, v6

    goto/16 :goto_15

    :catch_1
    move-exception v0

    goto/16 :goto_16

    :cond_0
    :goto_1
    add-int/lit8 v6, v5, 0x4

    .line 11
    invoke-virtual {v1, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v5, 0x6

    if-eqz v6, :cond_1

    .line 12
    :try_start_2
    invoke-direct {v1, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getConstantClassNameAt(I)[C

    move-result-object v6

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->superclassName:[C

    goto :goto_2

    :catch_2
    move-exception v0

    move v5, v7

    goto/16 :goto_15

    .line 13
    :cond_1
    :goto_2
    invoke-virtual {v1, v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfacesCount:I
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v5, v5, 0x8

    if-eqz v6, :cond_3

    .line 14
    :try_start_3
    new-array v6, v6, [[C

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfaceNames:[[C

    move v6, v3

    .line 15
    :goto_3
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfacesCount:I

    if-lt v6, v7, :cond_2

    goto :goto_4

    .line 16
    :cond_2
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfaceNames:[[C

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    invoke-direct {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getConstantClassNameAt(I)[C

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_15

    .line 17
    :cond_3
    :goto_4
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    add-int/lit8 v5, v5, 0x2

    if-eqz v6, :cond_5

    .line 18
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    move v6, v3

    .line 19
    :goto_5
    iget v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    if-lt v6, v7, :cond_4

    goto :goto_6

    .line 20
    :cond_4
    iget-object v7, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget-wide v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    invoke-static {v7, v8, v5, v9, v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->createField([B[IIJ)Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    move-result-object v7

    .line 21
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    aput-object v7, v8, v6

    .line 22
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->sizeInBytes()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 23
    :cond_5
    :goto_6
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    iput v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    add-int/lit8 v5, v5, 0x2

    if-eqz v6, :cond_9

    .line 24
    new-array v6, v6, [Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    iput-object v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    .line 25
    iget v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_7

    :cond_6
    move v6, v3

    :goto_7
    move v7, v3

    .line 26
    :goto_8
    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    if-lt v7, v8, :cond_7

    goto :goto_a

    .line 27
    :cond_7
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    if-eqz v6, :cond_8

    .line 28
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget-wide v11, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    invoke-static {v9, v10, v5, v11, v12}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationMethodInfo;->createAnnotationMethod([B[IIJ)Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    move-result-object v9

    goto :goto_9

    .line 29
    :cond_8
    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v10, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget-wide v11, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    invoke-static {v9, v10, v5, v11, v12}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->createMethod([B[IIJ)Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    move-result-object v9

    .line 30
    :goto_9
    aput-object v9, v8, v7

    .line 31
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->sizeInBytes()I

    move-result v8

    add-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 32
    :cond_9
    :goto_a
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    move v7, v3

    :goto_b
    if-lt v7, v6, :cond_c

    .line 33
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    if-eqz v3, :cond_a

    iget-object v4, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-eqz v4, :cond_a

    .line 34
    iget-wide v6, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->tagBits:J

    invoke-virtual {v3, v4, v6, v7, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;JZ)V

    .line 35
    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    :cond_a
    if-eqz v0, :cond_b

    .line 36
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->initialize()V

    :cond_b
    return-void

    .line 37
    :cond_c
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v8, v8, v9

    add-int/lit8 v9, v8, 0x3

    add-int/2addr v8, v4

    .line 38
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v8

    .line 39
    array-length v9, v8

    const-wide/16 v10, 0x6

    if-nez v9, :cond_d

    int-to-long v8, v5

    add-int/lit8 v12, v5, 0x2

    .line 40
    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v12

    add-long/2addr v12, v10

    add-long/2addr v8, v12

    long-to-int v5, v8

    goto/16 :goto_10

    .line 41
    :cond_d
    aget-char v9, v8, v3

    const/16 v12, 0x44

    if-eq v9, v12, :cond_21

    const/16 v12, 0x45

    if-eq v9, v12, :cond_20

    const/16 v12, 0x49

    if-eq v9, v12, :cond_1c

    const/16 v12, 0x4d

    if-eq v9, v12, :cond_19

    const/16 v12, 0x4e

    if-eq v9, v12, :cond_16

    const/16 v12, 0x52

    if-eq v9, v12, :cond_12

    const/16 v12, 0x53

    if-eq v9, v12, :cond_e

    goto/16 :goto_f

    .line 42
    :cond_e
    array-length v9, v8

    const/4 v12, 0x2

    if-le v9, v12, :cond_22

    .line 43
    aget-char v9, v8, v4

    const/16 v12, 0x69

    if-eq v9, v12, :cond_11

    const/16 v12, 0x6f

    if-eq v9, v12, :cond_10

    const/16 v12, 0x79

    if-eq v9, v12, :cond_f

    goto/16 :goto_f

    .line 44
    :cond_f
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SyntheticName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 45
    iget v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    or-int/lit16 v8, v8, 0x1000

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    goto/16 :goto_f

    .line 46
    :cond_10
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SourceName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 47
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v9, v5, 0x6

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v8, v8, v9

    add-int/lit8 v9, v8, 0x3

    add-int/2addr v8, v4

    .line 48
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->sourceFileName:[C

    goto/16 :goto_f

    .line 49
    :cond_11
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->SignatureName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 50
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v9, v5, 0x6

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v8, v8, v9

    add-int/lit8 v9, v8, 0x3

    add-int/2addr v8, v4

    .line 51
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->signature:[C

    goto/16 :goto_f

    .line 52
    :cond_12
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleAnnotationsName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 53
    invoke-direct {v1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->decodeAnnotations(IZ)V

    goto/16 :goto_f

    .line 54
    :cond_13
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleAnnotationsName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 55
    invoke-direct {v1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->decodeAnnotations(IZ)V

    goto/16 :goto_f

    .line 56
    :cond_14
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeVisibleTypeAnnotationsName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 57
    invoke-direct {v1, v5, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->decodeTypeAnnotations(IZ)V

    goto/16 :goto_f

    .line 58
    :cond_15
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->RuntimeInvisibleTypeAnnotationsName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 59
    invoke-direct {v1, v5, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->decodeTypeAnnotations(IZ)V

    goto/16 :goto_f

    .line 60
    :cond_16
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->NestHost:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 61
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v9, v5, 0x6

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v9, v8, v9

    add-int/2addr v9, v4

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v9

    aget v8, v8, v9

    add-int/lit8 v9, v8, 0x3

    add-int/2addr v8, v4

    .line 62
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    invoke-virtual {v1, v9, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->nestHost:[C

    goto/16 :goto_f

    .line 63
    :cond_17
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->NestMembers:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_22

    add-int/lit8 v8, v5, 0x6

    .line 64
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    iput v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->nestMembersCount:I

    if-eqz v8, :cond_22

    add-int/lit8 v9, v5, 0x8

    .line 65
    new-array v8, v8, [[C

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->nestMembers:[[C

    move v8, v3

    .line 66
    :goto_c
    iget v12, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->nestMembersCount:I

    if-lt v8, v12, :cond_18

    goto/16 :goto_f

    .line 67
    :cond_18
    iget-object v12, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v13

    aget v13, v12, v13

    add-int/2addr v13, v4

    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v13

    aget v12, v12, v13

    .line 68
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->nestMembers:[[C

    add-int/lit8 v14, v12, 0x3

    add-int/2addr v12, v4

    invoke-virtual {v1, v12}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v12

    invoke-virtual {v1, v14, v12}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v12

    aput-object v12, v13, v8

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 69
    :cond_19
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->MissingTypesName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_1b

    add-int/lit8 v8, v5, 0x6

    .line 70
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    if-eqz v8, :cond_22

    .line 71
    new-array v9, v8, [[[C

    iput-object v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->missingTypeNames:[[[C

    add-int/lit8 v9, v5, 0x8

    move v12, v3

    :goto_d
    if-lt v12, v8, :cond_1a

    goto/16 :goto_f

    .line 72
    :cond_1a
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-virtual {v1, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v14

    aget v14, v13, v14

    add-int/2addr v14, v4

    invoke-virtual {v1, v14}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v14

    aget v13, v13, v14

    add-int/lit8 v14, v13, 0x3

    add-int/2addr v13, v4

    .line 73
    invoke-virtual {v1, v13}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v13

    invoke-virtual {v1, v14, v13}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v13

    .line 74
    iget-object v14, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->missingTypeNames:[[[C

    const/16 v15, 0x2f

    invoke-static {v15, v13}, Lorg/eclipse/jdt/core/compiler/CharOperation;->splitOn(C[C)[[C

    move-result-object v13

    aput-object v13, v14, v12

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 75
    :cond_1b
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->ModuleName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 76
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v9, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-static {v8, v9, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->createModule([B[II)Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    .line 77
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;->name()[C

    move-result-object v8

    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    goto/16 :goto_f

    .line 78
    :cond_1c
    sget-object v9, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->InnerClassName:[C

    invoke-static {v8, v9}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v9

    if-eqz v9, :cond_1f

    add-int/lit8 v8, v5, 0x6

    .line 79
    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    if-eqz v8, :cond_22

    add-int/lit8 v9, v5, 0x8

    .line 80
    new-array v12, v8, [Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    iput-object v12, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    move v12, v3

    :goto_e
    if-lt v12, v8, :cond_1d

    .line 81
    iget-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    if-eqz v8, :cond_22

    .line 82
    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getEnclosingTypeName()[C

    move-result-object v8

    if-eqz v8, :cond_22

    .line 83
    iput-object v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingTypeName:[C

    goto :goto_f

    .line 84
    :cond_1d
    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    .line 85
    new-instance v14, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    iget-object v15, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    invoke-direct {v14, v15, v2, v9}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;-><init>([B[II)V

    .line 86
    aput-object v14, v13, v12

    .line 87
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classNameIndex:I

    iget-object v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    aget-object v13, v13, v12

    iget v14, v13, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerClassNameIndex:I

    if-ne v2, v14, :cond_1e

    .line 88
    iput-object v13, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    .line 89
    iput v12, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfoIndex:I

    :cond_1e
    add-int/lit8 v9, v9, 0x8

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_e

    .line 90
    :cond_1f
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->InconsistentHierarchy:[C

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 91
    iget-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->tagBits:J

    const-wide/32 v12, 0x20000

    or-long/2addr v8, v12

    iput-wide v8, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->tagBits:J

    goto :goto_f

    .line 92
    :cond_20
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->EnclosingMethodName:[C

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 93
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v8, v5, 0x6

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    aget v8, v2, v8

    add-int/2addr v8, v4

    invoke-virtual {v1, v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v8

    aget v2, v2, v8

    add-int/lit8 v8, v2, 0x3

    add-int/2addr v2, v4

    .line 94
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    invoke-virtual {v1, v8, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v2

    iput-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingTypeName:[C

    add-int/lit8 v2, v5, 0x8

    .line 95
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingNameAndTypeIndex:I

    goto :goto_f

    .line 96
    :cond_21
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/codegen/AttributeNamesConstants;->DeprecatedName:[C

    invoke-static {v8, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 97
    iget v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    const/high16 v8, 0x100000

    or-int/2addr v2, v8

    iput v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    :cond_22
    :goto_f
    int-to-long v8, v5

    add-int/lit8 v2, v5, 0x2

    .line 98
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u4At(I)J

    move-result-wide v12

    add-long/2addr v12, v10

    add-long/2addr v8, v12

    long-to-int v2, v8

    move v5, v2

    :goto_10
    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto/16 :goto_b

    .line 99
    :cond_23
    invoke-virtual {v1, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u1At(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_14

    .line 100
    :pswitch_1
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    :goto_11
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_14

    .line 101
    :pswitch_2
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_11

    .line 102
    :pswitch_3
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    :goto_12
    add-int/lit8 v5, v5, 0x5

    goto :goto_14

    .line 103
    :pswitch_4
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 104
    :pswitch_5
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_11

    .line 105
    :pswitch_6
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_14

    .line 106
    :pswitch_7
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 107
    :pswitch_8
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 108
    :pswitch_9
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 109
    :pswitch_a
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 110
    :pswitch_b
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_11

    .line 111
    :pswitch_c
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_11

    .line 112
    :pswitch_d
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    :goto_13
    add-int/lit8 v5, v5, 0x9

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 113
    :pswitch_e
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_13

    .line 114
    :pswitch_f
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 115
    :pswitch_10
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    goto :goto_12

    .line 116
    :pswitch_11
    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aput v5, v2, v6

    add-int/lit8 v2, v5, 0x1

    .line 117
    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v5, v2

    goto :goto_11

    :goto_14
    add-int/2addr v6, v4

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 118
    :goto_15
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    .line 119
    iget-object v3, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    const/16 v4, 0x15

    .line 120
    invoke-direct {v2, v0, v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(Ljava/lang/Exception;[CII)V

    throw v2

    .line 121
    :goto_16
    throw v0

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

.method private affectsSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getTargetType()I

    move-result p1

    const/16 v1, 0x40

    if-lt p1, v1, :cond_1

    const/16 v1, 0x4b

    if-gt p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private decodeAnnotations(IZ)V
    .locals 16

    move-object/from16 v0, p0

    add-int/lit8 v1, p1, 0x6

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    if-lez v1, :cond_7

    add-int/lit8 v2, p1, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, v3

    move v12, v11

    :goto_0
    if-lt v11, v1, :cond_3

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-nez v1, :cond_2

    array-length v1, v4

    if-eq v12, v1, :cond_1

    new-array v1, v12, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v4, v3, v1, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v1

    :cond_1
    iput-object v4, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    goto :goto_2

    :cond_2
    array-length v2, v1

    add-int v5, v2, v12

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    invoke-static {v1, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3, v5, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    goto :goto_2

    :cond_3
    new-instance v13, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    const/4 v10, 0x0

    move-object v5, v13

    move v8, v2

    move/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;-><init>([B[IIZZ)V

    iget v5, v13, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->readOffset:I

    add-int/2addr v2, v5

    iget-wide v5, v13, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->standardAnnotationTagBits:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->tagBits:J

    or-long/2addr v9, v5

    iput-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->tagBits:J

    iget-wide v9, v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    const-wide/32 v14, 0x350000

    cmp-long v9, v9, v14

    if-ltz v9, :cond_6

    const-wide v9, 0x400000000000L

    and-long/2addr v5, v9

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    sub-int v4, v1, v11

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    :cond_5
    add-int/lit8 v5, v12, 0x1

    aput-object v13, v4, v12

    move v12, v5

    :cond_6
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method private decodeTypeAnnotations(IZ)V
    .locals 11

    add-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, 0x8

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-lt v9, v0, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    if-nez p1, :cond_0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    goto :goto_1

    :cond_0
    array-length p2, p1

    add-int v3, p2, v0

    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    invoke-static {p1, v2, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2, v3, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    goto :goto_1

    :cond_1
    new-instance v10, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reference:[B

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    const/4 v8, 0x0

    move-object v3, v10

    move v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;-><init>([B[IIZZ)V

    iget v3, v10, Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;->readOffset:I

    add-int/2addr p1, v3

    aput-object v10, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getConstantClassNameAt(I)[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    aget p1, v0, p1

    add-int/lit8 v0, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object p1

    return-object p1
.end method

.method private hasNonSyntheticFieldChanges([Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p2

    :goto_1
    move v3, v0

    move v4, v3

    :goto_2
    const/4 v5, 0x1

    if-ge v3, v1, :cond_7

    if-lt v4, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, p1, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    aget-object v6, p2, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->isSynthetic()Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget-object v3, p1, v3

    add-int/lit8 v7, v4, 0x1

    aget-object v4, p2, v4

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralFieldChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v5

    :cond_4
    move v3, v6

    move v4, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_3

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_2

    :cond_7
    :goto_3
    if-lt v3, v1, :cond_a

    :goto_4
    if-lt v4, v2, :cond_8

    return v0

    :cond_8
    add-int/lit8 p1, v4, 0x1

    aget-object v1, p2, v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->isSynthetic()Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    :cond_9
    move v4, p1

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->isSynthetic()Z

    move-result v3

    if-nez v3, :cond_b

    return v5

    :cond_b
    move v3, v6

    goto :goto_3
.end method

.method private hasNonSyntheticMethodChanges([Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p2

    :goto_1
    move v3, v0

    move v4, v3

    :goto_2
    const/4 v5, 0x1

    if-ge v3, v1, :cond_7

    if-lt v4, v2, :cond_2

    goto :goto_3

    :cond_2
    aget-object v6, p1, v3

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isClinit()Z

    move-result v6

    if-nez v6, :cond_6

    :cond_3
    aget-object v6, p2, v4

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isClinit()Z

    move-result v6

    if-nez v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget-object v3, p1, v3

    add-int/lit8 v7, v4, 0x1

    aget-object v4, p2, v4

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralMethodChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v5

    :cond_4
    move v3, v6

    move v4, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_3

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_2

    :cond_7
    :goto_3
    if-lt v3, v1, :cond_a

    :goto_4
    if-lt v4, v2, :cond_8

    return v0

    :cond_8
    add-int/lit8 p1, v4, 0x1

    aget-object v1, p2, v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isSynthetic()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isClinit()Z

    move-result v1

    if-nez v1, :cond_9

    return v5

    :cond_9
    move v4, p1

    goto :goto_4

    :cond_a
    add-int/lit8 v6, v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isSynthetic()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->isClinit()Z

    move-result v3

    if-nez v3, :cond_b

    return v5

    :cond_b
    move v3, v6

    goto :goto_3
.end method

.method private hasStructuralAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z
    .locals 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    array-length v2, p2

    :goto_1
    if-eq v1, v2, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    move v2, v0

    :goto_2
    if-lt v2, v1, :cond_4

    return v0

    :cond_4
    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-direct {p0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->matchAnnotations(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private hasStructuralFieldChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;)Z
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getGenericSignature()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getGenericSignature()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getModifiers()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getModifiers()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTagBits()J

    move-result-wide v2

    const-wide v4, 0x400000000000L

    and-long/2addr v2, v4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTagBits()J

    move-result-wide v6

    and-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    const-wide/32 v4, 0x340000

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralTypeAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeName()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getTypeName()[C

    move-result-object v2

    invoke-static {v0, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->hasConstant()Z

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->hasConstant()Z

    move-result v2

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->hasConstant()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->getConstant()Lorg/eclipse/jdt/internal/compiler/impl/Constant;

    move-result-object p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v3

    if-eq v0, v3, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->typeID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->stringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_a

    return v1

    :cond_a
    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_b

    return v1

    :cond_b
    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->doubleValue()D

    move-result-wide p1

    cmpl-double p1, v3, p1

    if-eqz p1, :cond_c

    return v1

    :cond_c
    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide v3

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->longValue()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->booleanValue()Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    :pswitch_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->shortValue()S

    move-result p2

    if-eq p1, p2, :cond_e

    return v1

    :cond_e
    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->byteValue()B

    move-result p2

    if-eq p1, p2, :cond_f

    return v1

    :cond_f
    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/impl/Constant;->charValue()C

    move-result p2

    if-eq p1, p2, :cond_10

    return v1

    :cond_10
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hasStructuralMethodChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)Z
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getModifiers()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getModifiers()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getTagBits()J

    move-result-wide v2

    const-wide v4, 0x400000000000L

    and-long/2addr v2, v4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getTagBits()J

    move-result-wide v6

    and-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getAnnotatedParametersCount()I

    move-result v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getAnnotatedParametersCount()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_f

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    const-wide/32 v5, 0x340000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralTypeAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getSelector()[C

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getMethodDescriptor()[C

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getGenericSignature()[C

    move-result-object v3

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getExceptionTypeNames()[[C

    move-result-object p1

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getExceptionTypeNames()[[C

    move-result-object p2

    if-eq p1, p2, :cond_e

    if-nez p1, :cond_9

    move v0, v2

    goto :goto_1

    :cond_9
    array-length v0, p1

    :goto_1
    if-nez p2, :cond_a

    move v3, v2

    goto :goto_2

    :cond_a
    array-length v3, p2

    :goto_2
    if-eq v0, v3, :cond_b

    return v1

    :cond_b
    move v3, v2

    :goto_3
    if-lt v3, v0, :cond_c

    goto :goto_4

    :cond_c
    aget-object v4, p1, v3

    aget-object v5, p2, v3

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_d

    return v1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    return v2

    :cond_f
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    invoke-virtual {p1, v3, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    invoke-virtual {p2, v3, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z

    move-result v4

    if-eqz v4, :cond_10

    return v1

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private hasStructuralTypeAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    invoke-static {p2, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v2

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    array-length v2, p1

    move v3, v0

    :goto_0
    if-lt v3, v2, :cond_1

    goto :goto_3

    :cond_1
    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->affectsSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    return v1

    :cond_3
    move v5, v0

    :goto_1
    array-length v6, p2

    if-lt v5, v6, :cond_4

    return v1

    :cond_4
    aget-object v6, p2, v5

    if-eqz v6, :cond_5

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v7

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;->getAnnotation()Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v6

    invoke-direct {p0, v7, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->matchAnnotations(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_5

    const/4 v4, 0x0

    aput-object v4, p2, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-eqz p2, :cond_9

    array-length p1, p2

    move v2, v0

    :goto_4
    if-lt v2, p1, :cond_7

    goto :goto_5

    :cond_7
    aget-object v3, p2, v2

    invoke-direct {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->affectsSignature(Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z

    move-result v3

    if-eqz v3, :cond_8

    return v1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return v0
.end method

.method private initialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;
        }
    .end annotation

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_5

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    if-eqz v0, :cond_1

    array-length v0, v0

    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->initialize()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_1
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    if-eqz v0, :cond_3

    array-length v0, v0

    :goto_4
    if-lt v1, v0, :cond_2

    goto :goto_5

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;->initialize()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getEnclosingMethod()[C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->reset()V

    return-void

    :cond_4
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;->initialize()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;->initialize()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_6
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    invoke-direct {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;-><init>(Ljava/lang/RuntimeException;[C)V

    throw v1
.end method

.method private matchAnnotations(Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Ljava/lang/Boolean;
    .locals 6

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v0

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getTypeName()[C

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p1

    invoke-interface {p2}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;->getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_0
    if-nez p2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    array-length v2, p2

    :goto_1
    if-eq v1, v2, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    move v2, v0

    :goto_2
    if-lt v2, v1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getName()[C

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_5
    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-interface {v4}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_a

    check-cast v3, [Ljava/lang/Object;

    instance-of p1, v4, [Ljava/lang/Object;

    if-eqz p1, :cond_9

    check-cast v4, [Ljava/lang/Object;

    array-length p1, v3

    array-length p2, v4

    if-eq p1, p2, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_6
    :goto_3
    if-lt v0, p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_7
    aget-object p2, v3, v0

    aget-object v1, v4, v0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static printTypeModifiers(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    const-string v2, "public "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_1

    const-string v2, "private "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_2

    const-string v2, "final "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_3

    const-string v2, "super "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_4

    const-string v2, "interface "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_5

    const-string p0, "abstract "

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/File;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/io/File;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/File;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getFileByteContent(Ljava/io/File;)[B

    move-result-object v0

    .line 3
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->initialize()V

    :cond_0
    return-object v1
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 6
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getInputStreamAsByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    if-eqz p2, :cond_0

    .line 8
    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->initialize()V

    :cond_0
    return-object v0
.end method

.method public static read(Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/io/File;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/util/zip/ZipFile;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->read(Ljava/util/zip/ZipFile;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/util/zip/ZipFile;Ljava/lang/String;Z)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    invoke-static {v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getZipEntryByteContent(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)[B

    move-result-object p0

    .line 12
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    if-eqz p2, :cond_1

    .line 13
    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->initialize()V

    :cond_1
    return-object v0
.end method

.method public static readFromJrt(Ljava/io/File;Lorg/eclipse/jdt/internal/compiler/env/IModule;Ljava/lang/String;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getClassfile(Ljava/io/File;Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/env/IModule;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method

.method public static readFromModule(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/util/JRTUtil;->getClassfile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Predicate;)Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accessFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    return v0
.end method

.method public enrichWithExternalAnnotationsFor(Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p1
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->annotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/AnnotationInfo;

    return-object v0
.end method

.method public getConstantPoolOffsets()[I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    return-object v0
.end method

.method public getEnclosingMethod()[C
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingNameAndTypeIndex:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingMethod:[C

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingNameAndTypeIndex:I

    aget v2, v1, v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v3

    aget v1, v1, v3

    add-int/lit8 v3, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->constantPoolOffsets:[I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v2

    aget v1, v1, v2

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->u2At(I)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileStruct;->utf8At(II)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingMethod:[C

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingMethod:[C

    return-object v0
.end method

.method public getEnclosingTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->enclosingTypeName:[C

    return-object v0
.end method

.method public getExternalAnnotationStatus()Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;->NOT_EEA_CONFIGURED:Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding$ExternalAnnotationStatus;

    return-object v0
.end method

.method public getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    return-object v0
.end method

.method public getFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->signature:[C

    return-object v0
.end method

.method public getInnerSourceName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfaceNames:[[C

    return-object v0
.end method

.method public getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;
    .locals 10

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfoIndex:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eq v0, v2, :cond_6

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfoIndex:I

    sub-int v4, v0, v4

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move v6, v3

    :goto_1
    if-lt v2, v0, :cond_4

    if-nez v6, :cond_2

    return-object v1

    :cond_2
    if-eq v6, v4, :cond_3

    new-array v0, v6, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    invoke-static {v5, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    :cond_3
    return-object v5

    :cond_4
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfos:[Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    aget-object v7, v7, v2

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->outerClassNameIndex:I

    iget v9, v7, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->innerNameIndex:I

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    iget v9, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classNameIndex:I

    if-ne v8, v9, :cond_5

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v8

    array-length v8, v8

    if-eqz v8, :cond_5

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v5, v6

    move v6, v8

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    return-object v0
.end method

.method public getMissingTypeNames()[[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->missingTypeNames:[[[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getModifiers()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags:I

    :goto_0
    return v0
.end method

.method public getModule()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    return-object v0
.end method

.method public getModuleDeclaration()Lorg/eclipse/jdt/internal/compiler/env/IBinaryModule;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleDeclaration:Lorg/eclipse/jdt/internal/compiler/classfmt/ModuleInfo;

    return-object v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->className:[C

    return-object v0
.end method

.method public getNestHost()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->nestHost:[C

    return-object v0
.end method

.method public getSourceName()[C
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->sourceName:[C

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getInnerSourceName()[C

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getName()[C

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->isAnonymous()Z

    move-result v1

    const/16 v2, 0x2f

    if-eqz v1, :cond_1

    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x24

    invoke-static {v2, v0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->lastIndexOf(C[C)I

    move-result v1

    goto :goto_0

    :goto_1
    if-lez v1, :cond_2

    array-length v2, v0

    sub-int/2addr v2, v1

    new-array v3, v2, [C

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    :cond_2
    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->sourceName:[C

    return-object v0
.end method

.method public getSuperclassName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->superclassName:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->tagBits:J

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->typeAnnotations:[Lorg/eclipse/jdt/internal/compiler/classfmt/TypeAnnotationInfo;

    return-object v0
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    return-wide v0
.end method

.method public hasStructuralChanges([B)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralChanges([BZZ)Z

    move-result p1

    return p1
.end method

.method public hasStructuralChanges([BZZ)Z
    .locals 8

    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->classFileName:[C

    invoke-direct {v1, p1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;-><init>([B[C)V

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModifiers()I

    move-result p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getModifiers()I

    move-result v2

    if-eq p1, v2, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getTagBits()J

    move-result-wide v2

    const-wide v4, 0x20607ff800020000L

    and-long/2addr v2, v4

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getTagBits()J

    move-result-wide v6

    and-long/2addr v4, v6

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 6
    :cond_2
    iget-wide v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->version:J

    const-wide/32 v4, 0x340000

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    .line 7
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralTypeAnnotationChanges([Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 8
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getGenericSignature()[C

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getGenericSignature()[C

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getSuperclassName()[C

    move-result-object p1

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getSuperclassName()[C

    move-result-object v2

    invoke-static {p1, v2}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 10
    :cond_5
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getInterfaceNames()[[C

    move-result-object p1

    .line 11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfaceNames:[[C

    const/4 v3, 0x0

    if-eq v2, p1, :cond_a

    if-nez p1, :cond_6

    move v2, v3

    goto :goto_0

    .line 12
    :cond_6
    array-length v2, p1

    .line 13
    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfacesCount:I

    if-eq v2, v4, :cond_7

    return v0

    :cond_7
    move v2, v3

    :goto_1
    if-lt v2, v4, :cond_8

    goto :goto_2

    .line 14
    :cond_8
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->interfaceNames:[[C

    aget-object v5, v5, v2

    aget-object v6, p1, v2

    invoke-static {v5, v6}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-nez v5, :cond_9

    return v0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object p1

    .line 16
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMemberTypes()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;

    move-result-object v2

    if-eq p1, v2, :cond_11

    if-nez p1, :cond_b

    move v4, v3

    goto :goto_3

    .line 17
    :cond_b
    array-length v4, p1

    :goto_3
    if-nez v2, :cond_c

    move v5, v3

    goto :goto_4

    .line 18
    :cond_c
    array-length v5, v2

    :goto_4
    if-eq v4, v5, :cond_d

    return v0

    :cond_d
    move v5, v3

    :goto_5
    if-lt v5, v4, :cond_e

    goto :goto_7

    .line 19
    :cond_e
    aget-object v6, p1, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getName()[C

    move-result-object v6

    aget-object v7, v2, v5

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getName()[C

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 20
    aget-object v6, p1, v5

    invoke-interface {v6}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getModifiers()I

    move-result v6

    aget-object v7, v2, v5

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryNestedType;->getModifiers()I

    move-result v7

    if-eq v6, v7, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_10
    :goto_6
    return v0

    .line 21
    :cond_11
    :goto_7
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getFields()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryField;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    if-nez p1, :cond_12

    move v2, v3

    goto :goto_8

    .line 22
    :cond_12
    array-length v2, p1

    .line 23
    :goto_8
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    if-ne v4, v2, :cond_16

    move v4, v3

    .line 24
    :goto_9
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    if-lt v4, v5, :cond_13

    goto :goto_a

    .line 25
    :cond_13
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    aget-object v5, v5, v4

    aget-object v6, p1, v4

    invoke-direct {p0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralFieldChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 26
    :goto_a
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    if-eq v4, v5, :cond_14

    move v4, v0

    goto :goto_b

    :cond_14
    move v4, v3

    :goto_b
    if-eqz v4, :cond_17

    if-nez p2, :cond_17

    if-nez p3, :cond_17

    return v0

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_16
    move v4, v0

    :cond_17
    if-eqz v4, :cond_1e

    .line 27
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    if-eq v4, v2, :cond_18

    if-nez p3, :cond_18

    return v0

    :cond_18
    if-eqz p2, :cond_1a

    if-eqz v4, :cond_19

    .line 28
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_19
    if-eqz v2, :cond_1a

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_1a
    if-eqz p3, :cond_1b

    .line 30
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    invoke-direct {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasNonSyntheticFieldChanges([Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return v0

    :cond_1b
    move v2, v3

    .line 31
    :goto_c
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fieldsCount:I

    if-lt v2, v4, :cond_1c

    goto :goto_d

    .line 32
    :cond_1c
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->fields:[Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;

    aget-object v4, v4, v2

    aget-object v5, p1, v2

    invoke-direct {p0, v4, v5}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralFieldChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/FieldInfo;)Z

    move-result v4

    if-eqz v4, :cond_1d

    return v0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 33
    :cond_1e
    :goto_d
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMethods()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;

    move-result-object p1

    check-cast p1, [Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    if-nez p1, :cond_1f

    move v2, v3

    goto :goto_e

    .line 34
    :cond_1f
    array-length v2, p1

    .line 35
    :goto_e
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    if-ne v4, v2, :cond_23

    move v4, v3

    .line 36
    :goto_f
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    if-lt v4, v5, :cond_20

    goto :goto_10

    .line 37
    :cond_20
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    aget-object v5, v5, v4

    aget-object v6, p1, v4

    invoke-direct {p0, v5, v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralMethodChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 38
    :goto_10
    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    if-eq v4, v5, :cond_21

    move v4, v0

    goto :goto_11

    :cond_21
    move v4, v3

    :goto_11
    if-eqz v4, :cond_24

    if-nez p2, :cond_24

    if-nez p3, :cond_24

    return v0

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_23
    move v4, v0

    :cond_24
    if-eqz v4, :cond_2b

    .line 39
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    if-eq v4, v2, :cond_25

    if-nez p3, :cond_25

    return v0

    :cond_25
    if-eqz p2, :cond_27

    if-eqz v4, :cond_26

    .line 40
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_26
    if-eqz v2, :cond_27

    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_27
    if-eqz p3, :cond_28

    .line 42
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    invoke-direct {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasNonSyntheticMethodChanges([Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v0

    :cond_28
    move p2, v3

    .line 43
    :goto_12
    iget p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methodsCount:I

    if-lt p2, p3, :cond_29

    goto :goto_13

    .line 44
    :cond_29
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->methods:[Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;

    aget-object p3, p3, p2

    aget-object v2, p1, p2

    invoke-direct {p0, p3, v2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->hasStructuralMethodChanges(Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;Lorg/eclipse/jdt/internal/compiler/classfmt/MethodInfo;)Z

    move-result p3

    if-eqz p3, :cond_2a

    return v0

    :cond_2a
    add-int/lit8 p2, p2, 0x1

    goto :goto_12

    .line 45
    :cond_2b
    :goto_13
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMissingTypeNames()[[[C

    move-result-object p1

    .line 46
    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getMissingTypeNames()[[[C

    move-result-object p2

    if-eqz p1, :cond_30

    if-nez p2, :cond_2c

    return v0

    .line 47
    :cond_2c
    array-length p3, p1

    .line 48
    array-length v1, p2

    if-eq p3, v1, :cond_2d

    return v0

    :cond_2d
    move v1, v3

    :goto_14
    if-lt v1, p3, :cond_2e

    goto :goto_15

    .line 49
    :cond_2e
    aget-object v2, p1, v1

    aget-object v4, p2, v1

    invoke-static {v2, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([[C[[C)Z

    move-result v2
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2f

    return v0

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_30
    if-eqz p2, :cond_31

    return v0

    :cond_31
    :goto_15
    return v3

    :catch_0
    return v0
.end method

.method public isAnonymous()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isBinaryType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLocal()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getEnclosingTypeName()[C

    move-result-object v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isMember()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getEnclosingTypeName()[C

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;->getSourceName()[C

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isNestedType()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->innerInfo:Lorg/eclipse/jdt/internal/compiler/classfmt/InnerClassInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sourceFileName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->sourceFileName:[C

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " this.className: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " this.superclassName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getSuperclassName()[C

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->getSuperclassName()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " this.moduleName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->moduleName:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " access_flags: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags()I

    move-result v3

    invoke-static {v3}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->printTypeModifiers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileReader;->accessFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
