.class public LSi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/I;


# instance fields
.field public final a:LIi/h;


# direct methods
.method public constructor <init>(LIi/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSi/a;->a:LIi/h;

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 3

    instance-of v0, p1, LXi/o0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v0

    invoke-static {v0}, LXi/d;->e([B)LXi/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    instance-of v1, v0, LXi/d;

    if-eqz v1, :cond_2

    check-cast v0, LXi/d;

    invoke-virtual {v0}, LXi/d;->d()[B

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LSi/a;->a:LIi/h;

    invoke-virtual {p1, v0}, LIi/h;->o(LXi/d;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Blake3Mac requires a key parameter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to Blake3Mac init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LSi/a;->a:LIi/h;

    invoke-virtual {v1}, LIi/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    iget-object v0, p0, LSi/a;->a:LIi/h;

    invoke-virtual {v0, p1, p2}, LIi/h;->c([BI)I

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LSi/a;->a:LIi/h;

    invoke-virtual {v0}, LIi/h;->f()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LSi/a;->a:LIi/h;

    invoke-virtual {v0}, LIi/h;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LSi/a;->a:LIi/h;

    invoke-virtual {v0, p1}, LIi/h;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LSi/a;->a:LIi/h;

    invoke-virtual {v0, p1, p2, p3}, LIi/h;->update([BII)V

    return-void
.end method
