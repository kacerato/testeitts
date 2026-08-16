.class public LIb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIb/f$a;,
        LIb/f$e;,
        LIb/f$d;,
        LIb/f$b;,
        LIb/f$c;
    }
.end annotation


# static fields
.field public static f:Z = false


# instance fields
.field public final a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "LIb/f$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "LIb/f$e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "LIb/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final e:LIb/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, LIb/f;->f:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mesh"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LIb/f;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LIb/f;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LIb/f;->c:Ljava/util/Vector;

    new-instance v0, LIb/f$a;

    invoke-direct {v0}, LIb/f$a;-><init>()V

    iput-object v0, p0, LIb/f;->e:LIb/f$a;

    iput-object p1, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-void
.end method


# virtual methods
.method public final a(IILIb/f$a;)D
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id_v1",
            "id_v2",
            "p_result"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v9, p3

    iget-object v2, v8, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$e;

    invoke-static {v2}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v2

    iget-object v3, v8, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    invoke-static {v3}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v3

    invoke-virtual {v2, v3}, LIb/f$c;->a(LIb/f$c;)LIb/f$c;

    move-result-object v20

    iget-object v2, v8, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$e;

    invoke-static {v2}, LIb/f$e;->c(LIb/f$e;)Z

    move-result v2

    iget-object v3, v8, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    invoke-static {v3}, LIb/f$e;->c(LIb/f$e;)Z

    move-result v3

    and-int/2addr v2, v3

    const/16 v18, 0x5

    const/16 v19, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/16 v16, 0x5

    const/16 v17, 0x2

    move-object/from16 v10, v20

    invoke-virtual/range {v10 .. v19}, LIb/f$c;->c(IIIIIIIII)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v15, 0x0

    if-eqz v5, :cond_0

    if-nez v2, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    div-double/2addr v0, v3

    const/16 v18, 0x7

    const/16 v19, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v2, 0x5

    const/16 v16, 0x6

    const/16 v17, 0x5

    move-object/from16 v10, v20

    move v5, v15

    move v15, v2

    invoke-virtual/range {v10 .. v19}, LIb/f$c;->c(IIIIIIIII)D

    move-result-wide v10

    mul-double/2addr v10, v0

    double-to-float v2, v10

    invoke-virtual {v9, v2, v5}, LIb/f$a;->h(FI)V

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v2, v10, v3

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x5

    const/16 v17, 0x2

    move-object/from16 v10, v20

    invoke-virtual/range {v10 .. v19}, LIb/f$c;->c(IIIIIIIII)D

    move-result-wide v10

    mul-double/2addr v2, v10

    double-to-float v2, v2

    invoke-virtual {v9, v2, v7}, LIb/f$a;->h(FI)V

    const/16 v18, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x4

    move-object/from16 v10, v20

    invoke-virtual/range {v10 .. v19}, LIb/f$c;->c(IIIIIIIII)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {v9, v0, v6}, LIb/f$a;->h(FI)V

    invoke-virtual {v9, v5}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v9, v7}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v9, v6}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual/range {v0 .. v7}, LIb/f;->j(LIb/f$c;DDD)D

    move-result-wide v0

    goto/16 :goto_0

    :cond_0
    move v5, v15

    iget-object v2, v8, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIb/f$e;

    invoke-static {v0}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v10

    iget-object v0, v8, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIb/f$e;

    invoke-static {v0}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v11

    invoke-virtual {v10, v11}, LIb/f$a;->b(LIb/f$a;)LIb/f$a;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, LIb/f$a;->d(F)LIb/f$a;

    move-result-object v12

    invoke-virtual {v10, v5}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v10, v7}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v13, v0

    invoke-virtual {v10, v6}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v0, v0

    move-wide v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v8, v5

    move-wide v4, v13

    move v13, v6

    move v14, v7

    move-wide v6, v15

    invoke-virtual/range {v0 .. v7}, LIb/f;->j(LIb/f$c;DDD)D

    move-result-wide v6

    invoke-virtual {v11, v8}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v11, v14}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v11, v13}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v0, v0

    move-wide v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v21, v6

    move-wide v6, v15

    invoke-virtual/range {v0 .. v7}, LIb/f;->j(LIb/f$c;DDD)D

    move-result-wide v6

    invoke-virtual {v12, v8}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v12, v14}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {v12, v13}, LIb/f$a;->f(I)F

    move-result v0

    float-to-double v13, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v11

    move-object/from16 p2, v12

    move-wide v11, v6

    move-wide v6, v13

    invoke-virtual/range {v0 .. v7}, LIb/f;->j(LIb/f$c;DDD)D

    move-result-wide v0

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    move-wide/from16 v4, v21

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    cmpl-double v4, v4, v2

    if-nez v4, :cond_1

    invoke-virtual {v9, v10}, LIb/f$a;->i(LIb/f$a;)V

    :cond_1
    cmpl-double v4, v11, v2

    if-nez v4, :cond_2

    move-object/from16 v4, p1

    invoke-virtual {v9, v4}, LIb/f$a;->i(LIb/f$a;)V

    :cond_2
    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, LIb/f$a;->i(LIb/f$a;)V

    :cond_3
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method public final b()V
    .locals 9

    iget-object v0, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIb/f$e;

    invoke-static {v1, v2}, LIb/f$e;->f(LIb/f$e;I)I

    goto :goto_0

    :cond_0
    move v0, v2

    move v1, v0

    :goto_1
    iget-object v3, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$d;

    invoke-static {v3}, LIb/f$d;->b(LIb/f$d;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$d;

    iget-object v5, p0, LIb/f;->a:Ljava/util/Vector;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_1

    iget-object v5, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v5, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LIb/f$e;

    const/4 v7, 0x1

    invoke-static {v5, v7}, LIb/f$e;->f(LIb/f$e;I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v1, v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    iget-object v0, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    invoke-static {v3}, LIb/f$e;->e(LIb/f$e;)I

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3, v1}, LIb/f$e;->k(LIb/f$e;I)I

    iget-object v5, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LIb/f$e;

    invoke-static {v5}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v6

    invoke-static {v3}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v7

    invoke-virtual {v6, v7}, LIb/f$a;->i(LIb/f$a;)V

    invoke-static {v5}, LIb/f$e;->a(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-static {v3}, LIb/f$e;->a(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-static {v5}, LIb/f$e;->b(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-static {v3}, LIb/f$e;->b(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$d;

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_6

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v6

    iget-object v7, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v8

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$e;

    invoke-static {v7}, LIb/f$e;->j(LIb/f$e;)I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method

.method public final c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 11

    new-instance v0, Lvc/q;

    iget-object v1, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lvc/q;-><init>(I)V

    new-instance v1, Lvc/p;

    iget-object v2, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lvc/p;-><init>(I)V

    new-instance v2, Lvc/q;

    iget-object v3, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lvc/q;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lvc/q;->r(I)V

    invoke-virtual {v1, v3}, Lvc/p;->l(I)V

    invoke-virtual {v2, v3}, Lvc/q;->r(I)V

    iget-object v4, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LIb/f$e;

    invoke-static {v5}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v6

    invoke-static {v6}, LIb/f$a;->a(LIb/f$a;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v6

    invoke-virtual {v0, v6}, Lvc/q;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v5}, LIb/f$e;->a(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    invoke-virtual {v1, v6}, Lvc/p;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    invoke-static {v5}, LIb/f$e;->b(LIb/f$e;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v2, v5}, Lvc/q;->u(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lvc/n;

    iget-object v5, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v4, v5}, Lvc/n;-><init>(I)V

    invoke-virtual {v4, v3}, Lvc/n;->k(I)V

    iget-object v5, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$d;

    new-instance v7, LJAVARuntime/Point3;

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v8

    aget v8, v8, v3

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v9

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v6

    const/4 v10, 0x2

    aget v6, v6, v10

    invoke-direct {v7, v8, v9, v6}, LJAVARuntime/Point3;-><init>(III)V

    invoke-virtual {v4, v7}, Lvc/n;->m(LJAVARuntime/Point3;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->r2(Lvc/q;)V

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->n2(Lvc/p;)V

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j2(Lvc/n;)V

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Z1(Lvc/q;)V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->d0()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-object v3
.end method

.method public final d(LIb/f$a;ILIb/f$e;Ljava/util/Vector;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "p",
            "i1",
            "v0",
            "deleted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LIb/f$a;",
            "I",
            "LIb/f$e;",
            "Ljava/util/Vector<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p3}, LIb/f$e;->e(LIb/f$e;)I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, LIb/f;->c:Ljava/util/Vector;

    invoke-static {p3}, LIb/f$e;->j(LIb/f$e;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$b;

    iget-object v3, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-static {v2}, LIb/f$b;->c(LIb/f$b;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$d;

    invoke-static {v3}, LIb/f$d;->b(LIb/f$d;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {v2}, LIb/f$b;->a(LIb/f$b;)I

    move-result v2

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    rem-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    rem-int/lit8 v2, v2, 0x3

    aget v2, v5, v2

    if-eq v4, p2, :cond_3

    if-ne v2, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LIb/f$e;

    invoke-static {v4}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v4

    invoke-virtual {v4, p1}, LIb/f$a;->k(LIb/f$a;)LIb/f$a;

    move-result-object v4

    invoke-virtual {v4}, LIb/f$a;->g()LIb/f$a;

    move-result-object v4

    iget-object v5, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$e;

    invoke-static {v2}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v2

    invoke-virtual {v2, p1}, LIb/f$a;->k(LIb/f$a;)LIb/f$a;

    move-result-object v2

    invoke-virtual {v2}, LIb/f$a;->g()LIb/f$a;

    move-result-object v2

    invoke-virtual {v4, v2}, LIb/f$a;->e(LIb/f$a;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v5, v5, v7

    const/4 v6, 0x1

    if-lez v5, :cond_2

    return v6

    :cond_2
    new-instance v5, LIb/f$a;

    invoke-direct {v5, v4}, LIb/f$a;-><init>(LIb/f$a;)V

    invoke-virtual {v5, v2}, LIb/f$a;->c(LIb/f$a;)LIb/f$a;

    move-result-object v2

    invoke-virtual {v2}, LIb/f$a;->g()LIb/f$a;

    move-result-object v2

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1, v4}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, LIb/f$d;->d(LIb/f$d;)LIb/f$a;

    move-result-object v3

    invoke-virtual {v2, v3}, LIb/f$a;->e(LIb/f$a;)D

    move-result-wide v2

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double v2, v2, v4

    if-gez v2, :cond_4

    return v6

    :cond_3
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return v0
.end method

.method public final e()V
    .locals 9

    iget-object v0, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, LIb/f;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->j1()I

    move-result v0

    iget-object v1, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->b1()I

    move-result v1

    iget-object v2, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->y0()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->g1(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    if-le v1, v4, :cond_0

    iget-object v6, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v6, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->Y0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v6

    goto :goto_1

    :cond_0
    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    :goto_1
    if-le v2, v4, :cond_1

    iget-object v7, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v7, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    goto :goto_2

    :cond_1
    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    :goto_2
    new-instance v8, LIb/f$e;

    invoke-direct {v8, v5, v6, v7}, LIb/f$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v5, p0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v0

    move v1, v3

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_3

    iget-object v4, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->I0(I)Lcom/itsmagic/engine/Engines/Engine/Vector/h;

    move-result-object v4

    new-instance v5, LIb/f$d;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->J()I

    move-result v6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->K()I

    move-result v7

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/h;->L()I

    move-result v4

    invoke-direct {v5, v6, v7, v4}, LIb/f$d;-><init>(III)V

    iget-object v4, p0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, LIb/f;->c:Ljava/util/Vector;

    new-instance v6, LIb/f$b;

    invoke-static {v5}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v7

    aget v7, v7, v3

    invoke-direct {v6, v2, v7}, LIb/f$b;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, LIb/f;->c:Ljava/util/Vector;

    new-instance v6, LIb/f$b;

    invoke-static {v5}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v7

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-direct {v6, v2, v7}, LIb/f$b;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, LIb/f;->c:Ljava/util/Vector;

    new-instance v6, LIb/f$b;

    invoke-static {v5}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v5

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-direct {v6, v2, v5}, LIb/f$b;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public f(FD)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target_percent",
            "agressiveness"
        }
    .end annotation

    iget-object v0, p0, LIb/f;->d:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->W0()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1, p2, p3}, LIb/f;->g(ID)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    return-object p1
.end method

.method public final g(ID)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target_count",
            "agressiveness"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    invoke-virtual/range {p0 .. p0}, LIb/f;->e()V

    sget-boolean v5, LIb/f;->f:Z

    if-eqz v5, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    mul-int/lit8 v6, v1, 0x64

    iget-object v7, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Simplify Target: %d of %d (%d%%)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_0
    iget-object v5, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$d;

    invoke-static {v6, v7}, LIb/f$d;->c(LIb/f$d;Z)Z

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iget-object v8, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    iget-object v9, v0, LIb/f;->e:LIb/f$a;

    new-array v10, v2, [J

    fill-array-data v10, :array_0

    invoke-virtual {v9, v10}, LIb/f$a;->j([J)V

    move v9, v7

    move v10, v9

    :goto_1
    const/16 v11, 0x3e8

    if-ge v9, v11, :cond_2

    sub-int v11, v8, v10

    if-gt v11, v1, :cond_3

    :cond_2
    move-wide/from16 v22, v3

    goto/16 :goto_9

    :cond_3
    rem-int/lit8 v11, v9, 0x5

    if-nez v11, :cond_4

    invoke-virtual {v0, v9}, LIb/f;->h(I)V

    :cond_4
    iget-object v11, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LIb/f$d;

    invoke-static {v12, v7}, LIb/f$d;->f(LIb/f$d;Z)Z

    goto :goto_2

    :cond_5
    int-to-double v11, v9

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    add-double/2addr v11, v13

    move-wide/from16 v13, p2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v11, v15

    iget-object v15, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    :goto_3
    if-ltz v15, :cond_f

    iget-object v7, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v7, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$d;

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v17

    aget-wide v18, v17, v2

    cmpl-double v17, v18, v11

    if-gtz v17, :cond_6

    invoke-static {v7}, LIb/f$d;->b(LIb/f$d;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v7}, LIb/f$d;->e(LIb/f$d;)Z

    move-result v17

    if-eqz v17, :cond_7

    :cond_6
    move-wide/from16 v22, v3

    move-wide/from16 v20, v11

    move v3, v2

    goto/16 :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v2, :cond_d

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v14

    aget-wide v17, v14, v13

    cmpl-double v14, v17, v11

    if-ltz v14, :cond_8

    move-wide/from16 v22, v3

    move-object/from16 v17, v7

    move-wide/from16 v20, v11

    move v3, v2

    goto/16 :goto_5

    :cond_8
    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v14

    aget v14, v14, v13

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v17

    add-int/lit8 v18, v13, 0x1

    rem-int/lit8 v18, v18, 0x3

    aget v2, v17, v18

    move-object/from16 v17, v7

    iget-object v7, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v7, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$e;

    move-wide/from16 v20, v11

    iget-object v11, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v11, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LIb/f$e;

    invoke-static {v7}, LIb/f$e;->c(LIb/f$e;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static {v11}, LIb/f$e;->c(LIb/f$e;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_9
    move-wide/from16 v22, v3

    const/4 v3, 0x3

    goto :goto_5

    :cond_a
    iget-object v12, v0, LIb/f;->e:LIb/f$a;

    move-wide/from16 v22, v3

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_1

    invoke-virtual {v12, v4}, LIb/f$a;->j([J)V

    iget-object v4, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {v0, v14, v2, v4}, LIb/f;->a(IILIb/f$a;)D

    invoke-static {v7}, LIb/f$e;->e(LIb/f$e;)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/Vector;->setSize(I)V

    invoke-static {v11}, LIb/f$e;->e(LIb/f$e;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/util/Vector;->setSize(I)V

    iget-object v4, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {v0, v4, v2, v7, v5}, LIb/f;->d(LIb/f$a;ILIb/f$e;Ljava/util/Vector;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    iget-object v2, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {v0, v2, v14, v11, v6}, LIb/f;->d(LIb/f$a;ILIb/f$e;Ljava/util/Vector;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    invoke-static {v7}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v2

    iget-object v4, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {v2, v4}, LIb/f$a;->i(LIb/f$a;)V

    invoke-static {v7}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v2

    invoke-static {v11}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v4

    invoke-virtual {v2, v4}, LIb/f$c;->b(LIb/f$c;)V

    iget-object v2, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v14, v7, v5}, LIb/f;->i(ILIb/f$e;Ljava/util/Vector;)I

    move-result v4

    add-int/2addr v10, v4

    invoke-virtual {v0, v14, v11, v6}, LIb/f;->i(ILIb/f$e;Ljava/util/Vector;)I

    move-result v4

    add-int/2addr v10, v4

    iget-object v4, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v7, v2}, LIb/f$e;->k(LIb/f$e;I)I

    invoke-static {v7, v4}, LIb/f$e;->f(LIb/f$e;I)I

    goto :goto_6

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v2, v3

    move-object/from16 v7, v17

    move-wide/from16 v11, v20

    move-wide/from16 v3, v22

    goto/16 :goto_4

    :cond_d
    move-wide/from16 v22, v3

    move-wide/from16 v20, v11

    move v3, v2

    :goto_6
    sub-int v2, v8, v10

    if-gt v2, v1, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v13, p2

    move v2, v3

    move-wide/from16 v11, v20

    move-wide/from16 v3, v22

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_f
    move-wide/from16 v22, v3

    move v3, v2

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move v2, v3

    move-wide/from16 v3, v22

    const/4 v7, 0x0

    goto/16 :goto_1

    :goto_9
    invoke-virtual/range {p0 .. p0}, LIb/f;->b()V

    sget-boolean v1, LIb/f;->f:Z

    if-eqz v1, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-int v4, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    mul-int/lit8 v10, v10, 0x64

    div-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sub-long v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v5, v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Simplify: %d/%d %d%% removed in %d ms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, LIb/f;->c()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final h(I)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iteration"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p1, :cond_2

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    iget-object v6, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$d;

    invoke-static {v6}, LIb/f$d;->b(LIb/f$d;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, LIb/f;->a:Ljava/util/Vector;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LIb/f$d;

    invoke-virtual {v6, v5, v8}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    :cond_0
    add-int/2addr v4, v2

    goto :goto_0

    :cond_1
    iget-object v4, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    const/4 v4, 0x2

    if-nez p1, :cond_7

    iget-object v5, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$e;

    invoke-static {v6}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v6

    new-instance v7, LIb/f$c;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, LIb/f$c;-><init>(D)V

    invoke-virtual {v6, v7}, LIb/f$c;->e(LIb/f$c;)V

    goto :goto_1

    :cond_3
    iget-object v5, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$d;

    iget-object v7, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v8

    aget v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$e;

    invoke-static {v7}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v7

    iget-object v8, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v9

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LIb/f$e;

    invoke-static {v8}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v8

    iget-object v9, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v10

    aget v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LIb/f$e;

    invoke-static {v9}, LIb/f$e;->h(LIb/f$e;)LIb/f$a;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [LIb/f$a;

    move-result-object v7

    aget-object v8, v7, v2

    aget-object v9, v7, v3

    invoke-virtual {v8, v9}, LIb/f$a;->k(LIb/f$a;)LIb/f$a;

    move-result-object v8

    aget-object v9, v7, v4

    aget-object v10, v7, v3

    invoke-virtual {v9, v10}, LIb/f$a;->k(LIb/f$a;)LIb/f$a;

    move-result-object v9

    invoke-virtual {v8, v9}, LIb/f$a;->c(LIb/f$a;)LIb/f$a;

    move-result-object v8

    invoke-virtual {v8}, LIb/f$a;->g()LIb/f$a;

    move-result-object v8

    invoke-static {v6}, LIb/f$d;->d(LIb/f$d;)LIb/f$a;

    move-result-object v9

    invoke-virtual {v9, v8}, LIb/f$a;->i(LIb/f$a;)V

    move v9, v3

    :goto_2
    if-ge v9, v1, :cond_4

    iget-object v10, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v11

    aget v11, v11, v9

    invoke-virtual {v10, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LIb/f$e;

    invoke-static {v10}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v10

    iget-object v11, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v6}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v12

    aget v12, v12, v9

    invoke-virtual {v11, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LIb/f$e;

    invoke-static {v11}, LIb/f$e;->i(LIb/f$e;)LIb/f$c;

    move-result-object v11

    new-instance v15, LIb/f$c;

    invoke-virtual {v8, v3}, LIb/f$a;->f(I)F

    move-result v12

    float-to-double v13, v12

    invoke-virtual {v8, v2}, LIb/f$a;->f(I)F

    move-result v12

    float-to-double v1, v12

    invoke-virtual {v8, v4}, LIb/f$a;->f(I)F

    move-result v12

    move-object/from16 v21, v5

    float-to-double v4, v12

    aget-object v12, v7, v3

    move-wide/from16 v17, v4

    invoke-virtual {v8, v12}, LIb/f$a;->e(LIb/f$a;)D

    move-result-wide v3

    neg-double v3, v3

    move-object v12, v15

    move-object v5, v15

    move-wide v15, v1

    move-wide/from16 v19, v3

    invoke-direct/range {v12 .. v20}, LIb/f$c;-><init>(DDDD)V

    invoke-virtual {v11, v5}, LIb/f$c;->a(LIb/f$c;)LIb/f$c;

    move-result-object v1

    invoke-virtual {v10, v1}, LIb/f$c;->e(LIb/f$c;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    move v2, v1

    move-object/from16 v5, v21

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    goto :goto_2

    :cond_5
    iget-object v1, v0, LIb/f;->e:LIb/f$a;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, LIb/f$a;->j([J)V

    iget-object v1, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$d;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_6

    invoke-static {v3}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v5

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v6

    aget v6, v6, v4

    invoke-static {v3}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v7

    const/4 v8, 0x1

    add-int/lit8 v9, v4, 0x1

    rem-int/lit8 v10, v9, 0x3

    aget v2, v7, v10

    iget-object v7, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {v0, v6, v2, v7}, LIb/f;->a(IILIb/f$a;)D

    move-result-wide v6

    aput-wide v6, v5, v4

    move v4, v9

    const/4 v2, 0x3

    goto :goto_4

    :cond_6
    const/4 v8, 0x1

    invoke-static {v3}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v2

    invoke-static {v3}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    invoke-static {v3}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v4

    aget-wide v9, v4, v8

    invoke-static {v3}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v3

    const/4 v4, 0x2

    aget-wide v11, v3, v4

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    const/4 v5, 0x3

    aput-wide v3, v2, v5

    move v2, v5

    goto :goto_3

    :cond_7
    iget-object v1, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$e;

    const/4 v3, 0x0

    invoke-static {v2, v3}, LIb/f$e;->k(LIb/f$e;I)I

    invoke-static {v2, v3}, LIb/f$e;->f(LIb/f$e;I)I

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    iget-object v1, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$d;

    iget-object v4, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v2}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v5

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    invoke-static {v3}, LIb/f$e;->g(LIb/f$e;)I

    iget-object v3, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v2}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    invoke-static {v3}, LIb/f$e;->g(LIb/f$e;)I

    iget-object v3, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v2}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v2

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LIb/f$e;

    invoke-static {v2}, LIb/f$e;->g(LIb/f$e;)I

    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    iget-object v1, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    invoke-static {v3, v2}, LIb/f$e;->k(LIb/f$e;I)I

    invoke-static {v3}, LIb/f$e;->e(LIb/f$e;)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, LIb/f$e;->f(LIb/f$e;I)I

    goto :goto_7

    :cond_a
    iget-object v1, v0, LIb/f;->c:Ljava/util/Vector;

    iget-object v2, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    const/4 v5, 0x0

    :goto_8
    iget-object v1, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v5, v1, :cond_c

    iget-object v1, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LIb/f$d;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_b

    iget-object v3, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-static {v1}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LIb/f$e;

    iget-object v4, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-static {v3}, LIb/f$e;->j(LIb/f$e;)I

    move-result v6

    invoke-static {v3}, LIb/f$e;->e(LIb/f$e;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LIb/f$b;

    invoke-static {v4, v5}, LIb/f$b;->d(LIb/f$b;I)I

    iget-object v4, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-static {v3}, LIb/f$e;->j(LIb/f$e;)I

    move-result v6

    invoke-static {v3}, LIb/f$e;->e(LIb/f$e;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LIb/f$b;

    invoke-static {v4, v2}, LIb/f$b;->b(LIb/f$b;I)I

    invoke-static {v3}, LIb/f$e;->g(LIb/f$e;)I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v3, 0x3

    goto :goto_9

    :cond_b
    const/4 v3, 0x1

    add-int/2addr v5, v3

    const/4 v3, 0x3

    goto :goto_8

    :cond_c
    if-nez p1, :cond_15

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v3, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LIb/f$e;

    const/4 v5, 0x0

    invoke-static {v4, v5}, LIb/f$e;->d(LIb/f$e;Z)Z

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    iget-object v3, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LIb/f$e;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v6, v5

    :goto_b
    invoke-static {v4}, LIb/f$e;->e(LIb/f$e;)I

    move-result v7

    if-ge v6, v7, :cond_13

    iget-object v7, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-static {v4}, LIb/f$e;->j(LIb/f$e;)I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$b;

    invoke-static {v7}, LIb/f$b;->c(LIb/f$b;)I

    move-result v7

    iget-object v8, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$d;

    move v8, v5

    const/4 v9, 0x3

    :goto_c
    if-ge v8, v9, :cond_12

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v10

    aget v10, v10, v8

    move v11, v5

    :goto_d
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    invoke-virtual {v2, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v10, :cond_10

    :cond_f
    const/4 v12, 0x1

    goto :goto_e

    :cond_10
    const/4 v12, 0x1

    add-int/2addr v11, v12

    goto :goto_d

    :goto_e
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v13

    if-ne v11, v13, :cond_11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    invoke-virtual {v1, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v11, v10}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_f
    add-int/2addr v8, v12

    goto :goto_c

    :cond_12
    const/4 v12, 0x1

    add-int/2addr v6, v12

    goto :goto_b

    :cond_13
    const/4 v9, 0x3

    const/4 v12, 0x1

    move v4, v5

    :goto_10
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v12, :cond_14

    iget-object v6, v0, LIb/f;->b:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$e;

    invoke-static {v6, v12}, LIb/f$e;->d(LIb/f$e;Z)Z

    :cond_14
    add-int/2addr v4, v12

    goto :goto_10

    :cond_15
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final i(ILIb/f$e;Ljava/util/Vector;)I
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "i0",
            "v",
            "deleted"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "LIb/f$e;",
            "Ljava/util/Vector<",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, LIb/f;->e:LIb/f$a;

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, LIb/f$a;->j([J)V

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    invoke-static/range {p2 .. p2}, LIb/f$e;->e(LIb/f$e;)I

    move-result v6

    if-ge v4, v6, :cond_2

    iget-object v6, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-static/range {p2 .. p2}, LIb/f$e;->j(LIb/f$e;)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LIb/f$b;

    iget-object v7, v0, LIb/f;->a:Ljava/util/Vector;

    invoke-static {v6}, LIb/f$b;->c(LIb/f$b;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LIb/f$d;

    invoke-static {v7}, LIb/f$d;->b(LIb/f$d;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object/from16 v8, p3

    goto :goto_1

    :cond_0
    move-object/from16 v8, p3

    invoke-virtual {v8, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v7, v1}, LIb/f$d;->c(LIb/f$d;Z)Z

    add-int/2addr v5, v1

    :goto_1
    move v7, v3

    goto :goto_2

    :cond_1
    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v9

    invoke-static {v6}, LIb/f$b;->a(LIb/f$b;)I

    move-result v10

    aput p1, v9, v10

    invoke-static {v7, v1}, LIb/f$d;->f(LIb/f$d;Z)Z

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v9

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v10

    aget v10, v10, v2

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v11

    aget v11, v11, v1

    iget-object v12, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {p0, v10, v11, v12}, LIb/f;->a(IILIb/f$a;)D

    move-result-wide v10

    aput-wide v10, v9, v2

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v9

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v10

    aget v10, v10, v1

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v11

    const/4 v12, 0x2

    aget v11, v11, v12

    iget-object v13, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {p0, v10, v11, v13}, LIb/f;->a(IILIb/f$a;)D

    move-result-wide v10

    aput-wide v10, v9, v1

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v9

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v10

    aget v10, v10, v12

    invoke-static {v7}, LIb/f$d;->a(LIb/f$d;)[I

    move-result-object v11

    aget v11, v11, v2

    iget-object v13, v0, LIb/f;->e:LIb/f$a;

    invoke-virtual {p0, v10, v11, v13}, LIb/f;->a(IILIb/f$a;)D

    move-result-wide v10

    aput-wide v10, v9, v12

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v9

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v10

    aget-wide v13, v10, v2

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v10

    aget-wide v2, v10, v1

    invoke-static {v7}, LIb/f$d;->g(LIb/f$d;)[D

    move-result-object v7

    aget-wide v11, v7, v12

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const/4 v7, 0x3

    aput-wide v2, v9, v7

    iget-object v2, v0, LIb/f;->c:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/2addr v4, v1

    move v3, v7

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    return v5

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final j(LIb/f$c;DDD)D
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "q",
            "x",
            "y",
            "z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LIb/f$c;->d(I)D

    move-result-wide v0

    mul-double/2addr v0, p2

    mul-double/2addr v0, p2

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, LIb/f$c;->d(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, p2

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, LIb/f$c;->d(I)D

    move-result-wide v2

    mul-double/2addr v2, v4

    mul-double/2addr v2, p2

    mul-double/2addr v2, p6

    add-double/2addr v0, v2

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, LIb/f$c;->d(I)D

    move-result-wide v2

    mul-double/2addr v2, v4

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, LIb/f$c;->d(I)D

    move-result-wide p2

    mul-double/2addr p2, p4

    mul-double/2addr p2, p4

    add-double/2addr v0, p2

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, LIb/f$c;->d(I)D

    move-result-wide p2

    mul-double/2addr p2, v4

    mul-double/2addr p2, p4

    mul-double/2addr p2, p6

    add-double/2addr v0, p2

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, LIb/f$c;->d(I)D

    move-result-wide p2

    mul-double/2addr p2, v4

    mul-double/2addr p2, p4

    add-double/2addr v0, p2

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, LIb/f$c;->d(I)D

    move-result-wide p2

    mul-double/2addr p2, p6

    mul-double/2addr p2, p6

    add-double/2addr v0, p2

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, LIb/f$c;->d(I)D

    move-result-wide p2

    mul-double/2addr p2, v4

    mul-double/2addr p2, p6

    add-double/2addr v0, p2

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, LIb/f$c;->d(I)D

    move-result-wide p1

    add-double/2addr v0, p1

    return-wide v0
.end method
