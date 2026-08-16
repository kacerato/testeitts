.class public LTl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xa8

.field public static final b:I = 0x88


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BIIS[BII)V
    .locals 4

    new-instance v0, LIi/i;

    int-to-byte v1, p3

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte p3, v2, v1

    const/16 p3, 0x80

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v2}, LIi/i;-><init>(I[B[B)V

    invoke-virtual {v0, p4, p5, p6}, LIi/v;->update([BII)V

    invoke-virtual {v0, p0, p1, p2}, LIi/Q;->e([BII)I

    return-void
.end method

.method public static b([BIIS[BII)V
    .locals 4

    new-instance v0, LIi/i;

    int-to-byte v1, p3

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v1, v2, v3

    const/4 v1, 0x1

    aput-byte p3, v2, v1

    const/16 p3, 0x100

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1, v2}, LIi/i;-><init>(I[B[B)V

    invoke-virtual {v0, p4, p5, p6}, LIi/v;->update([BII)V

    invoke-virtual {v0, p0, p1, p2}, LIi/Q;->e([BII)I

    return-void
.end method

.method public static c([BII[BII)V
    .locals 2

    new-instance v0, LIi/Q;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    invoke-virtual {v0, p3, p4, p5}, LIi/v;->update([BII)V

    invoke-virtual {v0, p0, p1, p2}, LIi/Q;->e([BII)I

    return-void
.end method

.method public static d([BII[BII)V
    .locals 2

    new-instance v0, LIi/Q;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    invoke-virtual {v0, p3, p4, p5}, LIi/v;->update([BII)V

    invoke-virtual {v0, p0, p1, p2}, LIi/Q;->e([BII)I

    return-void
.end method
