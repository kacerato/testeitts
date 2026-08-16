.class public final Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;,
        Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ARRAY_HEADER_BYTES:I

.field private static final GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

.field private static final type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/field/StructDef<",
            "Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final inlineSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->createAbstract(Ljava/lang/Class;)Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->type:Lorg/eclipse/jdt/internal/core/nd/field/StructDef;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->addPointer()Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->done()V

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/field/StructDef;->size()I

    move-result v0

    sput v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ARRAY_HEADER_BYTES:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    return-void
.end method

.method private addSizeTo(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    sget-object p3, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p4, p3, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    :cond_0
    return-void
.end method

.method private computeBlockBytes(I)I
    .locals 1

    mul-int/lit8 p1, p1, 0x4

    sget v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->GROWABLE_BLOCK_HEADER_BYTES:I

    add-int/2addr p1, v0

    return p1
.end method

.method private computeMetablockPagesForBlocks(I)I
    .locals 2

    mul-int/lit8 p1, p1, 0x4

    sget v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->GROWABLE_BLOCK_HEADER_BYTES:I

    add-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunksNeededForBytes(J)I

    move-result p1

    return p1
.end method

.method private static divideRoundingUp(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method private getAddressOfRecord(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J
    .locals 10

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    sub-int v0, p4, v0

    const/4 v1, 0x4

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v2

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v3, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v4

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v6

    if-gt p4, v6, :cond_2

    sget-object p4, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p4, p1, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p4

    sget v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    if-le p4, v6, :cond_1

    rem-int p4, v0, v6

    div-int/2addr v0, v6

    sget v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->META_BLOCK_HEADER_BYTES:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-int/lit8 v6, v0, 0x4

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    move v0, p4

    move-wide v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v2, "backpointer number "

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4, v4, v5, v1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Ljava/lang/String;JI)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p1

    const-string p2, "Null data block found in metablock"

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    sget p1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->GROWABLE_BLOCK_HEADER_BYTES:I

    int-to-long p1, p1

    add-long/2addr v4, p1

    mul-int/2addr v0, v1

    int-to-long p1, v0

    add-long/2addr v4, p1

    return-wide v4

    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->addSizeTo(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;)V

    invoke-virtual {v0, v3, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Record index "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " out of range. Array contains "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " elements"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1

    :cond_3
    sget p1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ARRAY_HEADER_BYTES:I

    int-to-long v2, p1

    add-long/2addr p2, v2

    mul-int/2addr p4, v1

    int-to-long v0, p4

    add-long/2addr p2, v0

    return-wide p2
.end method

.method private getGrowableRegionSizeFor(I)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    sub-int/2addr p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getNextPowerOfTwo(I)I

    move-result v0

    sget v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    if-le v0, v1, :cond_2

    if-gt p1, v1, :cond_1

    return v1

    :cond_1
    invoke-static {p1, v1}, Lorg/eclipse/jdt/internal/core/nd/util/MathUtils;->roundUpToNearestMultiple(II)I

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public static getMaxGrowableBlockSize()I
    .locals 1

    sget v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    return v0
.end method

.method private static getNextPowerOfTwo(I)I
    .locals 1

    invoke-static {p0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getPrevPowerOfTwo(I)I

    move-result v0

    if-eq v0, p0, :cond_0

    shl-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private static getPrevPowerOfTwo(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    sub-int/2addr p0, v0

    return p0
.end method

.method private repackIfNecessary(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v1, p4

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v2, v7, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v2

    const-wide/16 v10, 0x0

    cmp-long v4, v2, v10

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget v4, v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    sub-int v12, v1, v4

    sget-object v4, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v4, v7, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v13

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getGrowableRegionSizeFor(I)I

    move-result v14

    if-lt v14, v13, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v1

    sget v4, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    const/4 v15, 0x1

    if-le v13, v4, :cond_5

    add-int v5, v14, v4

    sub-int/2addr v5, v15

    div-int/2addr v5, v4

    div-int v6, v13, v4

    sub-int v10, v6, v5

    if-gt v10, v15, :cond_2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v15

    if-le v14, v4, :cond_2

    return-void

    :cond_2
    sget v4, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->META_BLOCK_HEADER_BYTES:I

    int-to-long v10, v4

    add-long/2addr v10, v2

    :goto_0
    add-int/lit8 v6, v6, -0x1

    const/4 v4, 0x7

    if-ge v6, v5, :cond_4

    sget v5, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    if-le v14, v5, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v1, v7, v2, v3, v14}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void

    :cond_3
    invoke-virtual {v1, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v10

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v6, v7, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v15

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object v0, v6

    move/from16 v16, v13

    move v13, v5

    move-wide v5, v10

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v7, v10, v11, v15}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0, v7, v10, v11, v13}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    goto :goto_1

    :cond_4
    move/from16 v16, v13

    mul-int/lit8 v0, v6, 0x4

    move v13, v5

    int-to-long v4, v0

    add-long/2addr v4, v10

    move-wide/from16 v17, v2

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v2

    const/4 v0, 0x7

    invoke-virtual {v1, v2, v3, v0}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v5, v13

    move/from16 v13, v16

    move-wide/from16 v2, v17

    goto :goto_0

    :cond_5
    move/from16 v16, v13

    :cond_6
    move/from16 v13, v16

    :goto_1
    div-int/lit8 v13, v13, 0x4

    const/4 v0, 0x1

    add-int/2addr v13, v0

    move-object/from16 v0, p0

    if-gt v12, v13, :cond_7

    invoke-direct {v0, v7, v8, v9, v14}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->resizeBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v5

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    :cond_7
    return-void
.end method

.method private resizeBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v9

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    move-wide/from16 v4, p2

    invoke-virtual {v3, v1, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v10

    const-wide/16 v6, 0x0

    cmp-long v3, v10, v6

    const/4 v12, 0x7

    if-eqz v3, :cond_1

    if-nez v2, :cond_0

    invoke-virtual {v9, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-wide v6

    :cond_0
    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v6, v1, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v6

    if-ne v6, v2, :cond_1

    return-wide v10

    :cond_1
    invoke-virtual/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v13

    iget v4, v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    sub-int v4, v13, v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-direct {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->computeBlockBytes(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v9, v5, v6, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v14

    if-eqz v3, :cond_2

    invoke-direct {v0, v4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->computeBlockBytes(I)I

    move-result v8

    move-object v3, v9

    move-wide v4, v14

    move-wide v6, v10

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memcpy(JJI)V

    invoke-virtual {v9, v10, v11, v12}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    :cond_2
    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v3, v1, v14, v15, v13}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    sget-object v3, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v3, v1, v14, v15, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-wide v14
.end method

.method private setSize(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method


# virtual methods
.method public add(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ensureCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getAddressOfRecord(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p4, p5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    invoke-direct {p0, p1, p2, p3, v2}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->setSize(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object p5

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->addSizeTo(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;)V

    invoke-virtual {p5, p4}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->attachTo(Lorg/eclipse/jdt/internal/core/nd/db/IndexException;)V

    throw p4

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Null pointers cannot be inserted into "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p3, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->repackIfNecessary(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-void
.end method

.method public ensureCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move/from16 v1, p4

    iget v2, v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    sub-int v2, v1, v2

    sget-object v10, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v10, v7, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v5, v7, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v5

    :goto_0
    if-gt v2, v5, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v14

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getGrowableRegionSizeFor(I)I

    move-result v15

    sget v12, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    if-le v15, v12, :cond_6

    invoke-static {v15, v12}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->divideRoundingUp(II)I

    move-result v13

    invoke-direct {v0, v13}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->computeMetablockPagesForBlocks(I)I

    move-result v11

    const/16 v1, 0x7fff

    if-gt v11, v1, :cond_5

    const/4 v6, 0x7

    if-gt v5, v12, :cond_2

    invoke-virtual/range {p0 .. p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v1

    invoke-direct {v0, v7, v8, v9, v12}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->resizeBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v2

    invoke-static {v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytesThatFitInChunks(I)J

    move-result-wide v4

    invoke-virtual {v14, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v4

    sget-object v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v6, v7, v4, v5, v1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v1, v7, v4, v5, v12}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->METABLOCK_NUM_PAGES:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    int-to-short v6, v11

    invoke-virtual {v1, v7, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    sget v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->META_BLOCK_HEADER_BYTES:I

    move/from16 v16, v12

    move/from16 v17, v13

    int-to-long v12, v1

    add-long/2addr v12, v4

    invoke-virtual {v14, v12, v13, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide v12, v4

    move-wide/from16 v3, p2

    const/4 v8, 0x7

    move-wide v5, v12

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    move-wide v3, v12

    goto :goto_1

    :cond_2
    move v8, v6

    move/from16 v16, v12

    move/from16 v17, v13

    :goto_1
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->METABLOCK_NUM_PAGES:Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;

    invoke-virtual {v1, v7, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v2

    if-ge v2, v11, :cond_3

    int-to-double v5, v11

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v5, v11

    const-wide v11, 0x40dfffc000000000L    # 32767.0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    double-to-int v2, v5

    int-to-short v2, v2

    invoke-static {v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytesThatFitInChunks(I)J

    move-result-wide v5

    invoke-virtual {v14, v5, v6, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v5

    invoke-virtual {v1, v7, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)S

    move-result v9

    invoke-static {v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getBytesThatFitInChunks(I)J

    move-result-wide v11

    long-to-int v9, v11

    move-object v11, v14

    move/from16 v18, v17

    move/from16 v17, v16

    move-wide v12, v5

    move-object v0, v14

    move/from16 v19, v15

    move-wide v14, v3

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->memcpy(JJI)V

    invoke-virtual {v0, v3, v4, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    invoke-virtual {v1, v7, v5, v6, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldShort;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JS)V

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide v9, v5

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    move-wide v3, v9

    goto :goto_2

    :cond_3
    move-object v0, v14

    move/from16 v19, v15

    move/from16 v18, v17

    move/from16 v17, v16

    :goto_2
    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v1, v7, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v1

    div-int v1, v1, v17

    move/from16 v2, v18

    :goto_3
    if-lt v1, v2, :cond_4

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    move/from16 v5, v19

    invoke-virtual {v0, v7, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    move-object/from16 v0, p0

    goto :goto_4

    :cond_4
    move/from16 v5, v19

    sget v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->MAX_GROWABLE_SIZE:I

    move-object v9, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->computeBlockBytes(I)I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v10

    sget v6, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$MetaBlockHeader;->META_BLOCK_HEADER_BYTES:I

    int-to-long v12, v6

    add-long/2addr v12, v3

    mul-int/lit8 v6, v1, 0x4

    int-to-long v14, v6

    add-long/2addr v12, v14

    invoke-virtual {v9, v12, v13, v10, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v9

    goto :goto_3

    :cond_5
    new-instance v1, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "A metablock overflowed. Unable to allocate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pages."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/IndexException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-wide v3, v8

    move v5, v15

    invoke-direct {v0, v7, v3, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->resizeBlock(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v5

    move-object v1, v10

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->put(Lorg/eclipse/jdt/internal/core/nd/Nd;JJ)V

    :goto_4
    return-void
.end method

.method public get(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getAddressOfRecord(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide p2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getCapacity(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    return p1

    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ALLOCATED_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p1

    iget p2, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    add-int/2addr p1, p2

    return p1
.end method

.method public getRecordSize()I
    .locals 2

    sget v0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ARRAY_HEADER_BYTES:I

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Z
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    if-nez p1, :cond_0

    return v7

    :cond_0
    sget p1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ARRAY_HEADER_BYTES:I

    int-to-long v1, p1

    add-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide p1

    cmp-long p1, p1, v3

    if-nez p1, :cond_1

    return v7

    :cond_1
    return v6

    :cond_2
    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p2, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p1

    if-nez p1, :cond_3

    return v7

    :cond_3
    return v6
.end method

.method public remove(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J
    .locals 11

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v2

    if-gt p4, v1, :cond_1

    if-ltz p4, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getAddressOfRecord(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    if-ne p4, v1, :cond_0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->getAddressOfRecord(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v9

    invoke-virtual {v2, v3, v4, v9, v10}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    invoke-virtual {v2, v7, v8, v5, v6}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    move-wide v5, v9

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->setSize(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->repackIfNecessary(Lorg/eclipse/jdt/internal/core/nd/Nd;JI)V

    return-wide v5

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->describeProblem()Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v1

    sget-object v2, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v1, v2, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->addProblemAddress(Lorg/eclipse/jdt/internal/core/nd/field/IField;J)Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, v1}, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->addSizeTo(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Attempt to remove nonexistent element "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from an array of size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/eclipse/jdt/internal/core/nd/IndexExceptionBuilder;->build(Ljava/lang/String;)Lorg/eclipse/jdt/internal/core/nd/db/IndexException;

    move-result-object p1

    throw p1
.end method

.method public size(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/Nd;->getDB()Lorg/eclipse/jdt/internal/core/nd/db/Database;

    move-result-object v0

    sget-object v1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->GROWABLE_BLOCK_ADDRESS:Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/field/FieldPointer;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    sget p1, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->ARRAY_HEADER_BYTES:I

    int-to-long v1, p1

    add-long/2addr p2, v1

    const/4 p1, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray;->inlineSize:I

    if-lt p1, v1, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v1, p1, 0x4

    int-to-long v1, v1

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/eclipse/jdt/internal/core/nd/RawGrowableArray$GrowableBlockHeader;->ARRAY_SIZE:Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;

    invoke-virtual {p2, p1, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldInt;->get(Lorg/eclipse/jdt/internal/core/nd/Nd;J)I

    move-result p1

    return p1
.end method
