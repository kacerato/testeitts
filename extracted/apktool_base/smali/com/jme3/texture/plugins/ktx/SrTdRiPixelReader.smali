.class public Lcom/jme3/texture/plugins/ktx/SrTdRiPixelReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/texture/plugins/ktx/PixelReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readPixels(II[BLjava/nio/ByteBuffer;Ljava/io/DataInput;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ltz p2, :cond_2

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_1

    invoke-interface {p5, p3}, Ljava/io/DataInput;->readFully([B)V

    move v3, v0

    :goto_2
    array-length v4, p3

    if-ge v3, v4, :cond_0

    mul-int v4, p2, p1

    add-int/2addr v4, v2

    array-length v5, p3

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    aget-byte v5, p3, v3

    invoke-virtual {p4, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    array-length v3, p3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method
