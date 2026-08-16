.class public final Lcom/android/dex/TableOfContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/TableOfContents$Section;
    }
.end annotation


# instance fields
.field public final annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

.field public final annotationSets:Lcom/android/dex/TableOfContents$Section;

.field public final annotations:Lcom/android/dex/TableOfContents$Section;

.field public final annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

.field public apiLevel:I

.field public final callSiteIds:Lcom/android/dex/TableOfContents$Section;

.field public checksum:I

.field public final classDatas:Lcom/android/dex/TableOfContents$Section;

.field public final classDefs:Lcom/android/dex/TableOfContents$Section;

.field public final codes:Lcom/android/dex/TableOfContents$Section;

.field public dataOff:I

.field public dataSize:I

.field public final debugInfos:Lcom/android/dex/TableOfContents$Section;

.field public final encodedArrays:Lcom/android/dex/TableOfContents$Section;

.field public final fieldIds:Lcom/android/dex/TableOfContents$Section;

.field public fileSize:I

.field public final header:Lcom/android/dex/TableOfContents$Section;

.field public linkOff:I

.field public linkSize:I

.field public final mapList:Lcom/android/dex/TableOfContents$Section;

.field public final methodHandles:Lcom/android/dex/TableOfContents$Section;

.field public final methodIds:Lcom/android/dex/TableOfContents$Section;

.field public final protoIds:Lcom/android/dex/TableOfContents$Section;

