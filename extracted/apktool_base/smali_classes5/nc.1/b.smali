.class public Lnc/b;
.super Lnc/a;
.source "SourceFile"


# instance fields
.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnc/a;-><init>()V

    return-void
.end method

.method public static k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object v0
.end method

.method public static l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lec/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lnc/a;
    .locals 1

    invoke-virtual {p0}, Lnc/b;->j()Lnc/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Lda/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Lnc/a;->b(Lda/b;)V

    instance-of v0, p1, Lpc/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnc/b;->f()V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lpc/a;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lpc/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vfx_pr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lpc/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v1

    iget p1, p1, Lpc/a;->a:I

    invoke-virtual {v1, v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->H(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lpc/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    check-cast p1, Lpc/b;

    iget-object v0, p1, Lpc/b;->b:Lqc/a;

    invoke-virtual {v0}, Lqc/a;->d()[F

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lpc/b;->b:Lqc/a;

    invoke-virtual {v0}, Lqc/a;->f()Lec/f;

    move-result-object v0

    invoke-virtual {v0}, Lec/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v2, p1, Lpc/b;->b:Lqc/a;

    invoke-virtual {v2}, Lqc/a;->f()Lec/f;

    move-result-object v2

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lpc/b;->b:Lqc/a;

    invoke-virtual {v3}, Lqc/a;->d()[F

    move-result-object v3

    iget-object v4, p1, Lpc/b;->b:Lqc/a;

    invoke-virtual {v4}, Lqc/a;->h()I

    move-result v4

    iget-object p1, p1, Lpc/b;->b:Lqc/a;

    invoke-virtual {p1}, Lqc/a;->f()Lec/f;

    move-result-object p1

    invoke-virtual {p1}, Lec/f;->c()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lnc/b;->g(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->x(Ljava/lang/String;[FII)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Lpc/f;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    check-cast p1, Lpc/f;

    iget-object v0, p1, Lpc/f;->b:Lqc/e;

    invoke-virtual {v0}, Lqc/e;->d()[I

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lpc/f;->b:Lqc/e;

    invoke-virtual {v0}, Lqc/e;->f()Lec/f;

    move-result-object v0

    invoke-virtual {v0}, Lec/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v2, p1, Lpc/f;->b:Lqc/e;

    invoke-virtual {v2}, Lqc/e;->f()Lec/f;

    move-result-object v2

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lpc/f;->b:Lqc/e;

    invoke-virtual {v3}, Lqc/e;->d()[I

    move-result-object v3

    iget-object v4, p1, Lpc/f;->b:Lqc/e;

    invoke-virtual {v4}, Lqc/e;->h()I

    move-result v4

    iget-object p1, p1, Lpc/f;->b:Lqc/e;

    invoke-virtual {p1}, Lqc/e;->f()Lec/f;

    move-result-object p1

    invoke-virtual {p1}, Lec/f;->c()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lnc/b;->g(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;[III)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Lpc/c;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    check-cast p1, Lpc/c;

    iget-object v0, p1, Lpc/c;->b:Lqc/b;

    invoke-virtual {v0}, Lqc/b;->d()[F

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lpc/c;->b:Lqc/b;

    invoke-virtual {v0}, Lqc/b;->f()Lec/f;

    move-result-object v0

    invoke-virtual {v0}, Lec/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v2, p1, Lpc/c;->b:Lqc/b;

    invoke-virtual {v2}, Lqc/b;->f()Lec/f;

    move-result-object v2

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lpc/c;->b:Lqc/b;

    invoke-virtual {v3}, Lqc/b;->d()[F

    move-result-object v3

    iget-object v4, p1, Lpc/c;->b:Lqc/b;

    invoke-virtual {v4}, Lqc/b;->i()I

    move-result v4

    iget-object p1, p1, Lpc/c;->b:Lqc/b;

    invoke-virtual {p1}, Lqc/b;->f()Lec/f;

    move-result-object p1

    invoke-virtual {p1}, Lec/f;->c()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lnc/b;->g(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->A(Ljava/lang/String;[FII)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, Lpc/d;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    check-cast p1, Lpc/d;

    iget-object v0, p1, Lpc/d;->b:Lqc/c;

    invoke-virtual {v0}, Lqc/c;->d()[F

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lpc/d;->b:Lqc/c;

    invoke-virtual {v0}, Lqc/c;->f()Lec/f;

    move-result-object v0

    invoke-virtual {v0}, Lec/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v2, p1, Lpc/d;->b:Lqc/c;

    invoke-virtual {v2}, Lqc/c;->f()Lec/f;

    move-result-object v2

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lpc/d;->b:Lqc/c;

    invoke-virtual {v3}, Lqc/c;->d()[F

    move-result-object v3

    iget-object v4, p1, Lpc/d;->b:Lqc/c;

    invoke-virtual {v4}, Lqc/c;->i()I

    move-result v4

    iget-object p1, p1, Lpc/d;->b:Lqc/c;

    invoke-virtual {p1}, Lqc/c;->f()Lec/f;

    move-result-object p1

    invoke-virtual {p1}, Lec/f;->c()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lnc/b;->g(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->D(Ljava/lang/String;[FII)V

    goto :goto_0

    :cond_f
    instance-of v0, p1, Lpc/e;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    check-cast p1, Lpc/e;

    iget-object v0, p1, Lpc/e;->b:Lqc/d;

    invoke-virtual {v0}, Lqc/d;->d()[F

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p1, Lpc/e;->b:Lqc/d;

    invoke-virtual {v0}, Lqc/d;->f()Lec/f;

    move-result-object v0

    invoke-virtual {v0}, Lec/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    iget-object v2, p1, Lpc/e;->b:Lqc/d;

    invoke-virtual {v2}, Lqc/d;->f()Lec/f;

    move-result-object v2

    invoke-virtual {v2}, Lec/f;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lpc/e;->b:Lqc/d;

    invoke-virtual {v3}, Lqc/d;->d()[F

    move-result-object v3

    iget-object v4, p1, Lpc/e;->b:Lqc/d;

    invoke-virtual {v4}, Lqc/d;->i()I

    move-result v4

    iget-object p1, p1, Lpc/e;->b:Lqc/d;

    invoke-virtual {p1}, Lqc/d;->f()Lec/f;

    move-result-object p1

    invoke-virtual {p1}, Lec/f;->c()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Lnc/b;->g(II)I

    move-result p1

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->F(Ljava/lang/String;[FII)V

    :cond_12
    :goto_0
    return-void
.end method

.method public d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentMaterial"
        }
    .end annotation

    invoke-super {p0, p1}, Lnc/a;->d(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;)V

    invoke-virtual {p0}, Lnc/b;->f()V

    return-void
.end method

.method public final f()V
    .locals 12

    invoke-virtual {p0}, Lnc/b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_12

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_b

    :cond_1
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->shaderHash()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Loc/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_b

    :cond_2
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v6

    invoke-static {v4}, Loc/a;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->H(Ljava/lang/String;I)V

    invoke-static {v4}, Loc/a;->j(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    move v6, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqc/e;

    invoke-virtual {v7}, Lqc/e;->d()[I

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lqc/e;->f()Lec/f;

    move-result-object v8

    invoke-virtual {v8}, Lec/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    invoke-virtual {v7}, Lqc/e;->f()Lec/f;

    move-result-object v9

    invoke-virtual {v9}, Lec/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lqc/e;->d()[I

    move-result-object v10

    invoke-virtual {v7}, Lqc/e;->h()I

    move-result v11

    invoke-virtual {v7}, Lqc/e;->f()Lec/f;

    move-result-object v7

    invoke-virtual {v7}, Lec/f;->c()I

    move-result v7

    invoke-virtual {p0, v11, v7}, Lnc/b;->g(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->I(Ljava/lang/String;[III)V

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-static {v4}, Loc/a;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    move v6, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqc/a;

    invoke-virtual {v7}, Lqc/a;->d()[F

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v7}, Lqc/a;->f()Lec/f;

    move-result-object v8

    invoke-virtual {v8}, Lec/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    invoke-virtual {v7}, Lqc/a;->f()Lec/f;

    move-result-object v9

    invoke-virtual {v9}, Lec/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lqc/a;->d()[F

    move-result-object v10

    invoke-virtual {v7}, Lqc/a;->h()I

    move-result v11

    invoke-virtual {v7}, Lqc/a;->f()Lec/f;

    move-result-object v7

    invoke-virtual {v7}, Lec/f;->c()I

    move-result v7

    invoke-virtual {p0, v11, v7}, Lnc/b;->g(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->x(Ljava/lang/String;[FII)V

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v4}, Loc/a;->g(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    move v6, v2

    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqc/b;

    invoke-virtual {v7}, Lqc/b;->d()[F

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Lqc/b;->f()Lec/f;

    move-result-object v8

    invoke-virtual {v8}, Lec/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    invoke-virtual {v7}, Lqc/b;->f()Lec/f;

    move-result-object v9

    invoke-virtual {v9}, Lec/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lqc/b;->d()[F

    move-result-object v10

    invoke-virtual {v7}, Lqc/b;->i()I

    move-result v11

    invoke-virtual {v7}, Lqc/b;->f()Lec/f;

    move-result-object v7

    invoke-virtual {v7}, Lec/f;->c()I

    move-result v7

    invoke-virtual {p0, v11, v7}, Lnc/b;->g(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->A(Ljava/lang/String;[FII)V

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    invoke-static {v4}, Loc/a;->h(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_e

    move v6, v2

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lqc/c;

    invoke-virtual {v7}, Lqc/c;->d()[F

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v7}, Lqc/c;->f()Lec/f;

    move-result-object v8

    invoke-virtual {v8}, Lec/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v8

    invoke-virtual {v7}, Lqc/c;->f()Lec/f;

    move-result-object v9

    invoke-virtual {v9}, Lec/f;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lqc/c;->d()[F

    move-result-object v10

    invoke-virtual {v7}, Lqc/c;->i()I

    move-result v11

    invoke-virtual {v7}, Lqc/c;->f()Lec/f;

    move-result-object v7

    invoke-virtual {v7}, Lec/f;->c()I

    move-result v7

    invoke-virtual {p0, v11, v7}, Lnc/b;->g(II)I

    move-result v7

    invoke-virtual {v8, v9, v10, v7, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->D(Ljava/lang/String;[FII)V

    :cond_d
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    invoke-static {v4}, Loc/a;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VFXEffects/BaseVFXEffect;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_11

    move v5, v2

    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqc/d;

    invoke-virtual {v6}, Lqc/d;->d()[F

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v6}, Lqc/d;->f()Lec/f;

    move-result-object v7

    invoke-virtual {v7}, Lec/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnc/b;->h(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v7

    invoke-virtual {v6}, Lqc/d;->f()Lec/f;

    move-result-object v8

    invoke-virtual {v8}, Lec/f;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lqc/d;->d()[F

    move-result-object v9

    invoke-virtual {v6}, Lqc/d;->i()I

    move-result v10

    invoke-virtual {v6}, Lqc/d;->f()Lec/f;

    move-result-object v6

    invoke-virtual {v6}, Lec/f;->c()I

    move-result v6

    invoke-virtual {p0, v10, v6}, Lnc/b;->g(II)I

    move-result v6

    invoke-virtual {v7, v8, v9, v6, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->F(Ljava/lang/String;[FII)V

    :cond_10
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public final g(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSize",
            "shaderSize"
        }
    .end annotation

    if-gtz p2, :cond_0

    return p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method public final i()Z
    .locals 8

    invoke-virtual {p0}, Lnc/a;->c()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Loc/a;->m()J

    move-result-wide v2

    iget-wide v4, p0, Lnc/b;->b:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public j()Lnc/b;
    .locals 1

    new-instance v0, Lnc/b;

    invoke-direct {v0}, Lnc/b;-><init>()V

    return-object v0
.end method

.method public m(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compiledSceneVFXShaderHash"
        }
    .end annotation

    iput-wide p1, p0, Lnc/b;->b:J

    return-void
.end method
