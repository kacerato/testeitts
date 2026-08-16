.class public LL8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "mjp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;LL8/c;F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "frame",
            "frameWeight"
        }
    .end annotation

    sget-object v0, LL8/a$a;->a:[I

    invoke-virtual {p1}, LL8/c;->p()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_d

    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, LL8/c;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setImageFromAnimation(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {p1}, LL8/c;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getSquare5FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->n(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto :goto_0

    :cond_1
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->n(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    invoke-static {v1}, LNc/b;->j1(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {v3}, LNc/b;->j1(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    invoke-static {v4}, LNc/b;->j1(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result v6

    sub-int/2addr v0, v6

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v5, v0

    invoke-static {v5}, LNc/b;->j1(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v2, v1, v3, v4, p2}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->m(IIII)V

    :goto_0
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setSquare5FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getQuatFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    :cond_3
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_4

    invoke-virtual {p1}, LL8/c;->n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, LL8/c;->n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    invoke-static {v0, v1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->j(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    :goto_1
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setQuatFromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getColorFromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    :cond_5
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_6

    invoke-virtual {p1}, LL8/c;->d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, LL8/c;->d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    invoke-static {v0, v1, p2, v0}, LQ8/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :goto_2
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setColorFromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getIntFromAnimation(Ljava/lang/String;)I

    move-result v0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_7

    invoke-virtual {p1}, LL8/c;->k()I

    move-result p2

    goto :goto_3

    :cond_7
    int-to-float v1, v0

    invoke-virtual {p1}, LL8/c;->k()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v1, v0

    invoke-static {v1}, LNc/b;->j1(F)F

    move-result p2

    float-to-int p2, p2

    :goto_3
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setIntFromAnimation(Ljava/lang/String;I)V

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getFloatFromAnimation(Ljava/lang/String;)F

    move-result v0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_8

    invoke-virtual {p1}, LL8/c;->h()F

    move-result p2

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, LL8/c;->h()F

    move-result v1

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float p2, v0, v1

    :goto_4
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setFloatFromAnimation(Ljava/lang/String;F)V

    goto :goto_7

    :pswitch_6
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec2FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    :cond_9
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_a

    invoke-virtual {p1}, LL8/c;->q()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, LL8/c;->q()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-static {v0, v1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :goto_5
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setVec2FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_7

    :pswitch_7
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getVec3FromAnimation(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :cond_b
    cmpl-float v1, p2, v1

    if-ltz v1, :cond_c

    invoke-virtual {p1}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-static {v0, v1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_6
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setVec3FromAnimation(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_d
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(LL8/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instant"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL8/c;

    :try_start_0
    iget-object v2, v1, LL8/c;->s:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, LL8/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, LL8/c;->c()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->B(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(LL8/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LL8/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instant",
            "animationPlayerObject",
            "cache"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LL8/a;->e(LL8/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LL8/e;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Z

    return-void
.end method

.method public static e(LL8/b;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LL8/e;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instant",
            "animationPlayerObject",
            "cache",
            "mjp"
        }
    .end annotation

    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz v0, :cond_5

    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LL8/c;

    invoke-virtual {v3}, LL8/c;->l()LAc/b;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, p3}, LL8/c;->y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_3

    :cond_0
    invoke-static {p0, v3}, LL8/a;->h(LL8/b;LL8/c;)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_1

    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, p3}, LL8/c;->y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v3}, LL8/c;->l()LAc/b;

    move-result-object v5

    invoke-virtual {p2, p1, v5}, LL8/e;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v5

    invoke-static {v5}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->allowAnimations:Z

    if-eqz v6, :cond_4

    invoke-virtual {v3}, LL8/c;->e()LAc/b;

    move-result-object v6

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Animation/a;->a:LAc/b;

    invoke-virtual {v6, v7}, LAc/b;->W(LAc/b;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5, v3, v4, p3}, LL8/a;->f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LL8/c;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, LL8/c;->e()LAc/b;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, LL8/e;->a(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LAc/b;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6, v3, v4}, LL8/a;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;LL8/c;F)V

    :cond_3
    :goto_1
    invoke-virtual {v3}, LL8/c;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, LL8/c;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lc8/b;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object v5, v3, LL8/c;->s:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    return v2
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LL8/c;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "object",
            "frame",
            "frameWeight",
            "mjp"
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "s"

    const/4 v2, 0x1

    const-string v3, "r"

    const/4 v4, 0x0

    const-string v5, "p"

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, p2, v7

    if-ltz v7, :cond_3

    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v6

    goto :goto_1

    :pswitch_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, LL8/c;->n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_2

    :pswitch_6
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, LL8/c;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const-class v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    packed-switch v9, :pswitch_data_2

    :goto_3
    :pswitch_7
    move v0, v6

    goto :goto_4

    :pswitch_8
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_3

    :pswitch_9
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :pswitch_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v4

    :cond_6
    :goto_4
    packed-switch v0, :pswitch_data_3

    goto :goto_5

    :pswitch_b
    invoke-static {v8, p3}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-static {v0, p1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setScale(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v0, p3}, LL8/a;->g(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_5

    :pswitch_c
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p3}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1}, LL8/c;->n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-static {v0, p1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->j(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x3(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-static {v0, p3}, LL8/a;->g(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_5

    :pswitch_d
    invoke-static {v8, p3}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-static {v0, p1, p2, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v0, p3}, LL8/a;->g(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x70
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static g(Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "mjp"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static h(LL8/b;LL8/c;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instant",
            "frame"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, LL8/c;->s()F

    move-result v1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    cmpg-float v2, v1, v0

    if-gtz v2, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, LL8/b;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LL8/c;->l()LAc/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LL8/b;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object p0

    invoke-virtual {p1}, LL8/c;->l()LAc/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->f(LAc/b;)F

    move-result p0

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    mul-float/2addr v1, p0

    :cond_2
    invoke-static {v1}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;FLL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "from",
            "to",
            "blend",
            "resultantFrame",
            "mjp"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->f()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->f()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p3

    :cond_0
    sget-object v0, LL8/a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->p(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->p(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Ljava/lang/String;

    move-result-object p5

    if-nez p0, :cond_1

    if-nez p5, :cond_1

    invoke-virtual {p4, v1}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, p5

    :goto_0
    invoke-virtual {p4, p0}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_3
    if-eqz p5, :cond_4

    move-object p0, p5

    :cond_4
    invoke-virtual {p4, p0}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->F(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p0

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->F(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p5

    if-nez p0, :cond_5

    if-nez p5, :cond_5

    invoke-virtual {p4, v1}, LL8/c;->O(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto/16 :goto_9

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v0

    :goto_1
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v1

    :goto_2
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v2

    goto :goto_3

    :cond_8
    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v2

    :goto_3
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result p0

    goto :goto_4

    :cond_9
    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result p0

    :goto_4
    if-eqz p5, :cond_a

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v3

    goto :goto_5

    :cond_a
    move v3, v0

    :goto_5
    if-eqz p5, :cond_b

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v4

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    if-eqz p5, :cond_c

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v5

    goto :goto_7

    :cond_c
    move v5, v2

    :goto_7
    if-eqz p5, :cond_d

    invoke-virtual {p5}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result p5

    goto :goto_8

    :cond_d
    move p5, p0

    :goto_8
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    int-to-float v7, v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p3

    add-float/2addr v7, v0

    invoke-static {v7}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v3, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, p3

    add-float/2addr v3, v1

    invoke-static {v3}, LNc/b;->j1(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v3, v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v2, p3

    add-float/2addr v3, v2

    invoke-static {v3}, LNc/b;->j1(F)F

    move-result v2

    float-to-int v2, v2

    int-to-float v3, p0

    sub-int/2addr p5, p0

    int-to-float p0, p5

    mul-float/2addr p0, p3

    add-float/2addr v3, p0

    invoke-static {v3}, LNc/b;->j1(F)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v6, v0, v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>(IIII)V

    invoke-virtual {p4, v6}, LL8/c;->O(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto/16 :goto_9

    :pswitch_2
    const-class p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p0, p5}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->s(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p5

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->s(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v1

    invoke-static {p5, v0, p3, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->j(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p4, p0}, LL8/c;->N(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto/16 :goto_9

    :pswitch_3
    const-class p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p0, p5}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p5

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->a(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    invoke-static {p5, v0, p3, p0}, LQ8/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p4, p0}, LL8/c;->C(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_9

    :pswitch_4
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->q(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I

    move-result p0

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->q(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)I

    move-result p5

    int-to-float v0, p0

    sub-int/2addr p5, p0

    int-to-float p0, p5

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    invoke-static {v0}, LNc/b;->j1(F)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p4, p0}, LL8/c;->K(I)V

    goto :goto_9

    :pswitch_5
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->c(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)F

    move-result p0

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->c(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)F

    move-result p5

    sub-float/2addr p5, p0

    mul-float/2addr p5, p3

    add-float/2addr p0, p5

    invoke-virtual {p4, p0}, LL8/c;->H(F)V

    goto :goto_9

    :pswitch_6
    invoke-static {v0, p5}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->G(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p5

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->G(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->M0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-static {p5, v0, p3, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p4, p0}, LL8/c;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_9

    :pswitch_7
    invoke-static {v0, p5}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->G(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p5

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->G(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->M0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    invoke-static {p5, v0, p3, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p4, p0}, LL8/c;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_9

    :pswitch_8
    const-class p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p0, p5}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->H(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p5

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->H(Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->zero()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-static {p5, v0, p3, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p4, p0}, LL8/c;->R(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :goto_9
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result p0

    invoke-virtual {p4, p0}, LL8/c;->M(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->r()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_10

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->d()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->d()F

    move-result p2

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p4, p0}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, LL8/c;->B(F)V

    const/4 p0, 0x1

    invoke-virtual {p4, p0}, LL8/c;->G(Z)V

    goto :goto_a

    :cond_e
    if-eqz p1, :cond_f

    if-nez p2, :cond_f

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result p0

    invoke-virtual {p4, p0}, LL8/c;->M(I)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->d()F

    move-result p1

    invoke-virtual {p4, p0}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, LL8/c;->B(F)V

    goto :goto_a

    :cond_f
    if-nez p1, :cond_10

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result p0

    invoke-virtual {p4, p0}, LL8/c;->M(I)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->d()F

    move-result p1

    invoke-virtual {p4, p0}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, LL8/c;->B(F)V

    :cond_10
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;ILL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "from",
            "to",
            "frametime",
            "resultantFrame",
            "mjp"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v3, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LL8/a;->i(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;FLL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LL8/a;->i(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;FLL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LL8/a;->i(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;FLL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;I)LL8/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animation",
            "frameTime"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LL8/a;->l(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;ILcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;ILcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "animation",
            "frameTime",
            "mjp"
        }
    .end annotation

    const-class v0, LL8/b;

    invoke-static {v0, p2}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL8/b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationData;->l()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;

    invoke-static {v2, p1, p2}, LL8/a;->m(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;ILcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/c;

    move-result-object v2

    invoke-virtual {v0}, LL8/b;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;ILcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/c;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "timeline",
            "frameTime",
            "mjp"
        }
    .end annotation

    const-class v0, LL8/c;

    invoke-static {v0, p2}, LL8/a;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL8/c;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->P(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->d()LAc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->D(LAc/b;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->i()LAc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->L(LAc/b;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->g()LAc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->J(LAc/b;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->f()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v2, :cond_2

    add-int v4, v3, v2

    ushr-int/lit8 v4, v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v5

    if-ge v5, p1, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    if-lez v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;

    move-object v3, v1

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;->i()I

    move-result v1

    if-ne v1, p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    const/4 p0, 0x0

    move-object v2, v3

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, LL8/a;->j(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;ILL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-object v0

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    const/4 p0, 0x0

    move-object v2, v3

    move-object v3, p0

    move v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, LL8/a;->j(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;ILL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-object v0

    :cond_6
    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, v4

    move v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, LL8/a;->j(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;ILL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/Timeline;->j()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    move-object v2, v4

    move v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, LL8/a;->j(Lcom/itsmagic/engine/Engines/Engine/Animation/c;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;Lcom/itsmagic/engine/Engines/Engine/Animation/Frame;ILL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :cond_8
    :goto_3
    return-object v0
.end method
