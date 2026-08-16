.class public Lorg/eclipse/jdt/internal/core/nd/db/LongString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IString;


# static fields
.field private static final CHARS1:I = 0x8

.field private static final CHARSN:I = 0x4

.field private static final LENGTH:I = 0x0

.field private static final NEXT1:I = 0x4

.field private static final NEXTN:I

.field private static final NUM_CHARS1:I

.field private static final NUM_CHARSN:I


# instance fields
.field private final db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private hash:I

.field private final record:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    add-int/lit8 v1, v0, -0x8

    div-int/lit8 v1, v1, 0x2

    sput v1, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARS1:I

    add-int/lit8 v0, v0, -0x4

    div-int/lit8 v0, v0, 0x2

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARSN:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    .line 3
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;[CZ)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARS1:I

    if-eqz p3, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 6
    :cond_0
    sget v3, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARSN:I

    if-eqz p3, :cond_1

    mul-int/lit8 v3, v3, 0x2

    :cond_1
    move v10, v3

    .line 7
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    .line 8
    sget v3, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    int-to-long v3, v3

    const/4 v11, 0x3

    invoke-virtual {v1, v3, v4, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v12

    iput-wide v12, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    move-object/from16 v14, p2

    .line 9
    array-length v15, v14

    if-eqz p3, :cond_2

    neg-int v3, v15

    goto :goto_0

    :cond_2
    move v3, v15

    .line 10
    :goto_0
    invoke-virtual {v1, v12, v13, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putInt(JI)V

    .line 11
    invoke-virtual {v1, v12, v13}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v3

    const-wide/16 v4, 0x8

    if-eqz p3, :cond_3

    add-long/2addr v4, v12

    const/4 v7, 0x0

    move-object/from16 v6, p2

    move v8, v2

    .line 12
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putCharsAsBytes(J[CII)V

    goto :goto_1

    :cond_3
    add-long/2addr v4, v12

    const/4 v7, 0x0

    move-object/from16 v6, p2

    move v8, v2

    .line 13
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putChars(J[CII)V

    :goto_1
    const-wide/16 v16, 0x4

    add-long v12, v12, v16

    :goto_2
    sub-int v8, v15, v2

    if-gt v8, v10, :cond_6

    if-eqz p3, :cond_4

    move v3, v8

    goto :goto_3

    :cond_4
    mul-int/lit8 v3, v8, 0x2

    :goto_3
    add-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    .line 14
    invoke-virtual {v1, v3, v4, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v3

    .line 15
    invoke-virtual {v1, v12, v13, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    .line 16
    invoke-virtual {v1, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v1

    if-eqz p3, :cond_5

    add-long v4, v3, v16

    move-object v3, v1

    move-object/from16 v6, p2

    move v7, v2

    .line 17
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putCharsAsBytes(J[CII)V

    goto :goto_4

    :cond_5
    add-long v4, v3, v16

    move-object v3, v1

    move-object/from16 v6, p2

    move v7, v2

    .line 18
    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putChars(J[CII)V

    :goto_4
    return-void

    .line 19
    :cond_6
    sget v3, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v11}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v8

    .line 20
    invoke-virtual {v1, v12, v13, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->putRecPtr(JJ)V

    .line 21
    invoke-virtual {v1, v8, v9}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v4

    if-eqz p3, :cond_7

    add-long v5, v8, v16

    move-object/from16 v7, p2

    move-wide v12, v8

    move v8, v2

    move v9, v10

    .line 22
    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putCharsAsBytes(J[CII)V

    goto :goto_5

    :cond_7
    move-wide v12, v8

    add-long v5, v12, v16

    move-object/from16 v7, p2

    move v8, v2

    move v9, v10

    .line 23
    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putChars(J[CII)V

    :goto_5
    add-int/2addr v2, v10

    goto :goto_2
.end method


# virtual methods
.method public compare(Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compare([C[CZ)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/core/nd/db/IString;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compare([C[CZ)I

    move-result p1

    return p1
.end method

.method public compare([CZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compare([C[CZ)I

    move-result p1

    return p1
.end method

.method public compareCompatibleWithIgnoreCase(Lorg/eclipse/jdt/internal/core/nd/db/IString;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compareCompatibleWithIgnoreCase([C[C)I

    move-result p1

    return p1
.end method

.method public compareCompatibleWithIgnoreCase([C)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compareCompatibleWithIgnoreCase([C[C)I

    move-result p1

    return p1
.end method

.method public comparePrefix([CZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->comparePrefix([C[CZ)I

    move-result p1

    return p1
.end method

.method public delete()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v2, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARS1:I

    sget v3, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARSN:I

    if-eqz v1, :cond_1

    neg-int v0, v0

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v4

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    const/4 v8, 0x3

    invoke-virtual {v1, v6, v7, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    sub-int/2addr v0, v2

    :goto_1
    if-gt v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v0, v4, v5, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-void

    :cond_2
    sub-int/2addr v0, v3

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v1, v4, v5}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v1

    iget-object v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v6, v4, v5, v8}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    move-wide v4, v1

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/LongString;

    if-eqz v2, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/db/LongString;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    iget-wide v4, p1, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->compare(Lorg/eclipse/jdt/internal/core/nd/db/IString;Z)I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    instance-of v2, p1, [C

    if-eqz v2, :cond_5

    check-cast p1, [C

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->compare([CZ)I

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_7

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->compare(Ljava/lang/String;Z)I

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_6

    return v0

    :cond_6
    return v1

    :goto_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Ljava/lang/Throwable;)V

    :cond_7
    return v1
.end method

.method public getChars()[C
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v2, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget v3, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARS1:I

    sget v4, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->NUM_CHARSN:I

    if-eqz v2, :cond_1

    neg-int v1, v1

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v4, 0x2

    :cond_1
    move v9, v3

    move v10, v4

    new-array v11, v1, [C

    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v5

    const-wide/16 v6, 0x8

    if-eqz v2, :cond_2

    add-long/2addr v6, v3

    const/4 v8, 0x0

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v11

    move v7, v8

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getCharsFromBytes(J[CII)V

    goto :goto_1

    :cond_2
    add-long/2addr v6, v3

    const/4 v8, 0x0

    move-object v3, v5

    move-wide v4, v6

    move-object v6, v11

    move v7, v8

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getChars(J[CII)V

    :goto_1
    iget-wide v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    const-wide/16 v12, 0x4

    add-long/2addr v3, v12

    :goto_2
    if-lt v9, v1, :cond_3

    return-object v11

    :cond_3
    iget-object v5, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getRecPtr(J)J

    move-result-wide v14

    sub-int v3, v1, v9

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v16

    iget-object v3, v0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    invoke-virtual {v3, v14, v15}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v3

    if-eqz v2, :cond_4

    add-long v4, v14, v12

    move-object v6, v11

    move v7, v9

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getCharsFromBytes(J[CII)V

    goto :goto_3

    :cond_4
    add-long v4, v14, v12

    move-object v6, v11

    move v7, v9

    move/from16 v8, v16

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getChars(J[CII)V

    :goto_3
    add-int v9, v9, v16

    move-wide v3, v14

    goto :goto_2
.end method

.method public getRecord()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    return-wide v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->hash:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->getChars()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->hash:I

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    aget-char v4, v1, v3

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public length()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/LongString;->record:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    return v0
.end method
