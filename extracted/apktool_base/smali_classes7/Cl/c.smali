.class public LCl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LBi/y;)[B
    .locals 4

    invoke-interface {p0}, LBi/y;->f()I

    move-result v0

    new-array v1, v0, [B

    instance-of v2, p0, LBi/a0;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast p0, LBi/a0;

    invoke-interface {p0, v1, v3, v0}, LBi/a0;->e([BII)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1, v3}, LBi/y;->c([BI)I

    :goto_0
    return-object v1
.end method
