.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Sound/Imported/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:D

.field public b:D

.field public c:J

.field public d:S

.field public e:Z

.field public f:[S


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputSampleRate",
            "outputSampleRate"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 3
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->a:D

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 5
    iput-wide p1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->a:D

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(IILcom/itsmagic/engine/Engines/Sound/Imported/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;-><init>(II)V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;[SILcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->e([SILcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V

    return-void
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->c(Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V

    return-void
.end method


# virtual methods
.method public final c(Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-wide v2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b:D

    iget-wide v4, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->c:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    long-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    array-length v3, v2

    if-lt v1, v3, :cond_1

    invoke-interface {p1, v2, v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;->a([SI)V

    move v1, v0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    add-int/lit8 v3, v1, 0x1

    iget-short v4, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->d:S

    aput-short v4, v2, v1

    iget-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b:D

    iget-wide v4, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->a:D

    add-double/2addr v1, v4

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b:D

    move v1, v3

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    invoke-interface {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;->a([SI)V

    :cond_3
    return-void
.end method

.method public final d(SSD)S
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "fraction"
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, p3

    mul-double/2addr v0, v2

    int-to-double p1, p2

    mul-double/2addr p1, p3

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    const/16 p2, 0x7fff

    if-le p1, p2, :cond_0

    return p2

    :cond_0
    const/16 p2, -0x8000

    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    int-to-short p1, p1

    return p1
.end method

.method public final e([SILcom/itsmagic/engine/Engines/Sound/Imported/d$c;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "monoFrames",
            "frames",
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-wide v3, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->c:J

    int-to-long v5, v1

    add-long v7, v3, v5

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    iget-wide v11, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b:D

    const-wide/16 v13, 0x1

    sub-long v13, v7, v13

    long-to-double v13, v13

    cmpg-double v13, v11, v13

    if-gez v13, :cond_4

    long-to-double v13, v3

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    int-to-double v14, v13

    sub-double/2addr v11, v14

    if-gez v13, :cond_2

    iget-boolean v13, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->e:Z

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    iget-short v13, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->d:S

    aget-short v14, p1, v9

    goto :goto_1

    :cond_2
    aget-short v14, p1, v13

    add-int/lit8 v13, v13, 0x1

    aget-short v13, p1, v13

    move/from16 v16, v14

    move v14, v13

    move/from16 v13, v16

    :goto_1
    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    array-length v9, v15

    if-lt v10, v9, :cond_3

    invoke-interface {v2, v15, v10}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;->a([SI)V

    const/4 v10, 0x0

    :cond_3
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v0, v13, v14, v11, v12}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->d(SSD)S

    move-result v11

    aput-short v11, v9, v10

    iget-wide v9, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b:D

    iget-wide v11, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->a:D

    add-double/2addr v9, v11

    iput-wide v9, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->b:D

    move v10, v15

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    :goto_2
    if-lez v10, :cond_5

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->f:[S

    invoke-interface {v2, v3, v10}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$c;->a([SI)V

    :cond_5
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-short v1, p1, v1

    iput-short v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->d:S

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->e:Z

    iget-wide v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->c:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$d;->c:J

    return-void
.end method
