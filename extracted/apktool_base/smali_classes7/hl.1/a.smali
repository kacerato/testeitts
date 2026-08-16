.class public Lhl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B[B[BII)V
    .locals 6

    new-instance v0, LLi/q;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, LLi/q;-><init>(I)V

    new-instance v1, LXi/w0;

    new-instance v2, LXi/o0;

    invoke-direct {v2, p0}, LXi/o0;-><init>([B)V

    invoke-direct {v1, v2, p1}, LXi/w0;-><init>(LBi/k;[B)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, LLi/n0;->a(ZLBi/k;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, LLi/n0;->f([BII[BI)I

    return-void
.end method
