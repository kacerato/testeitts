.class public final Lcom/google/android/gms/common/api/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/x;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/common/api/internal/q;

.field public final g:Landroid/os/Looper;

.field public final h:Lcom/google/android/gms/common/api/internal/s;

.field public final i:Lcom/google/android/gms/common/api/internal/s;

.field public final j:Ljava/util/Map;

.field public final k:Ljava/util/Set;

.field public final l:Lcom/google/android/gms/common/api/a$f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public m:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:LB0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public o:LB0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Z

.field public final q:Ljava/util/concurrent/locks/Lock;

.field public r:I
    .annotation build LJ2/a;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LB0/i;Ljava/util/Map;Ljava/util/Map;LG0/i;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .locals 18
    .param p10    # Lcom/google/android/gms/common/api/a$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->k:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/l;->p:Z

    iput v2, v0, Lcom/google/android/gms/common/api/internal/l;->r:I

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/l;->e:Landroid/content/Context;

    move-object/from16 v15, p2

    iput-object v15, v0, Lcom/google/android/gms/common/api/internal/l;->f:Lcom/google/android/gms/common/api/internal/q;

    move-object/from16 v14, p3

    iput-object v14, v0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v13, p4

    iput-object v13, v0, Lcom/google/android/gms/common/api/internal/l;->g:Landroid/os/Looper;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/l;->l:Lcom/google/android/gms/common/api/a$f;

    new-instance v12, Lcom/google/android/gms/common/api/internal/s;

    new-instance v11, LD0/c1;

    invoke-direct {v11, v0, v1}, LD0/c1;-><init>(Lcom/google/android/gms/common/api/internal/l;LD0/b1;)V

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v3, v12

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v17, v11

    move-object/from16 v11, p14

    move-object v1, v12

    move-object/from16 v12, v16

    move-object/from16 v13, p12

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LB0/i;Ljava/util/Map;LG0/i;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;LD0/j0;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    new-instance v1, Lcom/google/android/gms/common/api/internal/s;

    new-instance v14, LD0/e1;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, LD0/e1;-><init>(Lcom/google/android/gms/common/api/internal/l;LD0/d1;)V

    move-object v3, v1

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LB0/i;Ljava/util/Map;LG0/i;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;LD0/j0;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$c;

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a$c;

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/l;->j:Ljava/util/Map;

    return-void
.end method

.method public static bridge synthetic A(Lcom/google/android/gms/common/api/internal/l;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->f:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/q;->a(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    return-void
.end method

.method public static bridge synthetic B(Lcom/google/android/gms/common/api/internal/l;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->m:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->m:Landroid/os/Bundle;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public static bridge synthetic C(Lcom/google/android/gms/common/api/internal/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->k(LB0/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->k(LB0/c;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    if-eqz v0, :cond_9

    iget v2, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->b()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->a(LB0/c;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/s;->m()V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->f:Lcom/google/android/gms/common/api/internal/q;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/q;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->m:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/q;->c(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->b()V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->k(LB0/c;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->m()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB0/c;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->a(LB0/c;)V

    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/s;->q:I

    iget v3, v3, Lcom/google/android/gms/common/api/internal/s;->q:I

    if-ge v2, v3, :cond_8

    move-object v0, v1

    :cond_8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/l;->a(LB0/c;)V

    :cond_9
    return-void
.end method

.method public static bridge synthetic D(Lcom/google/android/gms/common/api/internal/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/l;->p:Z

    return p0
.end method

.method public static k(LB0/c;)Z
    .locals 0
    .param p0    # LB0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LB0/c;->u0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic s(Lcom/google/android/gms/common/api/internal/l;)LB0/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    return-object p0
.end method

.method public static t(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LB0/i;Ljava/util/Map;LG0/i;Ljava/util/Map;Lcom/google/android/gms/common/api/a$a;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/l;
    .locals 16

    move-object/from16 v0, p7

    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->b()Z

    move-result v5

    if-ne v3, v5, :cond_0

    move-object v10, v4

    :cond_0
    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    invoke-static {v1, v2}, LG0/A;->y(ZLjava/lang/Object;)V

    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v14, Landroidx/collection/ArrayMap;

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_8

    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD0/Y0;

    iget-object v4, v3, LD0/Y0;->e:Lcom/google/android/gms/common/api/a;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v4, v3, LD0/Y0;->e:Lcom/google/android/gms/common/api/a;

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v15, Lcom/google/android/gms/common/api/internal/l;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/api/internal/l;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;LB0/i;Ljava/util/Map;Ljava/util/Map;LG0/i;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$f;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v15
.end method

.method public static bridge synthetic u(Lcom/google/android/gms/common/api/internal/l;)Lcom/google/android/gms/common/api/internal/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/google/android/gms/common/api/internal/l;)Lcom/google/android/gms/common/api/internal/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/google/android/gms/common/api/internal/l;LB0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    return-void
.end method

.method public static bridge synthetic y(Lcom/google/android/gms/common/api/internal/l;LB0/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    return-void
.end method

.method public static bridge synthetic z(Lcom/google/android/gms/common/api/internal/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/l;->p:Z

    return-void
.end method


# virtual methods
.method public final E()Landroid/app/PendingIntent;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->l:Lcom/google/android/gms/common/api/a$f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->f:Lcom/google/android/gms/common/api/internal/q;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->m()Landroid/content/Intent;

    move-result-object v0

    sget v3, Lg1/p;->a:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public final a(LB0/c;)V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->f:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/q;->b(LB0/c;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->b()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    return-void
.end method

.method public final b()V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/o;

    invoke-interface {v1}, LD0/o;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final c()Z
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LB0/c;->n()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()LB0/c;
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/l;->h(Lcom/google/android/gms/common/api/internal/b$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->E()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->b(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 4
    .param p1    # Lcom/google/android/gms/common/api/internal/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/l;->h(Lcom/google/android/gms/common/api/internal/b$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->E()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->b(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->f(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->f(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final g(LD0/o;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/s;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/b$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->y()Lcom/google/android/gms/common/api/a$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/s;

    const-string v0, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i()V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/l;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->i()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->i()V

    return-void
.end method

.method public final j()V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->j()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->j()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->p()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/s;->m()V

    new-instance v1, LB0/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LB0/c;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    if-eqz v0, :cond_0

    new-instance v0, Lg1/u;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->g:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lg1/u;-><init>(Landroid/os/Looper;)V

    new-instance v1, LD0/a1;

    invoke-direct {v1, p0}, LD0/a1;-><init>(Lcom/google/android/gms/common/api/internal/l;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final m()V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->o:LB0/c;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->n:LB0/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->m()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->m()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->b()V

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/s;->n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/s;->n(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/common/api/a;)LB0/c;
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-static {v0, v1}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, LB0/c;

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->E()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p1, v0, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->o(Lcom/google/android/gms/common/api/a;)LB0/c;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->o(Lcom/google/android/gms/common/api/a;)LB0/c;

    move-result-object p1

    return-object p1
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final q(JLjava/util/concurrent/TimeUnit;)LB0/c;
    .locals 0
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final r()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->h:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->i:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->r()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/l;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/api/internal/l;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l;->q:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
