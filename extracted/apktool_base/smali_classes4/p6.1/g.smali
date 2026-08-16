.class public Lp6/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp6/g$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public c:D

.field public d:Lp6/g$a;

.field public e:Lp6/j;

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lp6/g;->f:Z

    invoke-static {p1}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp6/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static h()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lp6/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "tab"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp6/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lp6/g;->e()D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp6/g;->e:Lp6/j;

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lp6/g;->e:Lp6/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lp6/j;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lp6/g;->d:Lp6/g$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lp6/g;->b:D

    sub-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lp6/g;->c:D

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, LNc/b;->L(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lp6/g;->c:D

    iget-object v0, p0, Lp6/g;->d:Lp6/g$a;

    invoke-interface {v0}, Lp6/g$a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp6/g;->d:Lp6/g$a;

    return-void
.end method

.method public d()Lp6/j;
    .locals 1

    iget-object v0, p0, Lp6/g;->e:Lp6/j;

    return-object v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lp6/g;->c:D

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp6/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lp6/g;->f:Z

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lp6/g;->e:Lp6/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp6/j;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lp6/g;->e:Lp6/j;

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lp6/g;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lp6/g;->b:D

    iput-wide v0, p0, Lp6/g;->c:D

    const/4 p1, 0x0

    iput-object p1, p0, Lp6/g;->d:Lp6/g$a;

    iput-object p1, p0, Lp6/g;->e:Lp6/j;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lp6/g;->f:Z

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lp6/g;->a:Ljava/lang/String;

    return-void
.end method

.method public l(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UIOpen"
        }
    .end annotation

    iput-boolean p1, p0, Lp6/g;->f:Z

    return-void
.end method

.method public m(IZ)Lp6/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "depth",
            "incrementCount"
        }
    .end annotation

    iget-object p2, p0, Lp6/g;->e:Lp6/j;

    if-nez p2, :cond_0

    new-instance p2, Lp6/j;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p2, p1}, Lp6/j;-><init>(I)V

    iput-object p2, p0, Lp6/g;->e:Lp6/j;

    :cond_0
    iget-object p1, p0, Lp6/g;->e:Lp6/j;

    return-object p1
.end method

.method public n(Lp6/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lp6/g;->d:Lp6/g$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lp6/g;->b:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
