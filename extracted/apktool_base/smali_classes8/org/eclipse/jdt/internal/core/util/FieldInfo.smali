.class public Lorg/eclipse/jdt/internal/core/util/FieldInfo;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IFieldInfo;


# instance fields
.field private accessFlags:I

.field private attributeBytes:I

.field private attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

.field private attributesCount:I

.field private constantValueAttribute:Lorg/eclipse/jdt/core/util/IConstantValueAttribute;

.field private descriptor:[C

.field private descriptorIndex:I

.field private isDeprecated:Z

.field private isSynthetic:Z

.field private name:[C

.field private nameIndex:I


# direct methods
.method public constructor <init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/util/ClassFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->isSynthetic:Z

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->nameIndex:I

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v2, :cond_d

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->name:[C

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->descriptorIndex:I

    invoke-interface {p2, v1}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v3

    if-ne v3, v2, :cond_c

    invoke-interface {v1}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->descriptor:[C

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributesCount:I

    sget-object v3, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;->NO_ATTRIBUTES:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    if-eqz v1, :cond_1

    new-array v1, v1, [Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    :cond_1
    const/16 v1, 0x8

    move v3, v1

    move v1, v0

    :goto_0
    iget v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributesCount:I

    if-lt v0, v5, :cond_2

    iput v3, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributeBytes:I

    return-void

    :cond_2
    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v5

    invoke-interface {p2, v5}, Lorg/eclipse/jdt/core/util/IConstantPool;->decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getKind()I

    move-result v6

    if-ne v6, v2, :cond_b

    invoke-interface {v5}, Lorg/eclipse/jdt/core/util/IConstantPoolEntry;->getUtf8Value()[C

    move-result-object v5

    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->DEPRECATED:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->isDeprecated:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    :goto_1
    move v1, v6

    goto/16 :goto_2

    :cond_3
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SYNTHETIC:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->isSynthetic:Z

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto :goto_1

    :cond_4
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->CONSTANT_VALUE:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v5, Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;

    add-int v6, p3, v3

    invoke-direct {v5, p1, p2, v6}, Lorg/eclipse/jdt/internal/core/util/ConstantValueAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    iput-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->constantValueAttribute:Lorg/eclipse/jdt/core/util/IConstantValueAttribute;

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v7, v1, 0x1

    aput-object v5, v6, v1

    move v1, v7

    goto/16 :goto_2

    :cond_5
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->SIGNATURE:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/SignatureAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/SignatureAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto :goto_1

    :cond_6
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto :goto_1

    :cond_7
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto :goto_1

    :cond_8
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_VISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeVisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto/16 :goto_1

    :cond_9
    sget-object v6, Lorg/eclipse/jdt/core/util/IAttributeNamesConstants;->RUNTIME_INVISIBLE_TYPE_ANNOTATIONS:[C

    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/RuntimeInvisibleTypeAnnotationsAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto/16 :goto_1

    :cond_a
    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    add-int/lit8 v6, v1, 0x1

    new-instance v7, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;

    add-int v8, p3, v3

    invoke-direct {v7, p1, p2, v8}, Lorg/eclipse/jdt/internal/core/util/ClassFileAttribute;-><init>([BLorg/eclipse/jdt/core/util/IConstantPool;I)V

    aput-object v7, v5, v1

    goto/16 :goto_1

    :goto_2
    int-to-long v5, v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, p1, v3, p3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u4At([BII)J

    move-result-wide v7

    const-wide/16 v9, 0x6

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    long-to-int v3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_c
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1

    :cond_d
    new-instance p1, Lorg/eclipse/jdt/core/util/ClassFormatException;

    invoke-direct {p1, v4}, Lorg/eclipse/jdt/core/util/ClassFormatException;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->accessFlags:I

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributesCount:I

    return v0
.end method

.method public getAttributes()[Lorg/eclipse/jdt/core/util/IClassFileAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributes:[Lorg/eclipse/jdt/core/util/IClassFileAttribute;

    return-object v0
.end method

.method public getConstantValueAttribute()Lorg/eclipse/jdt/core/util/IConstantValueAttribute;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->constantValueAttribute:Lorg/eclipse/jdt/core/util/IConstantValueAttribute;

    return-object v0
.end method

.method public getDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->descriptor:[C

    return-object v0
.end method

.method public getDescriptorIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->descriptorIndex:I

    return v0
.end method

.method public getName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->name:[C

    return-object v0
.end method

.method public getNameIndex()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->nameIndex:I

    return v0
.end method

.method public hasConstantValueAttribute()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->constantValueAttribute:Lorg/eclipse/jdt/core/util/IConstantValueAttribute;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeprecated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->isDeprecated:Z

    return v0
.end method

.method public isSynthetic()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->isSynthetic:Z

    return v0
.end method

.method public sizeInBytes()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/FieldInfo;->attributeBytes:I

    return v0
.end method
