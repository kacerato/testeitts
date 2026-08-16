.class public Lorg/eclipse/jdt/internal/core/util/ConstantPool;
.super Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/util/IConstantPool;


# instance fields
.field private classFileBytes:[B

.field private constantPoolCount:I

.field private constantPoolOffset:[I


# direct methods
.method public constructor <init>([B[I)V
    .locals 1

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;-><init>()V

    array-length v0, p2

    iput v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolCount:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    return-void
.end method

.method private getUtf8ValueAt(I)[C
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v0, p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {p0, v0, v2, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->utf8At([BIII)[C

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decodeEntry(I)Lorg/eclipse/jdt/core/util/IConstantPoolEntry;
    .locals 6

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getEntryKind(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setPackageIndex(I)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setPackageName([C)V

    :goto_0
    move-object p1, v1

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setModuleIndex(I)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setModuleName([C)V

    goto :goto_0

    :pswitch_3
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;-><init>()V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setBootstrapMethodAttributeIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v4, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setNameAndTypeIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v4, p1

    invoke-virtual {p0, v2, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setMethodName([C)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setMethodDescriptor([C)V

    :goto_1
    move-object p1, v3

    goto/16 :goto_2

    :pswitch_4
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;-><init>()V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setBootstrapMethodAttributeIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v4, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setNameAndTypeIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v4, p1

    invoke-virtual {p0, v2, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setFieldName([C)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setFieldDescriptor([C)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setDescriptorIndex(I)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setMethodDescriptor([C)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v3, v3, p1

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setReferenceKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v2, p1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry2;->setReferenceIndex(I)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setNameAndTypeNameIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v2, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setNameAndTypeDescriptorIndex(I)V

    goto/16 :goto_1

    :pswitch_8
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setClassIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getClassIndex()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setClassName([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v4, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setNameAndTypeIndex(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v4

    aget v0, v0, v4

    invoke-virtual {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setMethodName([C)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setMethodDescriptor([C)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v3, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v4, v4, p1

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setClassIndex(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getClassIndex()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0, v0, v2, v4}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setClassName([C)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v4, p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setNameAndTypeIndex(I)V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v4

    aget v0, v0, v4

    invoke-virtual {p0, p1, v2, v0}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getNameAndTypeIndex()I

    move-result v4

    aget v2, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setFieldName([C)V

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setFieldDescriptor([C)V

    goto/16 :goto_1

    :pswitch_a
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setStringIndex(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getStringIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setStringValue([C)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setClassInfoNameIndex(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->getClassInfoNameIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setClassInfoName([C)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->doubleAt([BII)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setDoubleValue(D)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i8At([BII)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setLongValue(J)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->floatAt([BII)F

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setFloatValue(F)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v3, p1

    invoke-virtual {p0, v0, v2, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->i4At([BII)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setIntegerValue(I)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v1, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;-><init>()V

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->reset()V

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setKind(I)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget v3, v3, p1

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u2At([BII)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setUtf8Length(I)V

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->getUtf8ValueAt(I)[C

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/util/ConstantPoolEntry;->setUtf8Value([C)V

    goto/16 :goto_0

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getConstantPoolCount()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolCount:I

    return v0
.end method

.method public getEntryKind(I)I
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->classFileBytes:[B

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/util/ConstantPool;->constantPoolOffset:[I

    aget p1, v1, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/eclipse/jdt/internal/core/util/ClassFileStruct;->u1At([BII)I

    move-result p1

    return p1
.end method
