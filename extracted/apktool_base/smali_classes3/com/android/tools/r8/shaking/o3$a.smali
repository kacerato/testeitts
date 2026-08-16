.class public Lcom/android/tools/r8/shaking/o3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic Q:Z = true


# instance fields
.field public A:Ljava/nio/file/Path;

.field public B:Ljava/nio/file/Path;

.field public C:Ljava/nio/file/Path;

.field public D:Ljava/nio/file/Path;

.field public E:Z

.field public F:Lcom/android/tools/r8/origin/Origin;

.field public G:Lcom/android/tools/r8/position/Position;

.field public final H:Lcom/android/tools/r8/shaking/b3$a;

.field public final I:Lcom/android/tools/r8/shaking/b4;

.field public final J:Lcom/android/tools/r8/shaking/b4;

.field public final K:Lcom/android/tools/r8/shaking/b4;

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:I

.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lcom/android/tools/r8/internal/Ef0;

.field public e:Lcom/android/tools/r8/internal/nJ$m;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Ljava/nio/file/Path;

.field public n:Z

.field public o:Ljava/nio/file/Path;

.field public p:Z

.field public q:Ljava/nio/file/Path;

.field public r:Ljava/nio/file/Path;

.field public s:Ljava/lang/String;

.field public final t:Ljava/util/ArrayList;

.field public final u:Lcom/android/tools/r8/shaking/b3$a;

.field public final v:Lcom/android/tools/r8/shaking/b3$a;

.field public final w:Lcom/android/tools/r8/shaking/b3$a;

.field public final x:Ljava/util/LinkedHashSet;

