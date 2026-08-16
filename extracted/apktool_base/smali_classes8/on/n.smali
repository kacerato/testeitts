.class public Lon/n;
.super Lon/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lon/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/zip/ZipFile;Ljava/lang/String;[I)[Lon/m;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "filename",
            "indexToNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lon/b;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    new-array v0, p2, [Lon/m;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aget v5, p3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aget v6, p3, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v7, Lmn/d;

    invoke-direct {v7}, Lmn/d;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v7, Lmn/d;->a:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v7, Lmn/d;->b:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v7, Lmn/d;->c:F

    new-instance v8, Lmn/d;

    invoke-direct {v8}, Lmn/d;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v8, Lmn/d;->a:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v8, Lmn/d;->b:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v2

    iput v2, v8, Lmn/d;->c:F

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    new-instance v9, Lon/m;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lon/m;-><init>(JIILmn/d;Lmn/d;)V

    aput-object v9, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
