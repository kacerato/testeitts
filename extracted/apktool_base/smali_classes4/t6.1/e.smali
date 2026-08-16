.class public Lt6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/e$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:J

.field public g:Lt6/e$a;

.field public h:Lt6/l;

.field public i:Z


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

    iput-boolean v0, p0, Lt6/e;->i:Z

    invoke-static {p1}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lt6/e;->a:Ljava/lang/String;

    return-void
.end method

.method public static l()J
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

    iget-object v0, p0, Lt6/e;->a:Ljava/lang/String;

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

    iget-object v0, p0, Lt6/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lt6/e;->j()D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, LNc/b;->v0(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lt6/e;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt6/e;->h:Lt6/l;

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt6/e;->h:Lt6/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lt6/l;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lt6/e;->g:Lt6/e$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lt6/e;->b:D

    sub-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lt6/e;->c:D

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, LNc/b;->L(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lt6/e;->c:D

    iget-wide v2, p0, Lt6/e;->d:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lt6/e;->d:D

    iget-wide v2, p0, Lt6/e;->e:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    iput-wide v0, p0, Lt6/e;->e:D

    :cond_1
    iget-wide v0, p0, Lt6/e;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lt6/e;->f:J

    iget-object v0, p0, Lt6/e;->g:Lt6/e$a;

    invoke-interface {v0}, Lt6/e$a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt6/e;->g:Lt6/e$a;

    return-void
.end method

.method public d()D
    .locals 4

    iget-wide v0, p0, Lt6/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lt6/e;->d:D

    long-to-double v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lt6/e;->f:J

    return-wide v0
.end method

.method public f()Lt6/l;
    .locals 1

    iget-object v0, p0, Lt6/e;->h:Lt6/l;

    return-object v0
.end method

.method public g()D
    .locals 2

    iget-wide v0, p0, Lt6/e;->c:D

    return-wide v0
.end method

.method public h()D
    .locals 2

    iget-wide v0, p0, Lt6/e;->e:D

    return-wide v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt6/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()D
    .locals 2

    iget-wide v0, p0, Lt6/e;->d:D

    return-wide v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lt6/e;->i:Z

    return v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lt6/e;->h:Lt6/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lt6/l;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt6/e;->h:Lt6/l;

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lt6/e;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lt6/e;->b:D

    iput-wide v0, p0, Lt6/e;->c:D

    iput-wide v0, p0, Lt6/e;->d:D

    iput-wide v0, p0, Lt6/e;->e:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lt6/e;->f:J

    const/4 p1, 0x0

    iput-object p1, p0, Lt6/e;->g:Lt6/e$a;

    iput-object p1, p0, Lt6/e;->h:Lt6/l;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iput-object p1, p0, Lt6/e;->a:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "UIOpen"
        }
    .end annotation

    iput-boolean p1, p0, Lt6/e;->i:Z

    return-void
.end method

.method public q(IZ)Lt6/l;
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

    iget-object p2, p0, Lt6/e;->h:Lt6/l;

    if-nez p2, :cond_0

    new-instance p2, Lt6/l;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p2, p1}, Lt6/l;-><init>(I)V

    iput-object p2, p0, Lt6/e;->h:Lt6/l;

    :cond_0
    iget-object p1, p0, Lt6/e;->h:Lt6/l;

    return-object p1
.end method

.method public r(Lt6/e$a;)V
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

    iput-object p1, p0, Lt6/e;->g:Lt6/e$a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lt6/e;->b:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Listener can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
