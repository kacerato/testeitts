.class public Lsn/b;
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
    .locals 7
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

    new-array v6, p4, [B

    const/4 v4, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-object v3, v6

    move v5, p4

    invoke-static/range {v0 .. v5}, Lsn/a;->c([BII[BII)I

    return-object v6
.end method

.method public b([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    array-length v0, p1

    invoke-static {v0}, Lsn/a;->a(I)I

    move-result v6

    new-array v0, v6, [B

    array-length v3, p1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lsn/a;->b([BII[BII)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1
.end method
