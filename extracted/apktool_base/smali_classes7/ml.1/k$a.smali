.class public Lml/k$a;
.super Lml/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lml/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LIi/L;

.field public final b:LIi/O;

.field public final c:LBi/Y;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lml/k;-><init>()V

    new-instance v0, LIi/L;

    invoke-direct {v0}, LIi/L;-><init>()V

    iput-object v0, p0, Lml/k$a;->a:LIi/L;

    new-instance v0, LIi/O;

    invoke-direct {v0}, LIi/O;-><init>()V

    iput-object v0, p0, Lml/k$a;->b:LIi/O;

    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-static {v0}, LTi/H;->s(LBi/f;)LTi/i;

    move-result-object v0

    iput-object v0, p0, Lml/k$a;->c:LBi/Y;

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .locals 3

    iget-object v0, p0, Lml/k$a;->b:LIi/O;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/w;->update([BII)V

    iget-object p2, p0, Lml/k$a;->b:LIi/O;

    invoke-virtual {p2, p1, v2}, LIi/O;->c([BI)I

    return-void
.end method

.method public b([B[BI)V
    .locals 3

    iget-object v0, p0, Lml/k$a;->a:LIi/L;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/p;->update([BII)V

    iget-object p2, p0, Lml/k$a;->a:LIi/L;

    invoke-virtual {p2, p1, p3}, LIi/L;->c([BI)I

    return-void
.end method

.method public c([B[BII)V
    .locals 7

    new-instance v0, LXi/w0;

    new-instance v1, LXi/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, p3}, LXi/o0;-><init>([BII)V

    const/16 p2, 0x10

    new-array p2, p2, [B

    invoke-direct {v0, v1, p2}, LXi/w0;-><init>(LBi/k;[B)V

    iget-object p2, p0, Lml/k$a;->c:LBi/Y;

    const/4 p3, 0x1

    invoke-interface {p2, p3, v0}, LBi/Y;->a(ZLBi/k;)V

    new-array v2, p4, [B

    iget-object v1, p0, Lml/k$a;->c:LBi/Y;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v4, p4

    move-object v5, p1

    invoke-interface/range {v1 .. v6}, LBi/Y;->f([BII[BI)I

    return-void
.end method
