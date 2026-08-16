.class public LL8/d;
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

.method public static b(LL8/b;FLjava/util/Map;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "baseWeight",
            "framesByID",
            "outputFrames",
            "mjp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LL8/b;",
            "F",
            "Ljava/util/Map<",
            "LAc/b;",
            "LL8/c;",
            ">;",
            "Ljava/util/List<",
            "LL8/c;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, LL8/b;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LL8/c;

    invoke-static {v2, p0, p1}, LL8/d;->d(LL8/c;LL8/b;F)F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    if-gtz v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, LL8/c;->j()LAc/b;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LL8/c;

    if-nez v5, :cond_1

    invoke-static {v2, p4}, LL8/d;->c(LL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/c;

    move-result-object v2

    invoke-virtual {v2, v3}, LL8/c;->S(F)V

    invoke-virtual {v2}, LL8/c;->j()LAc/b;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, LL8/c;->s()F

    move-result v6

    add-float/2addr v6, v3

    cmpg-float v4, v6, v4

    if-gtz v4, :cond_2

    invoke-interface {p3, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v5}, LL8/c;->j()LAc/b;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, p4}, LL8/c;->y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    goto :goto_2

    :cond_2
    const-class v4, LL8/c;

    invoke-static {v4, p4}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LL8/c;

    div-float/2addr v3, v6

    invoke-static {v3}, LNc/b;->I(F)F

    move-result v3

    invoke-static {v5, v2, v4, v3, p4}, LL8/d;->g(LL8/c;LL8/c;LL8/c;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    invoke-static {v6}, LNc/b;->I(F)F

    move-result v2

    invoke-virtual {v4, v2}, LL8/c;->S(F)V

    invoke-virtual {v4}, LL8/c;->j()LAc/b;

    move-result-object v2

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-interface {p3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v5, p4}, LL8/c;->y(Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static c(LL8/c;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "mjp"
        }
    .end annotation

    const-class v0, LL8/c;

    invoke-static {v0, p1}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL8/c;

    invoke-virtual {p0}, LL8/c;->j()LAc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->J(LAc/b;)V

    invoke-virtual {p0}, LL8/c;->l()LAc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->L(LAc/b;)V

    invoke-virtual {p0}, LL8/c;->e()LAc/b;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->D(LAc/b;)V

    invoke-virtual {p0}, LL8/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, LL8/c;->p()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->P(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    invoke-virtual {p0}, LL8/c;->m()I

    move-result v1

    invoke-virtual {v0, v1}, LL8/c;->M(I)V

    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p0}, LL8/c;->c()F

    move-result v1

    invoke-virtual {v0, v1}, LL8/c;->B(F)V

    invoke-virtual {p0}, LL8/c;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, LL8/c;->G(Z)V

    invoke-virtual {p0}, LL8/c;->s()F

    move-result v1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    invoke-virtual {v0, v1}, LL8/c;->S(F)V

    invoke-virtual {p0}, LL8/c;->p()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, LL8/d$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, LL8/c;->i()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, LL8/c;->o()Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>()V

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->n(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    invoke-virtual {v0, p1}, LL8/c;->O(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, LL8/c;->d()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    if-eqz p0, :cond_1

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1, p1}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    invoke-virtual {v0, p1}, LL8/c;->C(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, LL8/c;->n()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    if-eqz p0, :cond_1

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v1, p1}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {v0, p1}, LL8/c;->N(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, LL8/c;->q()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    if-eqz p0, :cond_1

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v1, p1}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {v0, p1}, LL8/c;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, LL8/c;->r()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    if-eqz p0, :cond_1

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v1, p1}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, LL8/c;->R(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, LL8/c;->k()I

    move-result p0

    invoke-virtual {v0, p0}, LL8/c;->K(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, LL8/c;->h()F

    move-result p0

    invoke-virtual {v0, p0}, LL8/c;->H(F)V

    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(LL8/c;LL8/b;F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "instant",
            "baseWeight"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    cmpg-float v1, p2, v0

    if-gtz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, LL8/c;->s()F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, LL8/b;->b()Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, LL8/c;->l()LAc/b;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, LL8/c;->l()LAc/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Animation/AnimationMask;->f(LAc/b;)F

    move-result p0

    invoke-static {p0}, LNc/b;->I(F)F

    move-result p0

    goto :goto_1

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr p2, v0

    mul-float/2addr p2, p0

    invoke-static {p2}, LNc/b;->I(F)F

    move-result p0

    return p0
.end method

.method public static e(LL8/b;LL8/b;F)LL8/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "blend"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, LL8/d;->f(LL8/b;LL8/b;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(LL8/b;LL8/b;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)LL8/b;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "blend",
            "mjp"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const-class v0, LL8/b;

    invoke-static {v0, p3}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL8/b;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    invoke-static {p0, v3, v1, v2, p3}, LL8/d;->b(LL8/b;FLjava/util/Map;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    invoke-static {p1, p2, v1, v2, p3}, LL8/d;->b(LL8/b;FLjava/util/Map;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    invoke-virtual {v0}, LL8/b;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LL8/c;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b cant\' be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "a cant\' be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(LL8/c;LL8/c;LL8/c;FLcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "to",
            "resultantFrame",
            "blend",
            "mjp"
        }
    .end annotation

    invoke-virtual {p0}, LL8/c;->j()LAc/b;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->J(LAc/b;)V

    invoke-virtual {p0}, LL8/c;->l()LAc/b;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->L(LAc/b;)V

    invoke-virtual {p0}, LL8/c;->e()LAc/b;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->D(LAc/b;)V

    invoke-virtual {p0}, LL8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->E(Ljava/lang/String;)V

    invoke-virtual {p0}, LL8/c;->p()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->P(Lcom/itsmagic/engine/Engines/Engine/Animation/c;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, LL8/c;->S(F)V

    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_3

    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, LL8/c;->c()F

    move-result v0

    invoke-virtual {p1}, LL8/c;->c()F

    move-result v2

    sub-float/2addr v2, v0

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, LL8/c;->B(F)V

    cmpg-float v0, p3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, LL8/c;->m()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LL8/c;->m()I

    move-result v0

    :goto_0
    invoke-virtual {p2, v0}, LL8/c;->M(I)V

    invoke-virtual {p0}, LL8/c;->v()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, LL8/c;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p2, v0}, LL8/c;->G(Z)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p0}, LL8/c;->c()F

    move-result v0

    invoke-virtual {p2, v0}, LL8/c;->B(F)V

    invoke-virtual {p0}, LL8/c;->m()I

    move-result v0

    invoke-virtual {p2, v0}, LL8/c;->M(I)V

    invoke-virtual {p0}, LL8/c;->v()Z

    move-result v0

    invoke-virtual {p2, v0}, LL8/c;->G(Z)V

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, LL8/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, LL8/c;->F(Ljava/lang/String;)V

    invoke-virtual {p1}, LL8/c;->c()F

    move-result v0

    invoke-virtual {p2, v0}, LL8/c;->B(F)V

    invoke-virtual {p1}, LL8/c;->m()I

    move-result v0

    invoke-virtual {p2, v0}, LL8/c;->M(I)V

    invoke-virtual {p1}, LL8/c;->v()Z

    move-result v0

    invoke-virtual {p2, v0}, LL8/c;->G(Z)V

    goto :goto_5

    :cond_5
    cmpg-float v0, p3, v1

    if-gez v0, :cond_6

    invoke-virtual {p0}, LL8/c;->m()I

    move-result v2

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, LL8/c;->m()I

    move-result v2

    :goto_3
    invoke-virtual {p2, v2}, LL8/c;->M(I)V

    if-gez v0, :cond_7

    invoke-virtual {p0}, LL8/c;->v()Z

    move-result v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, LL8/c;->v()Z

    move-result v0

    :goto_4
    invoke-virtual {p2, v0}, LL8/c;->G(Z)V

    :goto_5
    invoke-virtual {p0}, LL8/c;->p()Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    :cond_8
    sget-object v2, LL8/d$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    invoke-static {p0}, LL8/c;->t(LL8/c;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, LL8/c;->t(LL8/c;)Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_9

    if-nez p1, :cond_9

    invoke-virtual {p2, v2}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_9
    cmpg-float p3, p3, v1

    if-gez p3, :cond_b

    if-eqz p0, :cond_a

    goto :goto_6

    :cond_a
    move-object p0, p1

    :goto_6
    invoke-virtual {p2, p0}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_b
    if-eqz p1, :cond_c

    move-object p0, p1

    :cond_c
    invoke-virtual {p2, p0}, LL8/c;->I(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_1
    invoke-static {p0}, LL8/c;->T(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p0

    invoke-static {p1}, LL8/c;->T(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    move-result-object p1

    if-nez p0, :cond_d

    if-nez p1, :cond_d

    invoke-virtual {p2, v2}, LL8/c;->O(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto/16 :goto_f

    :cond_d
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result p4

    goto :goto_7

    :cond_e
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result p4

    :goto_7
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v0

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v0

    :goto_8
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v1

    goto :goto_9

    :cond_10
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v1

    :goto_9
    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result p0

    goto :goto_a

    :cond_11
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result p0

    :goto_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->i()I

    move-result v2

    goto :goto_b

    :cond_12
    move v2, p4

    :goto_b
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->k()I

    move-result v3

    goto :goto_c

    :cond_13
    move v3, v0

    :goto_c
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->j()I

    move-result v4

    goto :goto_d

    :cond_14
    move v4, v1

    :goto_d
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;->b()I

    move-result p1

    goto :goto_e

    :cond_15
    move p1, p0

    :goto_e
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;

    int-to-float v6, p4

    sub-int/2addr v2, p4

    int-to-float p4, v2

    mul-float/2addr p4, p3

    add-float/2addr v6, p4

    invoke-static {v6}, LNc/b;->j1(F)F

    move-result p4

    float-to-int p4, p4

    int-to-float v2, v0

    sub-int/2addr v3, v0

    int-to-float v0, v3

    mul-float/2addr v0, p3

    add-float/2addr v2, v0

    invoke-static {v2}, LNc/b;->j1(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float/2addr v1, p3

    add-float/2addr v2, v1

    invoke-static {v2}, LNc/b;->j1(F)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p3

    add-float/2addr v2, p0

    invoke-static {v2}, LNc/b;->j1(F)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v5, p4, v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;-><init>(IIII)V

    invoke-virtual {p2, v5}, LL8/c;->O(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Vectors/Square5I;)V

    goto/16 :goto_f

    :pswitch_2
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v0, p4}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {p0}, LL8/c;->a(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    invoke-static {p1}, LL8/c;->a(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p1

    invoke-static {p0, p1, p3, p4}, LQ8/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p2, p4}, LL8/c;->C(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto/16 :goto_f

    :pswitch_3
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {v0, p4}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-static {p0}, LL8/c;->w(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    invoke-static {p1}, LL8/c;->w(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->X0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    invoke-static {p0, p1, p3, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->j(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    invoke-virtual {p2, p4}, LL8/c;->N(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    goto :goto_f

    :pswitch_4
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {v0, p4}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-static {p0}, LL8/c;->U(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p0

    invoke-static {p1}, LL8/c;->U(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object p1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->M0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v0

    invoke-static {p0, p1, p3, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-virtual {p2, p4}, LL8/c;->Q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    goto :goto_f

    :pswitch_5
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v0, p4}, LL8/d;->a(Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p0}, LL8/c;->V(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    invoke-static {p1}, LL8/c;->V(LL8/c;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->zero()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-static {p0, p1, p3, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/j;->q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p2, p4}, LL8/c;->R(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_f

    :pswitch_6
    invoke-static {p0}, LL8/c;->u(LL8/c;)I

    move-result p0

    invoke-static {p1}, LL8/c;->u(LL8/c;)I

    move-result p1

    int-to-float p4, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p3

    add-float/2addr p4, p0

    invoke-static {p4}, LNc/b;->j1(F)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p2, p0}, LL8/c;->K(I)V

    goto :goto_f

    :pswitch_7
    invoke-static {p0}, LL8/c;->b(LL8/c;)F

    move-result p0

    invoke-static {p1}, LL8/c;->b(LL8/c;)F

    move-result p1

    sub-float/2addr p1, p0

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    invoke-virtual {p2, p0}, LL8/c;->H(F)V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
