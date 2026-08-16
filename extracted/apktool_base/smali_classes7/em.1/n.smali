.class public Lem/n;
.super Lem/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lem/d;-><init>()V

    iget-object v0, p0, Lem/d;->a:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v0, 0x2e

    iput-byte v0, p0, Lem/d;->b:B

    invoke-virtual {p0}, Lem/d;->i()V

    return-void
.end method