.field public final sections:[Lcom/android/dex/TableOfContents$Section;

.field public signature:[B

.field public final stringDatas:Lcom/android/dex/TableOfContents$Section;

.field public final stringIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeIds:Lcom/android/dex/TableOfContents$Section;

.field public final typeLists:Lcom/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/dex/TableOfContents$Section;

    move-object v1, v2

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v2, v0, Lcom/android/dex/TableOfContents;->header:Lcom/android/dex/TableOfContents$Section;

    new-instance v3, Lcom/android/dex/TableOfContents$Section;

    move-object v2, v3

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v3, v0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v4, Lcom/android/dex/TableOfContents$Section;

    move-object v3, v4

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v4, v0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v5, Lcom/android/dex/TableOfContents$Section;

    move-object v4, v5

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v5, v0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v6, Lcom/android/dex/TableOfContents$Section;

    move-object v5, v6

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v6, v0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v7, Lcom/android/dex/TableOfContents$Section;

    move-object v6, v7

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v7, v0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v8, Lcom/android/dex/TableOfContents$Section;

    move-object v7, v8

    const/4 v9, 0x6

    invoke-direct {v8, v9}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v8, v0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    new-instance v8, Lcom/android/dex/TableOfContents$Section;

    move-object v9, v8

    const/4 v10, 0x7

    invoke-direct {v8, v10}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v8, v0, Lcom/android/dex/TableOfContents;->callSiteIds:Lcom/android/dex/TableOfContents$Section;

    new-instance v8, Lcom/android/dex/TableOfContents$Section;

    move-object v10, v8

    const/16 v11, 0x8

    invoke-direct {v8, v11}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v8, v0, Lcom/android/dex/TableOfContents;->methodHandles:Lcom/android/dex/TableOfContents$Section;

    new-instance v11, Lcom/android/dex/TableOfContents$Section;

    move-object v8, v11

    const/16 v12, 0x1000

    invoke-direct {v11, v12}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v11, v0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    new-instance v12, Lcom/android/dex/TableOfContents$Section;

    move-object v11, v12

    const/16 v13, 0x1001

    invoke-direct {v12, v13}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v12, v0, Lcom/android/dex/TableOfContents;->typeLists:Lcom/android/dex/TableOfContents$Section;

    new-instance v13, Lcom/android/dex/TableOfContents$Section;

    move-object v12, v13

    const/16 v14, 0x1002

    invoke-direct {v13, v14}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v13, v0, Lcom/android/dex/TableOfContents;->annotationSetRefLists:Lcom/android/dex/TableOfContents$Section;

    new-instance v14, Lcom/android/dex/TableOfContents$Section;

    move-object v13, v14

    const/16 v15, 0x1003

    invoke-direct {v14, v15}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v14, v0, Lcom/android/dex/TableOfContents;->annotationSets:Lcom/android/dex/TableOfContents$Section;

    new-instance v15, Lcom/android/dex/TableOfContents$Section;

    move-object v14, v15

    move-object/from16 v21, v1

    const/16 v1, 0x2000

    invoke-direct {v15, v1}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v15, v0, Lcom/android/dex/TableOfContents;->classDatas:Lcom/android/dex/TableOfContents$Section;

    new-instance v1, Lcom/android/dex/TableOfContents$Section;

    move-object v15, v1

    move-object/from16 v22, v2

    const/16 v2, 0x2001

    invoke-direct {v1, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->codes:Lcom/android/dex/TableOfContents$Section;

    new-instance v1, Lcom/android/dex/TableOfContents$Section;

    move-object/from16 v16, v1

    const/16 v2, 0x2002

    invoke-direct {v1, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->stringDatas:Lcom/android/dex/TableOfContents$Section;

    new-instance v1, Lcom/android/dex/TableOfContents$Section;

    move-object/from16 v17, v1

    const/16 v2, 0x2003

    invoke-direct {v1, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->debugInfos:Lcom/android/dex/TableOfContents$Section;

    new-instance v1, Lcom/android/dex/TableOfContents$Section;

    move-object/from16 v18, v1

    const/16 v2, 0x2004

    invoke-direct {v1, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->annotations:Lcom/android/dex/TableOfContents$Section;

    new-instance v1, Lcom/android/dex/TableOfContents$Section;

    move-object/from16 v19, v1

    const/16 v2, 0x2005

    invoke-direct {v1, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->encodedArrays:Lcom/android/dex/TableOfContents$Section;

    new-instance v1, Lcom/android/dex/TableOfContents$Section;

    move-object/from16 v20, v1

    const/16 v2, 0x2006

    invoke-direct {v1, v2}, Lcom/android/dex/TableOfContents$Section;-><init>(I)V

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->annotationsDirectories:Lcom/android/dex/TableOfContents$Section;

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    filled-new-array/range {v1 .. v20}, [Lcom/android/dex/TableOfContents$Section;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/android/dex/TableOfContents;->signature:[B

    return-void
.end method

.method private getSection(S)Lcom/android/dex/TableOfContents$Section;
    .locals 5

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-short v4, v3, Lcom/android/dex/TableOfContents$Section;->type:S

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such map item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readHeader(Lcom/android/dex/Dex$Section;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/dex/DexFormat;->isSupportedDexMagic([B)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/dex/DexFormat;->magicToApi([B)I

    move-result v0

    iput v0, p0, Lcom/android/dex/TableOfContents;->apiLevel:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/dex/TableOfContents;->checksum:I

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->readByteArray(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    const/16 v1, 0x70

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    const v1, 0x12345678

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->size:I

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    return-void

    :cond_0
    new-instance p1, Lcom/android/dex/DexException;

    const-string v0, "Cannot merge dex files that do not contain a map"

    invoke-direct {p1, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected endian tag: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 p1, 0x1

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 p1, 0x2

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    const/4 p1, 0x3

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 p1, 0x4

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    const/4 p1, 0x5

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 p1, 0x6

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    const/4 p1, 0x7

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unexpected magic: [0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/dex/DexException;

    invoke-direct {v0, p1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readMap(Lcom/android/dex/Dex$Section;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    move-result v3

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readShort()S

    invoke-direct {p0, v3}, Lcom/android/dex/TableOfContents;->getSection(S)Lcom/android/dex/TableOfContents$Section;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/dex/Dex$Section;->readInt()I

    move-result v6

    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    if-eqz v7, :cond_0

    if-ne v7, v5, :cond_1

    :cond_0
    iget v7, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/dex/DexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected map value for 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iput v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    iput v6, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    if-eqz v1, :cond_4

    iget v3, v1, Lcom/android/dex/TableOfContents$Section;->off:I

    if-gt v3, v6, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/android/dex/DexException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map is unsorted at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public computeSizesFromOffsets()V
    .locals 5

    iget v0, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    iget v1, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    aget-object v2, v2, v1

    iget v3, v2, Lcom/android/dex/TableOfContents$Section;->off:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    if-gt v3, v0, :cond_1

    sub-int/2addr v0, v3

    iput v0, v2, Lcom/android/dex/TableOfContents$Section;->byteCount:I

    move v0, v3

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Map is unsorted at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public readFrom(Lcom/android/dex/Dex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dex/TableOfContents;->readHeader(Lcom/android/dex/Dex$Section;)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget v0, v0, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex;->open(I)Lcom/android/dex/Dex$Section;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/dex/TableOfContents;->readMap(Lcom/android/dex/Dex$Section;)V

    invoke-virtual {p0}, Lcom/android/dex/TableOfContents;->computeSizesFromOffsets()V

    return-void
.end method

.method public writeHeader(Lcom/android/dex/Dex$Section;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/dex/DexFormat;->apiToMagic(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->write([B)V

    iget p2, p0, Lcom/android/dex/TableOfContents;->checksum:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->signature:[B

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->write([B)V

    iget p2, p0, Lcom/android/dex/TableOfContents;->fileSize:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    const/16 p2, 0x70

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    const p2, 0x12345678

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget p2, p0, Lcom/android/dex/TableOfContents;->linkSize:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget p2, p0, Lcom/android/dex/TableOfContents;->linkOff:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->mapList:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->stringIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->typeIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->protoIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->fieldIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->methodIds:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object p2, p0, Lcom/android/dex/TableOfContents;->classDefs:Lcom/android/dex/TableOfContents$Section;

    iget p2, p2, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget p2, p0, Lcom/android/dex/TableOfContents;->dataSize:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget p2, p0, Lcom/android/dex/TableOfContents;->dataOff:I

    invoke-virtual {p1, p2}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method

.method public writeMap(Lcom/android/dex/Dex$Section;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget-object v0, p0, Lcom/android/dex/TableOfContents;->sections:[Lcom/android/dex/TableOfContents$Section;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/dex/TableOfContents$Section;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-short v5, v4, Lcom/android/dex/TableOfContents$Section;->type:S

    invoke-virtual {p1, v5}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    invoke-virtual {p1, v2}, Lcom/android/dex/Dex$Section;->writeShort(S)V

    iget v5, v4, Lcom/android/dex/TableOfContents$Section;->size:I

    invoke-virtual {p1, v5}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    iget v4, v4, Lcom/android/dex/TableOfContents$Section;->off:I

    invoke-virtual {p1, v4}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
