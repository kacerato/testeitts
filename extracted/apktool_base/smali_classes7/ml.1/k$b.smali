.class public Lml/k$b;
.super Lml/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lml/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LIi/N;

.field public final b:LIi/N;

.field public final c:LBi/a0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lml/k;-><init>()V

    new-instance v0, LIi/Q;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lml/k$b;->c:LBi/a0;

    new-instance v0, LIi/N;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    iput-object v0, p0, Lml/k$b;->a:LIi/N;

    new-instance v0, LIi/N;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    iput-object v0, p0, Lml/k$b;->b:LIi/N;

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .locals 3

    iget-object v0, p0, Lml/k$b;->b:LIi/N;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/v;->update([BII)V

    iget-object p2, p0, Lml/k$b;->b:LIi/N;

    invoke-virtual {p2, p1, v2}, LIi/N;->c([BI)I

    return-void
.end method

.method public b([B[BI)V
    .locals 3

    iget-object v0, p0, Lml/k$b;->a:LIi/N;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/v;->update([BII)V

    iget-object p2, p0, Lml/k$b;->a:LIi/N;

    invoke-virtual {p2, p1, p3}, LIi/N;->c([BI)I

    return-void
.end method

.method public c([B[BII)V
    .locals 2

    iget-object v0, p0, Lml/k$b;->c:LBi/a0;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Lml/k$b;->c:LBi/a0;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p3}, LBi/y;->update([BII)V

    iget-object p2, p0, Lml/k$b;->c:LBi/a0;

    invoke-interface {p2, p1, v1, p4}, LBi/a0;->e([BII)I

    return-void
.end method
