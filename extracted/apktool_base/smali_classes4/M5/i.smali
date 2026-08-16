.class public LM5/i;
.super LL5/b;
.source "SourceFile"


# instance fields
.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LL5/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LM5/i;->i:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    invoke-super {p0}, LL5/b;->a()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->z()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_3

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->v()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%"

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v2}, LL5/b;->n(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    array-length v2, v1

    const/4 v6, 0x4

    const/4 v8, 0x2

    const-string v9, " "

    if-lt v2, v6, :cond_0

    aget-object v2, v1, v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LTc/b;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0xc

    invoke-static {v1, v8}, LTc/b;->Y(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->x()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LL5/b;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->x()F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, LL5/b;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, LL5/b;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, LL5/b;->n(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->s()I

    move-result v1

    int-to-float v2, v0

    int-to-float v6, v1

    div-float/2addr v2, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v2, v4

    float-to-int v0, v2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LL5/b;->o(Ljava/lang/String;)V

    iput-boolean v5, p0, LM5/i;->i:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, LM5/i;->i:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, LL5/b;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, LL5/b;->b()V

    :cond_4
    :goto_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/World/a;->u()F

    move-result v0

    invoke-virtual {p0, v0}, LL5/b;->m(F)V

    return-void
.end method

.method public k()V
    .locals 2

    invoke-super {p0}, LL5/b;->k()V

    const-string v0, ""

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->l0(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LL5/b;->o(Ljava/lang/String;)V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOADING_WORLD:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LL5/b;->n(Ljava/lang/String;)V

    iget-object v0, p0, LL5/b;->b:Ljava/lang/String;

    new-instance v1, LM5/i$a;

    invoke-direct {v1, p0}, LM5/i$a;-><init>(LM5/i;)V

    invoke-static {v0, v1}, LW7/b;->p(Ljava/lang/String;LW7/e;)V

    return-void
.end method
