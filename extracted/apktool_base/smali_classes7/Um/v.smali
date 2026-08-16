.class public abstract LUm/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LUm/v;

.field public b:LUm/v;

.field public c:LUm/v;

.field public d:LUm/v;

.field public e:LUm/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LUm/v;->a:LUm/v;

    iput-object v0, p0, LUm/v;->b:LUm/v;

    iput-object v0, p0, LUm/v;->c:LUm/v;

    iput-object v0, p0, LUm/v;->d:LUm/v;

    iput-object v0, p0, LUm/v;->e:LUm/v;

    return-void
.end method


# virtual methods
.method public abstract c(LUm/C;)V
.end method

.method public d(LUm/v;)V
    .locals 1

    invoke-virtual {p1}, LUm/v;->o()V

    invoke-virtual {p1, p0}, LUm/v;->m(LUm/v;)V

    iget-object v0, p0, LUm/v;->c:LUm/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, LUm/v;->e:LUm/v;

    iput-object v0, p1, LUm/v;->d:LUm/v;

    iput-object p1, p0, LUm/v;->c:LUm/v;

    goto :goto_0

    :cond_0
    iput-object p1, p0, LUm/v;->b:LUm/v;

    iput-object p1, p0, LUm/v;->c:LUm/v;

    :goto_0
    return-void
.end method

.method public e()LUm/v;
    .locals 1

    iget-object v0, p0, LUm/v;->b:LUm/v;

    return-object v0
.end method

.method public f()LUm/v;
    .locals 1

    iget-object v0, p0, LUm/v;->c:LUm/v;

    return-object v0
.end method

.method public g()LUm/v;
    .locals 1

    iget-object v0, p0, LUm/v;->e:LUm/v;

    return-object v0
.end method

.method public h()LUm/v;
    .locals 1

    iget-object v0, p0, LUm/v;->a:LUm/v;

    return-object v0
.end method

.method public i()LUm/v;
    .locals 1

    iget-object v0, p0, LUm/v;->d:LUm/v;

    return-object v0
.end method

.method public j(LUm/v;)V
    .locals 2

    invoke-virtual {p1}, LUm/v;->o()V

    iget-object v0, p0, LUm/v;->e:LUm/v;

    iput-object v0, p1, LUm/v;->e:LUm/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, LUm/v;->d:LUm/v;

    :cond_0
    iput-object p0, p1, LUm/v;->d:LUm/v;

    iput-object p1, p0, LUm/v;->e:LUm/v;

    iget-object v0, p0, LUm/v;->a:LUm/v;

    iput-object v0, p1, LUm/v;->a:LUm/v;

    iget-object v1, p1, LUm/v;->e:LUm/v;

    if-nez v1, :cond_1

    iput-object p1, v0, LUm/v;->c:LUm/v;

    :cond_1
    return-void
.end method

.method public k(LUm/v;)V
    .locals 2

    invoke-virtual {p1}, LUm/v;->o()V

    iget-object v0, p0, LUm/v;->d:LUm/v;

    iput-object v0, p1, LUm/v;->d:LUm/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, LUm/v;->e:LUm/v;

    :cond_0
    iput-object p0, p1, LUm/v;->e:LUm/v;

    iput-object p1, p0, LUm/v;->d:LUm/v;

    iget-object v0, p0, LUm/v;->a:LUm/v;

    iput-object v0, p1, LUm/v;->a:LUm/v;

    iget-object v1, p1, LUm/v;->d:LUm/v;

    if-nez v1, :cond_1

    iput-object p1, v0, LUm/v;->b:LUm/v;

    :cond_1
    return-void
.end method

.method public l(LUm/v;)V
    .locals 1

    invoke-virtual {p1}, LUm/v;->o()V

    invoke-virtual {p1, p0}, LUm/v;->m(LUm/v;)V

    iget-object v0, p0, LUm/v;->b:LUm/v;

    if-eqz v0, :cond_0

    iput-object p1, v0, LUm/v;->d:LUm/v;

    iput-object v0, p1, LUm/v;->e:LUm/v;

    iput-object p1, p0, LUm/v;->b:LUm/v;

    goto :goto_0

    :cond_0
    iput-object p1, p0, LUm/v;->b:LUm/v;

    iput-object p1, p0, LUm/v;->c:LUm/v;

    :goto_0
    return-void
.end method

.method public m(LUm/v;)V
    .locals 0

    iput-object p1, p0, LUm/v;->a:LUm/v;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, LUm/v;->d:LUm/v;

    if-eqz v0, :cond_0

    iget-object v1, p0, LUm/v;->e:LUm/v;

    iput-object v1, v0, LUm/v;->e:LUm/v;

    goto :goto_0

    :cond_0
    iget-object v1, p0, LUm/v;->a:LUm/v;

    if-eqz v1, :cond_1

    iget-object v2, p0, LUm/v;->e:LUm/v;

    iput-object v2, v1, LUm/v;->b:LUm/v;

    :cond_1
    :goto_0
    iget-object v1, p0, LUm/v;->e:LUm/v;

    if-eqz v1, :cond_2

    iput-object v0, v1, LUm/v;->d:LUm/v;

    goto :goto_1

    :cond_2
    iget-object v1, p0, LUm/v;->a:LUm/v;

    if-eqz v1, :cond_3

    iput-object v0, v1, LUm/v;->c:LUm/v;

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, LUm/v;->a:LUm/v;

    iput-object v0, p0, LUm/v;->e:LUm/v;

    iput-object v0, p0, LUm/v;->d:LUm/v;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LUm/v;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
