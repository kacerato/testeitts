.class public final Lcom/google/android/gms/common/api/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/r;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/s;

.field public final b:Ljava/util/concurrent/locks/Lock;

.field public final c:Landroid/content/Context;

.field public final d:LB0/i;

.field public e:LB0/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/os/Bundle;

.field public final j:Ljava/util/Set;

.field public k:Ls1/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:LG0/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public p:Z

.field public q:Z

.field public final r:LG0/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final s:Ljava/util/Map;

.field public final t:Lcom/google/android/gms/common/api/a$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final u:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/s;LG0/i;Ljava/util/Map;LB0/i;Lcom/google/android/gms/common/api/a$a;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .param p2    # LG0/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/common/api/a$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/o;->g:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->i:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->j:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->u:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/o;->s:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/o;->d:LB0/i;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/o;->t:Lcom/google/android/gms/common/api/a$a;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/o;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/o;->c:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic A(Lcom/google/android/gms/common/api/internal/o;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->i()V

    return-void
.end method

.method public static bridge synthetic B(Lcom/google/android/gms/common/api/internal/o;Lt1/l;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lt1/l;->n()LB0/c;

    move-result-object v0

    invoke-virtual {v0}, LB0/c;->u0()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lt1/l;->t()LG0/m0;

    move-result-object p1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG0/m0;

    invoke-virtual {p1}, LG0/m0;->n()LB0/c;

    move-result-object v0

    invoke-virtual {v0}, LB0/c;->u0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "GACConnecting"

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->n:Z

    invoke-virtual {p1}, LG0/m0;->t()LG0/r;

    move-result-object v0

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG0/r;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->o:LG0/r;

    invoke-virtual {p1}, LG0/m0;->b0()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->p:Z

    invoke-virtual {p1}, LG0/m0;->n0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/o;->q:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->n()V

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->q(LB0/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->i()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->n()V

    return-void

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/google/android/gms/common/api/internal/o;LB0/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    return-void
.end method

.method public static bridge synthetic D(Lcom/google/android/gms/common/api/internal/o;LB0/c;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/o;->m(LB0/c;Lcom/google/android/gms/common/api/a;Z)V

    return-void
.end method

.method public static bridge synthetic E(Lcom/google/android/gms/common/api/internal/o;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->n()V

    return-void
.end method

.method public static bridge synthetic F(Lcom/google/android/gms/common/api/internal/o;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    return p0
.end method

.method public static bridge synthetic G(Lcom/google/android/gms/common/api/internal/o;I)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/o;->o(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic H(Lcom/google/android/gms/common/api/internal/o;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->p()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic I(Lcom/google/android/gms/common/api/internal/o;LB0/c;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/o;->q(LB0/c;)Z

    move-result p0

    return p0
.end method

.method public static final r(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "STEP_GETTING_REMOTE_SERVICE"

    return-object p0

    :cond_0
    const-string p0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/google/android/gms/common/api/internal/o;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic t(Lcom/google/android/gms/common/api/internal/o;)LB0/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->d:LB0/i;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/google/android/gms/common/api/internal/o;)LG0/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/google/android/gms/common/api/internal/o;)LG0/r;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->o:LG0/r;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/google/android/gms/common/api/internal/o;)Ls1/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->k:Ls1/f;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/Set;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, LG0/i;->i()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    invoke-virtual {v0}, LG0/i;->n()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/a;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v5

    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LG0/S;

    iget-object v3, v3, LG0/S;->a:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public static bridge synthetic z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/o;->b:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method


# virtual methods
.method public final J()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->u:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final a()V
    .locals 11
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->e:LB0/c;

    iput v0, p0, Lcom/google/android/gms/common/api/internal/o;->g:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/o;->l:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->n:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->p:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/o;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/a;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v8

    iget-object v7, v7, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/a$f;

    invoke-static {v7}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/common/api/a$e;->b()I

    move-result v8

    if-ne v8, v2, :cond_0

    move v8, v2

    goto :goto_1

    :cond_0
    move v8, v0

    :goto_1
    or-int/2addr v5, v8

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/o;->s:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v7}, Lcom/google/android/gms/common/api/a$f;->g()Z

    move-result v9

    if-eqz v9, :cond_2

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    if-eqz v8, :cond_1

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/o;->j:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->l:Z

    :cond_2
    :goto_2
    new-instance v9, LD0/C;

    invoke-direct {v9, p0, v6, v8}, LD0/C;-><init>(Lcom/google/android/gms/common/api/internal/o;Lcom/google/android/gms/common/api/a;Z)V

    invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->t:Lcom/google/android/gms/common/api/a$a;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, LG0/i;->o(Ljava/lang/Integer;)V

    new-instance v10, LD0/K;

    invoke-direct {v10, p0, v1}, LD0/K;-><init>(Lcom/google/android/gms/common/api/internal/o;LD0/J;)V

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/o;->t:Lcom/google/android/gms/common/api/a$a;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/o;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/l;->r()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v7}, LG0/i;->k()Ls1/a;

    move-result-object v8

    move-object v9, v10

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/common/api/a$a;->d(Landroid/content/Context;Landroid/os/Looper;LG0/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/l$b;Lcom/google/android/gms/common/api/l$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->k:Ls1/f;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/o;->h:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->u:Ljava/util/ArrayList;

    invoke-static {}, LD0/X;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, LD0/F;

    invoke-direct {v2, p0, v3}, LD0/F;-><init>(Lcom/google/android/gms/common/api/internal/o;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(LB0/c;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/o;->m(LB0/c;Lcom/google/android/gms/common/api/a;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(I)V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    new-instance p1, LB0/c;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final f()Z
    .locals 3
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->J()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->j(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/s;->t(LB0/c;)V

    return v0
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->o(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->i:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 6
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/q;->s:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    new-instance v3, LB0/c;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(Z)V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->k:Ls1/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ls1/f;->c()V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->j()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->r:LG0/i;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG0/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->o:LG0/r;

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 3
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/s;->c()V

    invoke-static {}, LD0/X;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, LD0/B;

    invoke-direct {v1, p0}, LD0/B;-><init>(Lcom/google/android/gms/common/api/internal/o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->k:Ls1/f;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/o;->p:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->o:LG0/r;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG0/r;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/o;->q:Z

    invoke-interface {v0, v1, v2}, Ls1/f;->u(LG0/r;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->j(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$c;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->j()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->i:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/s;->s:LD0/j0;

    invoke-interface {v1, v0}, LD0/j0;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final l(LB0/c;)V
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->J()V

    invoke-virtual {p1}, LB0/c;->n0()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->j(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/s;->t(LB0/c;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->s:LD0/j0;

    invoke-interface {v0, p1}, LD0/j0;->b(LB0/c;)V

    return-void
.end method

.method public final m(LB0/c;Lcom/google/android/gms/common/api/a;Z)V
    .locals 2
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a$e;->b()I

    move-result v0

    if-eqz p3, :cond_1

    invoke-virtual {p1}, LB0/c;->n0()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/o;->d:LB0/i;

    invoke-virtual {p1}, LB0/c;->n()I

    move-result v1

    invoke-virtual {p3, v1}, LB0/i;->d(I)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_3

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/o;->e:LB0/c;

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/google/android/gms/common/api/internal/o;->f:I

    if-ge v0, p3, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/o;->e:LB0/c;

    iput v0, p0, Lcom/google/android/gms/common/api/internal/o;->f:I

    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->b()Lcom/google/android/gms/common/api/a$c;

    move-result-object p2

    iget-object p3, p3, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n()V
    .locals 4
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/internal/o;->h:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->n:Z

    if-eqz v0, :cond_5

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/o;->g:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/common/api/internal/o;->h:I

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$c;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/o;->k()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/s;->j:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/a$f;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/o;->u:Ljava/util/ArrayList;

    invoke-static {}, LD0/X;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, LD0/G;

    invoke-direct {v3, p0, v0}, LD0/G;-><init>(Lcom/google/android/gms/common/api/internal/o;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final o(I)Z
    .locals 4
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/internal/o;->g:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q;->M()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GACConnecting"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unexpected callback in "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/common/api/internal/o;->h:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRemainingConnections="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/common/api/internal/o;->g:I

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->r(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleApiClient connecting is in step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " but received callback for step "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->r(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, LB0/c;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final p()Z
    .locals 4
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget v0, p0, Lcom/google/android/gms/common/api/internal/o;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/o;->h:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/q;->M()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GACConnecting"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v3, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, LB0/c;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/o;->e:LB0/c;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/o;->a:Lcom/google/android/gms/common/api/internal/s;

    iget v3, p0, Lcom/google/android/gms/common/api/internal/o;->f:I

    iput v3, v2, Lcom/google/android/gms/common/api/internal/s;->q:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/o;->l(LB0/c;)V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final q(LB0/c;)Z
    .locals 1
    .annotation build LJ2/a;
        value = "lock"
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/o;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LB0/c;->n0()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
