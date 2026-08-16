.class public Lorg/eclipse/jdt/internal/core/nd/db/ShortString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IString;


# static fields
.field private static final CHARS:I = 0x4

.field private static final LENGTH:I

.field public static final MAX_BYTE_LENGTH:I


# instance fields
.field private final db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

.field private hash:I

.field private final record:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lorg/eclipse/jdt/internal/core/nd/db/Database;->MAX_SINGLE_BLOCK_MALLOC_SIZE:I

    add-int/lit8 v0, v0, -0x4

    sput v0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->MAX_BYTE_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    .line 3
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/db/Database;[CZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    array-length v5, p2

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    if-eqz p3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v5, 0x2

    :goto_0
    const/4 v1, 0x4

    add-int/2addr v0, v1

    int-to-long v2, v0

    .line 7
    invoke-virtual {p1, v2, v3, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->malloc(JS)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    .line 8
    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object p1

    if-eqz p3, :cond_1

    neg-int v2, v5

    goto :goto_1

    :cond_1
    move v2, v5

    .line 9
    :goto_1
    invoke-virtual {p1, v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putInt(JI)V

    const-wide/16 v2, 0x4

    add-long v1, v0, v2

    if-eqz p3, :cond_2

    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putCharsAsBytes(J[CII)V

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move-object v0, p1

    move-object v3, p2

    .line 11
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->putChars(J[CII)V

    :goto_2
    return-void
.end method

.method public static compare([C[CZ)I
    .locals 4

    .line 1
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    .line 2
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0

    .line 3
    :cond_0
    aget-char v2, p0, v1

    aget-char v3, p1, v1

    invoke-static {v2, v3, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compareChars(CCZ)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static compareChars(CCZ)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p2, :cond_1

    if-ge p0, p1, :cond_0

    return v1

    :cond_0
    if-le p0, p1, :cond_5

    return v0

    :cond_1
    if-eq p0, p1, :cond_5

    const/16 p2, 0x7a

    const/16 v2, 0x61

    if-lt p0, v2, :cond_2

    if-gt p0, p2, :cond_2

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    :cond_2
    if-lt p1, v2, :cond_3

    if-gt p1, p2, :cond_3

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    :cond_3
    if-ge p0, p1, :cond_4

    return v1

    :cond_4
    if-le p0, p1, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static compareCompatibleWithIgnoreCase([C[C)I
    .locals 7

    .line 3
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_1

    .line 4
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p0

    :cond_0
    return v3

    .line 5
    :cond_1
    aget-char v4, p0, v2

    .line 6
    aget-char v5, p1, v2

    if-eq v4, v5, :cond_4

    .line 7
    invoke-static {v4, v5, v1}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compareChars(CCZ)I

    move-result v6

    if-eqz v6, :cond_2

    return v6

    :cond_2
    if-nez v3, :cond_4

    if-ge v4, v5, :cond_3

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static comparePrefix([C[CZ)I
    .locals 5

    .line 2
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    .line 3
    array-length p0, p0

    array-length p1, p1

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return v1

    .line 4
    :cond_1
    aget-char v3, p0, v2

    aget-char v4, p1, v2

    invoke-static {v3, v4, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compareChars(CCZ)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

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

    .line 5
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

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

    .line 4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compare([C[CZ)I

    move-result p1

    return p1
.end method

.method public compareCompatibleWithIgnoreCase(Lorg/eclipse/jdt/internal/core/nd/db/IString;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/eclipse/jdt/internal/core/nd/db/IString;->getChars()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->compareCompatibleWithIgnoreCase([C)I

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
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

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

    .line 1
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->comparePrefix([C[CZ)I

    move-result p1

    return p1
.end method

.method public delete()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->free(JS)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;

    if-eqz v2, :cond_3

    check-cast p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-object v3, p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    if-ne v2, v3, :cond_1

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    iget-wide v5, p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v0

    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v3, p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v2

    iget-wide v3, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt(J)I

    move-result v0

    iget-wide v3, p1, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt(J)I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result p1

    return p1

    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->length()I

    move-result v0

    array-length v2, p1

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result p1

    return p1

    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/util/CharArrayUtils;->equals([C[C)Z

    move-result p1
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :goto_0
    invoke-static {p1}, Lorg/eclipse/jdt/internal/core/nd/db/Package;->log(Ljava/lang/Throwable;)V

    :cond_7
    return v1
.end method

.method public getChars()[C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getChunk(J)Lorg/eclipse/jdt/internal/core/nd/db/Chunk;

    move-result-object v3

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    new-array v1, v8, [C

    const-wide/16 v4, 0x4

    if-gez v0, :cond_0

    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    add-long/2addr v4, v6

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getCharsFromBytes(J[CII)V

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    add-long/2addr v4, v6

    const/4 v7, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jdt/internal/core/nd/db/Chunk;->getChars(J[CII)V

    :goto_0
    return-object v1
.end method

.method public getRecord()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

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

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->hash:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getChars()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->hash:I

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

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->db:Lorg/eclipse/jdt/internal/core/nd/db/Database;

    iget-wide v1, p0, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->record:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/db/Database;->getInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/nd/db/ShortString;->getString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/core/nd/db/IndexException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
