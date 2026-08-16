.class public Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;


# static fields
.field private static final NO_VALUES:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;


# instance fields
.field private annotationComponentValues:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

.field private annotationValue:Lorg/eclipse/jdt/core/util/IAnnotation;

.field private classFileInfoIndex:I

.field private classInfo:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

.field private constantValue:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

.field private constantValueIndex:I

.field private enumConstantName:[C

.field private enumConstantNameIndex:I

.field private enumConstantTypeName:[C

.field private enumConstantTypeNameIndex:I

.field private readOffset:I

.field private tag:I

.field private valuesNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;

    sput-object v0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->NO_VALUES:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    return-void
.end method

.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->classFileInfoIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->constantValueIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantTypeNameIndex:I

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantNameIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->tag:I

    const/4 v2, 0x1

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    const/16 v3, 0x40

    if-eq v1, v3, :cond_f

    const/16 v3, 0x46

    const/4 v4, 0x3

    if-eq v1, v3, :cond_b

    const/16 v3, 0x53

    if-eq v1, v3, :cond_b

    const/16 v3, 0x63

    if-eq v1, v3, :cond_8

    const/16 v3, 0x65

    if-eq v1, v3, :cond_3

    const/16 v3, 0x73

    if-eq v1, v3, :cond_b

    const/16 v3, 0x49

    if-eq v1, v3, :cond_b

    const/16 v3, 0x4a

    if-eq v1, v3, :cond_b

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_b

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->valuesNumber:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    if-eqz v1, :cond_2

    new-array v2, v1, [Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->annotationComponentValues:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    :goto_0
    if-lt v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v2, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/2addr v3, p3

    invoke-direct {v2, p1, p2, v3}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->annotationComponentValues:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    aput-object v2, v3, v0

    iget v3, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->sizeInBytes()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->NO_VALUES:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->annotationComponentValues:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantTypeNameIndex:I

    if-eqz v0, :cond_5

    invoke-interface {p2, v0}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantTypeName:[C

    goto :goto_1

    :cond_4
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_5
    :goto_1
    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantNameIndex:I

    if-eqz p1, :cond_7

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    if-ne p2, v2, :cond_6

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantName:[C

    goto :goto_2

    :cond_6
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_7
    :goto_2
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->classFileInfoIndex:I

    if-eqz p1, :cond_a

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    if-ne p2, v2, :cond_9

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->classInfo:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    goto :goto_3

    :cond_9
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_a
    :goto_3
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    goto :goto_5

    :cond_b
    :pswitch_0
    invoke-virtual {p0, p1, v2, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->constantValueIndex:I

    if-eqz p1, :cond_e

    invoke-interface {p2, p1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result p2

    if-eq p2, v2, :cond_d

    if-eq p2, v4, :cond_d

    const/4 p3, 0x4

    if-eq p2, p3, :cond_d

    const/4 p3, 0x5

    if-eq p2, p3, :cond_d

    const/4 p3, 0x6

    if-ne p2, p3, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_d
    :goto_4
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->constantValue:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    :cond_e
    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    goto :goto_5

    :cond_f
    new-instance v0, Lorg/eclipse/jdt/internal/core/util/Annotation;

    iget v1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    add-int/2addr v1, p3

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jdt/internal/core/util/Annotation;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->annotationValue:Lorg/eclipse/jdt/core/util/IAnnotation;

    iget p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/util/Annotation;->sizeInBytes()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAnnotationComponentValues()[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->annotationComponentValues:[Lorg/eclipse/jdt/core/util/IAnnotationComponentValue;

    return-object v0
.end method

.method public getAnnotationValue()Lorg/eclipse/jdt/core/util/IAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->annotationValue:Lorg/eclipse/jdt/core/util/IAnnotation;

    return-object v0
.end method

.method public getClassInfo()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->classInfo:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    return-object v0
.end method

.method public getClassInfoIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->classFileInfoIndex:I

    return v0
.end method

.method public getConstantValue()Lorg/eclipse/jdt/core/util/IConstantPoolEntry;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->constantValue:Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    return-object v0
.end method

.method public getConstantValueIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->constantValueIndex:I

    return v0
.end method

.method public getEnumConstantName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantName:[C

    return-object v0
.end method

.method public getEnumConstantNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantNameIndex:I

    return v0
.end method

.method public getEnumConstantTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantTypeName:[C

    return-object v0
.end method

.method public getEnumConstantTypeNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->enumConstantTypeNameIndex:I

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->tag:I

    return v0
.end method

.method public getValuesNumber()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->valuesNumber:I

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/AnnotationComponentValue;->readOffset:I

    return v0
.end method
