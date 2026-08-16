.class public final Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Sound/Imported/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/io/BufferedOutputStream;

.field public final c:[B

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4000

    .line 3
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->c:[B

    .line 4
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->b:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Lcom/itsmagic/engine/Engines/Sound/Imported/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->d:J

    return-wide v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->b:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public d([SI)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->c:[B

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_0

    add-int v5, v1, v3

    aget-short v5, p1, v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->c:[B

    add-int/lit8 v7, v4, 0x1

    and-int/lit16 v8, v5, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->b:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->c:[B

    invoke-virtual {v3, v5, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v1, v2

    iget-wide v3, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->d:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Sound/Imported/d$e;->d:J

    goto :goto_0

    :cond_1
    return-void
.end method