.field public final y:Lcom/android/tools/r8/graph/u1;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->c:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/tools/r8/internal/nJ$m;->b:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->i:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->k:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->t:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/shaking/b3;->a()Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->u:Lcom/android/tools/r8/shaking/b3$a;

    invoke-static {}, Lcom/android/tools/r8/shaking/b3;->a()Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->v:Lcom/android/tools/r8/shaking/b3$a;

    invoke-static {}, Lcom/android/tools/r8/shaking/b3;->a()Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->w:Lcom/android/tools/r8/shaking/b3$a;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->x:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/android/tools/r8/shaking/b3;->a()Lcom/android/tools/r8/shaking/b3$a;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->H:Lcom/android/tools/r8/shaking/b3$a;

    sget-boolean v1, Lcom/android/tools/r8/shaking/c4;->c:Z

    new-instance v1, Lcom/android/tools/r8/shaking/b4;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/b4;-><init>()V

    sget v2, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/shaking/e4;

    const-string v5, "META-INF/services/*"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/tools/r8/shaking/e4;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Lcom/android/tools/r8/shaking/f4;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/shaking/f4;-><init>(Lcom/android/tools/r8/internal/hC;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    :goto_0
    iget-object v3, v1, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->I:Lcom/android/tools/r8/shaking/b4;

    new-instance v1, Lcom/android/tools/r8/shaking/b4;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/b4;-><init>()V

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/e4;

    invoke-direct {v3, v5, v6}, Lcom/android/tools/r8/shaking/e4;-><init>(Ljava/lang/String;Z)V

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/android/tools/r8/shaking/f4;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/f4;-><init>(Lcom/android/tools/r8/internal/hC;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/tools/r8/shaking/d4;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/d4;-><init>()V

    :goto_1
    iget-object v0, v1, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    iput-object v1, p0, Lcom/android/tools/r8/shaking/o3$a;->J:Lcom/android/tools/r8/shaking/b4;

    new-instance v0, Lcom/android/tools/r8/shaking/b4;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/b4;-><init>()V

    iput-boolean v6, v0, Lcom/android/tools/r8/shaking/b4;->a:Z

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->K:Lcom/android/tools/r8/shaking/b4;

    iput-boolean v6, p0, Lcom/android/tools/r8/shaking/o3$a;->L:Z

    iput-boolean v6, p0, Lcom/android/tools/r8/shaking/o3$a;->M:Z

    iput-boolean v6, p0, Lcom/android/tools/r8/shaking/o3$a;->N:Z

    iput-boolean v6, p0, Lcom/android/tools/r8/shaking/o3$a;->O:Z

    iput v6, p0, Lcom/android/tools/r8/shaking/o3$a;->P:I

    iput-object p1, p0, Lcom/android/tools/r8/shaking/o3$a;->y:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/shaking/o3$a;->d:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/android/tools/r8/shaking/o3$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/tools/r8/shaking/o3$a;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/shaking/o3;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    sget-object v1, Lcom/android/tools/r8/internal/nJ$m;->b:Lcom/android/tools/r8/internal/nJ$m;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    if-eqz v0, :cond_0

    .line 12
    sget-object v0, Lcom/android/tools/r8/internal/nJ$m;->c:Lcom/android/tools/r8/internal/nJ$m;

    iput-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/o3$a;->b()Lcom/android/tools/r8/shaking/o3;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/c3;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->H:Lcom/android/tools/r8/shaking/b3$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/b3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/b3$a;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/g4;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->J:Lcom/android/tools/r8/shaking/b4;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public a(Lcom/android/tools/r8/shaking/v3;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->x:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/tools/r8/shaking/o3$a;->s:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/nio/file/Path;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/shaking/o3$a;->Q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/o3$a;->q:Ljava/nio/file/Path;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/o3$a;->h:Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/g4;)Lcom/android/tools/r8/shaking/o3$a;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->I:Lcom/android/tools/r8/shaking/b4;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-object p0
.end method

.method public final b()Lcom/android/tools/r8/shaking/o3;
    .locals 44

    move-object/from16 v0, p0

    .line 6
    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->t:Ljava/util/ArrayList;

    .line 7
    invoke-static {v1}, Lcom/android/tools/r8/shaking/I3;->a(Ljava/util/List;)Lcom/android/tools/r8/shaking/I3;

    move-result-object v22

    .line 8
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->L:Z

    if-eqz v1, :cond_0

    .line 9
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    if-nez v1, :cond_0

    .line 10
    invoke-virtual/range {v22 .. v22}, Lcom/android/tools/r8/shaking/I3;->a()Lcom/android/tools/r8/shaking/I3;

    .line 11
    :cond_0
    new-instance v1, Lcom/android/tools/r8/shaking/o3;

    move-object v2, v1

    .line 12
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/o3$a;->a:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/o3$a;->y:Lcom/android/tools/r8/graph/u1;

    iget-object v5, v0, Lcom/android/tools/r8/shaking/o3$a;->b:Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/tools/r8/shaking/o3$a;->c:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/tools/r8/shaking/o3$a;->e:Lcom/android/tools/r8/internal/nJ$m;

    iget-object v8, v0, Lcom/android/tools/r8/shaking/o3$a;->f:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/android/tools/r8/shaking/o3$a;->g:Z

    iget-boolean v10, v0, Lcom/android/tools/r8/shaking/o3$a;->h:Z

    iget-boolean v11, v0, Lcom/android/tools/r8/shaking/o3$a;->i:Z

    iget-boolean v12, v0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    iget-boolean v13, v0, Lcom/android/tools/r8/shaking/o3$a;->k:Z

    iget-boolean v14, v0, Lcom/android/tools/r8/shaking/o3$a;->l:Z

    iget-object v15, v0, Lcom/android/tools/r8/shaking/o3$a;->m:Ljava/nio/file/Path;

    move-object/from16 v41, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->n:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->o:Ljava/nio/file/Path;

    move-object/from16 v17, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->p:Z

    move/from16 v18, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->q:Ljava/nio/file/Path;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->r:Ljava/nio/file/Path;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->s:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->u:Lcom/android/tools/r8/shaking/b3$a;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/b3$a;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object v23

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->v:Lcom/android/tools/r8/shaking/b3$a;

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/b3$a;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object v24

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->w:Lcom/android/tools/r8/shaking/b3$a;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/b3$a;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object v25

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->x:Ljava/util/LinkedHashSet;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->z:Z

    move/from16 v27, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->A:Ljava/nio/file/Path;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->B:Ljava/nio/file/Path;

    move-object/from16 v42, v2

    iget-object v2, v0, Lcom/android/tools/r8/shaking/o3$a;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 16
    invoke-static {v2, v1}, Lcom/android/tools/r8/naming/w;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/hC;

    move-result-object v29

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->C:Ljava/nio/file/Path;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/o3$a;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 17
    invoke-static {v2, v1}, Lcom/android/tools/r8/naming/w;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/hC;

    move-result-object v30

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->D:Ljava/nio/file/Path;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/o3$a;->d:Lcom/android/tools/r8/internal/Ef0;

    .line 18
    invoke-static {v2, v1}, Lcom/android/tools/r8/naming/w;->a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)Lcom/android/tools/r8/internal/hC;

    move-result-object v31

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->E:Z

    move/from16 v32, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->H:Lcom/android/tools/r8/shaking/b3$a;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/b3$a;->a()Lcom/android/tools/r8/shaking/b3;

    move-result-object v33

    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->I:Lcom/android/tools/r8/shaking/b4;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v2, Lcom/android/tools/r8/shaking/c4;

    move-object/from16 v34, v2

    move-object/from16 v43, v3

    iget-object v3, v1, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/b4;->a:Z

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/shaking/c4;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    .line 22
    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->J:Lcom/android/tools/r8/shaking/b4;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v2, Lcom/android/tools/r8/shaking/c4;

    move-object/from16 v35, v2

    iget-object v3, v1, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/b4;->a:Z

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/shaking/c4;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    .line 25
    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->K:Lcom/android/tools/r8/shaking/b4;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    new-instance v2, Lcom/android/tools/r8/shaking/c4;

    move-object/from16 v36, v2

    iget-object v3, v1, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    iget-boolean v1, v1, Lcom/android/tools/r8/shaking/b4;->a:Z

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/shaking/c4;-><init>(Lcom/android/tools/r8/internal/hC;Z)V

    .line 28
    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->M:Z

    move/from16 v37, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->N:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Lcom/android/tools/r8/shaking/o3$a;->O:Z

    move/from16 v39, v1

    .line 29
    iget v1, v0, Lcom/android/tools/r8/shaking/o3$a;->P:I

    move/from16 v40, v1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    .line 30
    invoke-direct/range {v2 .. v40}, Lcom/android/tools/r8/shaking/o3;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/u1;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/nJ$m;Ljava/lang/String;ZZZZZZLjava/nio/file/Path;ZLjava/nio/file/Path;ZLjava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;Lcom/android/tools/r8/shaking/I3;Lcom/android/tools/r8/shaking/b3;Lcom/android/tools/r8/shaking/b3;Lcom/android/tools/r8/shaking/b3;Ljava/util/LinkedHashSet;ZLjava/nio/file/Path;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/hC;ZLcom/android/tools/r8/shaking/b3;Lcom/android/tools/r8/shaking/c4;Lcom/android/tools/r8/shaking/c4;Lcom/android/tools/r8/shaking/c4;ZZZI)V

    .line 31
    iget-object v1, v0, Lcom/android/tools/r8/shaking/o3$a;->d:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-object v41
.end method

.method public final b(Lcom/android/tools/r8/shaking/c3;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->w:Lcom/android/tools/r8/shaking/b3$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/b3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/b3$a;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/o3$a;->p:Z

    return-void
.end method

.method public c()Lcom/android/tools/r8/shaking/o3$a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->j:Z

    return-object p0
.end method

.method public final c(Lcom/android/tools/r8/shaking/c3;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->v:Lcom/android/tools/r8/shaking/b3$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/b3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/b3$a;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/shaking/g4;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->K:Lcom/android/tools/r8/shaking/b4;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/shaking/b4;->b:Lcom/android/tools/r8/internal/eC;

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/o3$a;->z:Z

    return-void
.end method

.method public d()Lcom/android/tools/r8/shaking/o3$a;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->i:Z

    return-object p0
.end method

.method public final d(Lcom/android/tools/r8/shaking/c3;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/o3$a;->u:Lcom/android/tools/r8/shaking/b3$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/b3$a;->a(Lcom/android/tools/r8/shaking/c3;)Lcom/android/tools/r8/shaking/b3$a;

    return-void
.end method

.method public e()Lcom/android/tools/r8/shaking/o3$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/shaking/o3$a;->k:Z

    return-object p0
.end method
