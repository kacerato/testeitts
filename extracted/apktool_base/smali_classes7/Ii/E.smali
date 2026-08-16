.class public LIi/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/y;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lfm/b;


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, LBi/y;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LIi/E;->a:Ljava/lang/String;

    new-instance v0, Lfm/b;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    invoke-direct {v0, p1}, Lfm/b;-><init>(I)V

    iput-object v0, p0, LIi/E;->b:Lfm/b;

    return-void
.end method

.method public static a(LBi/y;)LIi/E;
    .locals 1

    new-instance v0, LIi/E;

    invoke-direct {v0, p0}, LIi/E;-><init>(LBi/y;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIi/E;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c([BI)I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, LIi/E;->f()I

    move-result v0

    iget-object v1, p0, LIi/E;->b:Lfm/b;

    invoke-virtual {v1}, Lfm/b;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LIi/E;->b:Lfm/b;

    invoke-virtual {v0, p1, p2}, Lfm/b;->a([BI)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LIi/E;->reset()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Incorrect prehash size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, LIi/E;->reset()V

    throw p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LIi/E;->b:Lfm/b;

    invoke-virtual {v0}, Lfm/b;->c()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, LIi/E;->b:Lfm/b;

    invoke-virtual {v0}, Lfm/b;->d()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LIi/E;->b:Lfm/b;

    invoke-virtual {v0, p1}, Lfm/b;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, LIi/E;->b:Lfm/b;

    invoke-virtual {v0, p1, p2, p3}, Lfm/b;->write([BII)V

    return-void
.end method
