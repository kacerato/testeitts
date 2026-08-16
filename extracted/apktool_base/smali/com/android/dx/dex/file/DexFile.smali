.class public final Lcom/android/dx/dex/file/DexFile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final byteData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

.field private dexOptions:Lcom/android/dx/dex/DexOptions;

.field private dumpWidth:I

.field private final fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

.field private fileSize:I

.field private final header:Lcom/android/dx/dex/file/HeaderSection;

.field private final map:Lcom/android/dx/dex/file/MixedItemSection;

.field private final methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

.field private final protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

.field private final sections:[Lcom/android/dx/dex/file/Section;

.field private final stringData:Lcom/android/dx/dex/file/MixedItemSection;

.field private final stringIds:Lcom/android/dx/dex/file/StringIdsSection;

.field private final typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

.field private final typeLists:Lcom/android/dx/dex/file/MixedItemSection;

.field private final wordData:Lcom/android/dx/dex/file/MixedItemSection;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    new-instance v1, Lcom/android/dx/dex/file/HeaderSection;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/file/HeaderSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v1, v0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    new-instance v2, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v3, Lcom/android/dx/dex/file/MixedItemSection$SortType;->NONE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, v4, v0, v5, v3}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v2, v0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v6, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v7, Lcom/android/dx/dex/file/MixedItemSection$SortType;->TYPE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v8, "word_data"

    invoke-direct {v6, v8, v0, v5, v7}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v6, v0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v8, Lcom/android/dx/dex/file/MixedItemSection;

    sget-object v9, Lcom/android/dx/dex/file/MixedItemSection$SortType;->INSTANCE:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    const-string v10, "string_data"

    const/4 v11, 0x1

    invoke-direct {v8, v10, v0, v11, v9}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v8, v0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v9, Lcom/android/dx/dex/file/MixedItemSection;

    invoke-direct {v9, v4, v0, v11, v3}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v9, v0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v4, Lcom/android/dx/dex/file/MixedItemSection;

    const-string v10, "byte_data"

    invoke-direct {v4, v10, v0, v11, v7}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v4, v0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    new-instance v7, Lcom/android/dx/dex/file/StringIdsSection;

    invoke-direct {v7, v0}, Lcom/android/dx/dex/file/StringIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v7, v0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    new-instance v10, Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-direct {v10, v0}, Lcom/android/dx/dex/file/TypeIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v10, v0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    new-instance v12, Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-direct {v12, v0}, Lcom/android/dx/dex/file/ProtoIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v12, v0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    new-instance v13, Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-direct {v13, v0}, Lcom/android/dx/dex/file/FieldIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v13, v0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    new-instance v14, Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-direct {v14, v0}, Lcom/android/dx/dex/file/MethodIdsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v14, v0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    new-instance v15, Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-direct {v15, v0}, Lcom/android/dx/dex/file/ClassDefsSection;-><init>(Lcom/android/dx/dex/file/DexFile;)V

    iput-object v15, v0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    new-instance v11, Lcom/android/dx/dex/file/MixedItemSection;

    move-object/from16 v16, v9

    const-string v9, "map"

    invoke-direct {v11, v9, v0, v5, v3}, Lcom/android/dx/dex/file/MixedItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V

    iput-object v11, v0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    const/16 v3, 0xd

    new-array v3, v3, [Lcom/android/dx/dex/file/Section;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v1, 0x1

    aput-object v7, v3, v1

    const/4 v1, 0x2

    aput-object v10, v3, v1

    const/4 v1, 0x3

    aput-object v12, v3, v1

    aput-object v13, v3, v5

    const/4 v1, 0x5

    aput-object v14, v3, v1

    const/4 v1, 0x6

    aput-object v15, v3, v1

    const/4 v1, 0x7

    aput-object v6, v3, v1

    const/16 v1, 0x8

    aput-object v2, v3, v1

    const/16 v1, 0x9

    aput-object v8, v3, v1

    const/16 v1, 0xa

    aput-object v4, v3, v1

    const/16 v1, 0xb

    aput-object v16, v3, v1

    const/16 v1, 0xc

    aput-object v11, v3, v1

    iput-object v3, v0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    const/16 v1, 0x4f

    iput v1, v0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void
.end method

.method private static calcChecksum([B)V
    .locals 3

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/Adler32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x8

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    const/16 v2, 0x9

    aput-byte v1, p0, v2

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    const/16 v2, 0xa

    aput-byte v1, p0, v2

    shr-int/lit8 v0, v0, 0x18

    int-to-byte v0, v0

    const/16 v1, 0xb

    aput-byte v0, p0, v1

    return-void
.end method

.method private static calcSignature([B)V
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    array-length v1, p0

    const/16 v2, 0x20

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    const/16 v1, 0xc

    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0

    if-ne p0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected digest write: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;
    .locals 8

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->header:Lcom/android/dx/dex/file/HeaderSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->prepare()V

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const-string v4, "...while writing section "

    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Lcom/android/dx/dex/file/Section;->setFileOffset(I)I

    move-result v6

    if-lt v6, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    if-ne v5, v3, :cond_0

    iget-object v7, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    invoke-static {v7, v3}, Lcom/android/dx/dex/file/MapItem;->addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V

    iget-object v3, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/Section;->prepare()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    instance-of v3, v5, Lcom/android/dx/dex/file/MixedItemSection;

    if-eqz v3, :cond_1

    move-object v3, v5

    check-cast v3, Lcom/android/dx/dex/file/MixedItemSection;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/MixedItemSection;->placeItems()V

    :cond_1
    invoke-virtual {v5}, Lcom/android/dx/dex/file/Section;->writeSize()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bogus placement for section "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iput v3, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    new-array v2, v3, [B

    new-instance v3, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v3, v2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>([B)V

    if-eqz p1, :cond_4

    iget v5, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    invoke-virtual {v3, v5, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->enableAnnotations(IZ)V

    :cond_4
    :goto_3
    if-ge v1, v0, :cond_7

    :try_start_1
    iget-object p2, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v6

    sub-int/2addr v5, v6

    if-ltz v5, :cond_5

    invoke-virtual {p2}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeZeroes(I)V

    invoke-virtual {p2, v3}, Lcom/android/dx/dex/file/Section;->writeTo(Lcom/android/dx/util/AnnotatedOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_5
    new-instance p1, Lcom/android/dex/util/ExceptionWithContext;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "excess write of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v0, v5

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    instance-of p2, p1, Lcom/android/dex/util/ExceptionWithContext;

    if-eqz p2, :cond_6

    check-cast p1, Lcom/android/dex/util/ExceptionWithContext;

    goto :goto_5

    :cond_6
    new-instance p2, Lcom/android/dex/util/ExceptionWithContext;

    invoke-direct {p2, p1}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p2

    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-ne p2, v0, :cond_9

    invoke-static {v2}, Lcom/android/dx/dex/file/DexFile;->calcSignature([B)V

    invoke-static {v2}, Lcom/android/dx/dex/file/DexFile;->calcChecksum([B)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    sget-object p2, Lcom/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/android/dx/dex/file/ItemType;

    const-string v0, "\nmethod code index:\n\n"

    invoke-virtual {p1, v3, p2, v0}, Lcom/android/dx/dex/file/MixedItemSection;->writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/DexFile;->getStatistics()Lcom/android/dx/dex/file/Statistics;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/dx/dex/file/Statistics;->writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V

    invoke-virtual {v3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->finishAnnotating()V

    :cond_8
    return-object v3

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "foreshortened write"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/ClassDefItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ClassDefsSection;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    return-void
.end method

.method public findItemOrNull(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
    .locals 1

    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/ProtoIdsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByteData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->byteData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getClassData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getClassDefs()Lcom/android/dx/dex/file/ClassDefsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    return-object v0
.end method

.method public getClassOrNull(Ljava/lang/String;)Lcom/android/dx/dex/file/ClassDefItem;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    new-instance v1, Lcom/android/dx/rop/cst/CstType;

    invoke-direct {v1, p1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/ClassDefsSection;->get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/file/ClassDefItem;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDexOptions()Lcom/android/dx/dex/DexOptions;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->dexOptions:Lcom/android/dx/dex/DexOptions;

    return-object v0
.end method

.method public getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    return-object v0
.end method

.method public getFileSize()I
    .locals 2

    iget v0, p0, Lcom/android/dx/dex/file/DexFile;->fileSize:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file size not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFirstDataSection()Lcom/android/dx/dex/file/Section;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getLastDataSection()Lcom/android/dx/dex/file/Section;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getMap()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->map:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getMethodIds()Lcom/android/dx/dex/file/MethodIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    return-object v0
.end method

.method public getProtoIds()Lcom/android/dx/dex/file/ProtoIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->protoIds:Lcom/android/dx/dex/file/ProtoIdsSection;

    return-object v0
.end method

.method public getStatistics()Lcom/android/dx/dex/file/Statistics;
    .locals 5

    new-instance v0, Lcom/android/dx/dex/file/Statistics;

    invoke-direct {v0}, Lcom/android/dx/dex/file/Statistics;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/DexFile;->sections:[Lcom/android/dx/dex/file/Section;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/dx/dex/file/Statistics;->addAll(Lcom/android/dx/dex/file/Section;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getStringData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getStringIds()Lcom/android/dx/dex/file/StringIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    return-object v0
.end method

.method public getTypeIds()Lcom/android/dx/dex/file/TypeIdsSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    return-object v0
.end method

.method public getTypeLists()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeLists:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public getWordData()Lcom/android/dx/dex/file/MixedItemSection;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->wordData:Lcom/android/dx/dex/file/MixedItemSection;

    return-object v0
.end method

.method public internIfAppropriate(Lcom/android/dx/rop/cst/Constant;)V
    .locals 1

    instance-of v0, p1, Lcom/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->stringIds:Lcom/android/dx/dex/file/StringIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/StringIdsSection;->intern(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/dex/file/StringIdItem;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstType;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->typeIds:Lcom/android/dx/dex/file/TypeIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/TypeIdsSection;->intern(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/dex/file/TypeIdItem;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->methodIds:Lcom/android/dx/dex/file/MethodIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/MethodIdsSection;->intern(Lcom/android/dx/rop/cst/CstBaseMethodRef;)Lcom/android/dx/dex/file/MethodIdItem;

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstFieldRef;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstEnumRef;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->fieldIds:Lcom/android/dx/dex/file/FieldIdsSection;

    check-cast p1, Lcom/android/dx/rop/cst/CstEnumRef;

    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstEnumRef;->getFieldRef()Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_0
    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/dx/dex/file/DexFile;->classDefs:Lcom/android/dx/dex/file/ClassDefsSection;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ClassDefsSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setDumpWidth(I)V
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/android/dx/dex/file/DexFile;->dumpWidth:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dumpWidth < 40"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toDex(Ljava/io/Writer;Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object p2

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/io/Writer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/dx/dex/file/DexFile;->toDex0(ZZ)Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    move-result-object p3

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->getArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p3, p2}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->writeAnnotationsTo(Ljava/io/Writer;)V

    :cond_2
    return-void
.end method
