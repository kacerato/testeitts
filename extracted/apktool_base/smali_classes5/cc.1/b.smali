.class public Lcc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lec/h;

.field public final c:Lec/i;

.field public d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

.field public e:Lec/i;

.field public f:Lec/e;


# direct methods
.method public constructor <init>(Lec/h;Ljava/util/List;Lec/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shaderVarianceHandler",
            "params",
            "defaultVariance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lec/h;",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Lec/i;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcc/b;->b:Lec/h;

    iput-object p2, p0, Lcc/b;->a:Ljava/util/List;

    iput-object p3, p0, Lcc/b;->c:Lec/i;

    return-void
.end method

.method public static b(Lcc/b;)Lcc/b;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderPass"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcc/b;

    iget-object v1, p0, Lcc/b;->b:Lec/h;

    iget-object v2, p0, Lcc/b;->a:Ljava/util/List;

    iget-object p0, p0, Lcc/b;->c:Lec/i;

    invoke-direct {v0, v1, v2, p0}, Lcc/b;-><init>(Lec/h;Ljava/util/List;Lec/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matName"
        }
    .end annotation

    iget-object v0, p0, Lcc/b;->f:Lec/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcc/b;->c:Lec/i;

    invoke-virtual {p0, v0, p1}, Lcc/b;->n(Lec/i;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcc/b;->b:Lec/h;

    invoke-virtual {v0}, Lec/h;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcc/b;->e:Lec/i;

    invoke-virtual {p0, v0, p1}, Lcc/b;->n(Lec/i;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lec/h;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lec/i;
    .locals 1

    iget-object v0, p0, Lcc/b;->c:Lec/i;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .locals 1

    iget-object v0, p0, Lcc/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    return-object v0
.end method

.method public f()Lec/e;
    .locals 1

    iget-object v0, p0, Lcc/b;->f:Lec/e;

    return-object v0
.end method

.method public g()Lec/i;
    .locals 1

    iget-object v0, p0, Lcc/b;->e:Lec/i;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lec/h;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lec/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lec/h;->v(Lec/i;)Z

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lec/h;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Lec/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lec/h;->C(Lec/i;)Z

    return-void
.end method

.method public l(Lec/i;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variance"
        }
    .end annotation

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lec/h;->C(Lec/i;)Z

    move-result p1

    return p1
.end method

.method public m(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    invoke-virtual {v0, p1, p2}, Lec/h;->H(Ljava/lang/String;Z)V

    return-void
.end method

.method public n(Lec/i;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variance",
            "matName"
        }
    .end annotation

    iput-object p1, p0, Lcc/b;->e:Lec/i;

    iget-object v0, p0, Lcc/b;->b:Lec/h;

    invoke-virtual {v0, p1, p2}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object p1

    iput-object p1, p0, Lcc/b;->f:Lec/e;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcc/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object p1, p0, Lcc/b;->b:Lec/h;

    invoke-virtual {p1}, Lec/h;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcc/b;->b:Lec/h;

    invoke-virtual {p1}, Lec/h;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcc/b;->b:Lec/h;

    const-string p2, "Failed to create material shader"

    invoke-virtual {p1, p2}, Lec/h;->I(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p1}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object p1

    iput-object p1, p0, Lcc/b;->d:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const/4 p1, 0x1

    return p1
.end method
