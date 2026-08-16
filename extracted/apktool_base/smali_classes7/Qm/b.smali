.class public abstract LQm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXm/a;


# instance fields
.field public final a:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, LQm/b;->a:C

    return-void
.end method


# virtual methods
.method public a()C
    .locals 1

    iget-char v0, p0, LQm/b;->a:C

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()C
    .locals 1

    iget-char v0, p0, LQm/b;->a:C

    return v0
.end method

.method public d(LXm/b;LXm/b;)I
    .locals 2

    invoke-interface {p1}, LXm/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, LXm/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2}, LXm/b;->b()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    invoke-interface {p1}, LXm/b;->b()I

    move-result v0

    invoke-interface {p2}, LXm/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, LXm/b;->length()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    invoke-interface {p2}, LXm/b;->length()I

    move-result p1

    if-lt p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public e(LUm/A;LUm/A;I)V
    .locals 2

    invoke-virtual {p0}, LQm/b;->c()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    new-instance p3, LUm/j;

    invoke-direct {p3, v0}, LUm/j;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p3, LUm/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, LUm/z;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, LUm/v;->g()LUm/v;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    invoke-virtual {v0}, LUm/v;->g()LUm/v;

    move-result-object v1

    invoke-virtual {p3, v0}, LUm/v;->d(LUm/v;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p3}, LUm/v;->j(LUm/v;)V

    return-void
.end method
