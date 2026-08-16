.class public Lsn/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqn/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BIII)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len",
            "outputlen"
        }
    .end annotation

    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object p3

    invoke-virtual {p3}, Lnet/jpountz/lz4/i;->d()Lnet/jpountz/lz4/j;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lnet/jpountz/lz4/j;->g([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public b([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    invoke-static {}, Lnet/jpountz/lz4/i;->e()Lnet/jpountz/lz4/i;

    move-result-object v0

    invoke-virtual {v0}, Lnet/jpountz/lz4/i;->g()Lnet/jpountz/lz4/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/jpountz/lz4/d;->f([B)[B

    move-result-object p1

    return-object p1
.end method
