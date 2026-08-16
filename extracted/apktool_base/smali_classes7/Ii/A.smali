.class public LIi/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/D;


# instance fields
.field public a:LBi/D;


# direct methods
.method public constructor <init>(LBi/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, LIi/A;->a:LBi/D;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseDigest must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0}, LBi/y;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0, p1, p2}, LBi/y;->c([BI)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0}, LBi/D;->i()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LIi/A;->a:LBi/D;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
