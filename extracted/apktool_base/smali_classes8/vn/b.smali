.class public Lvn/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->g()Lnet/jpountz/lz4/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/jpountz/lz4/d;->f([B)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length p1, p1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Lvn/a;->g(I[BILjava/nio/ByteOrder;)I

    array-length p1, v0

    invoke-static {v0, v4, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public b([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lvn/a;->b([BI)I

    move-result v0

    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object v1

    invoke-virtual {v1}, Lnet/jpountz/lz4/i;->d()Lnet/jpountz/lz4/j;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, p1, v2, v0}, Lnet/jpountz/lz4/j;->g([BII)[B

    move-result-object p1

    return-object p1
.end method
