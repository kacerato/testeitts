.class public final LXg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXg/B;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Float;

.field public f:LXg/i;

.field public g:LXg/i;

.field public h:LXg/i;

.field public i:LXg/i;

.field public j:Ljava/lang/Float;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Float;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, p3, v0}, LXg/C;->b(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;F)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/h;->h:LXg/i;

    return-void
.end method

.method public b(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "gain"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LXg/h;->f:LXg/i;

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    if-nez p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_1
    invoke-static {p1, p2}, LXg/j;->c(FF)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/h;->f:LXg/i;

    return-void
.end method

.method public c(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, LXg/C;->b(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;F)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/h;->g:LXg/i;

    return-void
.end method

.method public d(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "boost"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->e:Ljava/lang/Float;

    return-void
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, LXg/h;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, LXg/B;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, LXg/B;

    invoke-virtual {p0}, LXg/h;->q()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->q()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->o()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->o()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->p()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->p()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->m()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->r()Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->r()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->e()Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->e()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->w()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->n()LXg/i;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->n()LXg/i;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->u()LXg/i;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->u()LXg/i;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->getS()LXg/i;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->getS()LXg/i;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->j()LXg/i;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->j()LXg/i;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->v()Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->v()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, LXg/h;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, LXg/B;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imfchan"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->m:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, LXg/C;->b(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;F)LXg/i;

    move-result-object p1

    iput-object p1, p0, LXg/h;->i:LXg/i;

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getS()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/h;->h:LXg/i;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileName"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->a:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 14

    iget-object v0, p0, LXg/h;->b:Ljava/lang/Boolean;

    iget-object v1, p0, LXg/h;->c:Ljava/lang/Boolean;

    iget-object v2, p0, LXg/h;->d:Ljava/lang/Boolean;

    iget-object v3, p0, LXg/h;->l:Ljava/lang/Float;

    iget-object v4, p0, LXg/h;->e:Ljava/lang/Float;

    iget-object v5, p0, LXg/h;->k:Ljava/lang/Boolean;

    iget-object v6, p0, LXg/h;->a:Ljava/lang/String;

    iget-object v7, p0, LXg/h;->m:Ljava/lang/String;

    iget-object v8, p0, LXg/h;->f:LXg/i;

    iget-object v9, p0, LXg/h;->g:LXg/i;

    iget-object v10, p0, LXg/h;->h:LXg/i;

    iget-object v11, p0, LXg/h;->i:LXg/i;

    iget-object v12, p0, LXg/h;->j:Ljava/lang/Float;

    iget-object v13, p0, LXg/h;->n:Ljava/lang/String;

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendu"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public j()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/h;->i:LXg/i;

    return-object v0
.end method

.method public k(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cc"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public l(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blendv"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public m()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/h;->l:Ljava/lang/Float;

    return-object v0
.end method

.method public n()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/h;->f:LXg/i;

    return-object v0
.end method

.method public o()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, LXg/h;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public p()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, LXg/h;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, LXg/h;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public r()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/h;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public s(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texres"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->j:Ljava/lang/Float;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->n:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bm"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->l:Ljava/lang/Float;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextureOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LXg/m;->f(LXg/B;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()LXg/i;
    .locals 1

    iget-object v0, p0, LXg/h;->g:LXg/i;

    return-object v0
.end method

.method public v()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, LXg/h;->j:Ljava/lang/Float;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LXg/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public x(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clamp"
        }
    .end annotation

    iput-object p1, p0, LXg/h;->k:Ljava/lang/Boolean;

    return-void
.end method
