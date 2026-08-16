.class public Lon/l;
.super Lon/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lon/b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/zip/ZipFile;Ljava/lang/String;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "filename"
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

    add-int/lit8 p2, p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    aput v0, p2, v1

    move v0, v2

    goto :goto_0

    :cond_0
    return-object p2
.end method
