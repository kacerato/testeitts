.class public Lcl/p$a;
.super Lcl/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:LIi/L;

.field public final c:LIi/O;

.field public final d:LBi/Y;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcl/p;-><init>(I)V

    new-instance v0, LIi/L;

    invoke-direct {v0}, LIi/L;-><init>()V

    iput-object v0, p0, Lcl/p$a;->b:LIi/L;

    new-instance v0, LIi/O;

    invoke-direct {v0}, LIi/O;-><init>()V

    iput-object v0, p0, Lcl/p$a;->c:LIi/O;

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-static {v0}, LTi/H;->s(LBi/f;)LTi/i;

    move-result-object v0

    iput-object v0, p0, Lcl/p$a;->d:LBi/Y;

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .locals 2

    iget-object v0, p0, Lcl/p$a;->c:LIi/O;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcl/p$a;->h(LBi/D;[B[BI)V

    return-void
.end method

.method public b([B[BI)V
    .locals 1

    iget-object v0, p0, Lcl/p$a;->b:LIi/L;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcl/p$a;->h(LBi/D;[B[BI)V

    return-void
.end method

.method public c([B[B)V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lcl/p$a;->b:LIi/L;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Lcl/p$a;->h(LBi/D;[B[BI)V

    array-length p2, p1

    invoke-static {v0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public d([B[BB)V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    new-instance p3, LXi/w0;

    new-instance v2, LXi/o0;

    const/16 v3, 0x20

    invoke-direct {v2, p2, v1, v3}, LXi/o0;-><init>([BII)V

    invoke-direct {p3, v2, v0}, LXi/w0;-><init>(LBi/k;[B)V

    iget-object p2, p0, Lcl/p$a;->d:LBi/Y;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p3}, LBi/Y;->a(ZLBi/k;)V

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lcl/p$a;->g([BII)V

    return-void
.end method

.method public e([BBB)V
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p3, v0, p2

    new-instance p3, LXi/w0;

    new-instance v2, LXi/o0;

    const/16 v3, 0x20

    invoke-direct {v2, p1, v1, v3}, LXi/o0;-><init>([BII)V

    invoke-direct {p3, v2, v0}, LXi/w0;-><init>(LBi/k;[B)V

    iget-object p1, p0, Lcl/p$a;->d:LBi/Y;

    invoke-interface {p1, p2, p3}, LBi/Y;->a(ZLBi/k;)V

    return-void
.end method

.method public f([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcl/p$a;->g([BII)V

    return-void
.end method

.method public final g([BII)V
    .locals 6

    new-array v1, p3, [B

    iget-object v0, p0, Lcl/p$a;->d:LBi/Y;

    const/4 v2, 0x0

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, LBi/Y;->f([BII[BI)I

    return-void
.end method

.method public final h(LBi/D;[B[BI)V
    .locals 2

    array-length v0, p3

    const/4 v1, 0x0

    invoke-interface {p1, p3, v1, v0}, LBi/y;->update([BII)V

    invoke-interface {p1, p2, p4}, LBi/y;->c([BI)I

    return-void
.end method
