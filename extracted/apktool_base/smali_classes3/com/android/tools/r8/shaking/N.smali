.class public Lcom/android/tools/r8/shaking/N;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/shaking/N$a;
    }
.end annotation


# static fields
.field public static final synthetic p0:Z = true


# instance fields
.field public final A:Lcom/android/tools/r8/shaking/P;

.field public final B:Lcom/android/tools/r8/shaking/P;

.field public final C:Ljava/util/Set;

.field public final D:Ljava/util/Set;

.field public final E:Ljava/util/Set;

.field public final F:Lcom/android/tools/r8/shaking/t2;

.field public G:Ljava/util/Set;

.field public final H:Ljava/util/Set;

.field public final I:Ljava/util/Set;

.field public final J:Ljava/util/IdentityHashMap;

.field public final K:Lcom/android/tools/r8/shaking/M;

.field public final L:Ljava/util/Set;

.field public final M:Ljava/util/Set;

.field public final N:Ljava/util/Set;

.field public final O:Ljava/util/Set;

.field public final P:Ljava/util/Set;

.field public final Q:Lcom/android/tools/r8/shaking/M;

.field public final R:Lcom/android/tools/r8/shaking/L;

.field public S:Lcom/android/tools/r8/shaking/L0;

.field public final T:Lcom/android/tools/r8/shaking/m3;

.field public final U:Lcom/android/tools/r8/internal/m80;

.field public final V:Ljava/util/IdentityHashMap;

.field public final W:Lcom/android/tools/r8/shaking/x1;

.field public final X:Lcom/android/tools/r8/shaking/A;

.field public final Y:Ljava/util/Set;

.field public final Z:Ljava/util/IdentityHashMap;

.field public final a:Z

.field public final a0:Ljava/util/Set;

.field public final b:Lcom/android/tools/r8/shaking/N$a;

.field public final b0:Ljava/util/Set;

.field public final c:Lcom/android/tools/r8/internal/ju;

.field public final c0:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;

.field public final d0:Ljava/util/IdentityHashMap;

.field public e:Lcom/android/tools/r8/graph/j;

.field public final e0:Ljava/util/IdentityHashMap;

.field public final f:Lcom/android/tools/r8/graph/y;

.field public final f0:Lcom/android/tools/r8/shaking/S0;

.field public final g:Lcom/android/tools/r8/shaking/S;

.field public final g0:Lcom/android/tools/r8/internal/Y9;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final h0:Lcom/android/tools/r8/internal/m80;

.field public i:Lcom/android/tools/r8/graph/Y5;

.field public final i0:Lcom/android/tools/r8/internal/m80;

.field public final j:Lcom/android/tools/r8/internal/nJ;

.field public final j0:Lcom/android/tools/r8/internal/h80;

.field public k:Lcom/android/tools/r8/shaking/D4;

.field public final k0:Lcom/android/tools/r8/internal/JI;

.field public final l:Lcom/android/tools/r8/shaking/i0;

.field public final l0:Ljava/lang/Thread;

.field public m:Lcom/android/tools/r8/shaking/g;

.field public final m0:Lcom/android/tools/r8/internal/M70;

.field public final n:Lcom/android/tools/r8/graph/n3;

.field public final n0:Ljava/util/HashMap;

.field public final o:Lcom/android/tools/r8/graph/s5;

.field public final o0:Ljava/util/LinkedHashMap;

.field public final p:Ljava/util/IdentityHashMap;

.field public final q:Ljava/util/Set;

.field public r:Ljava/util/List;

.field public s:Lcom/android/tools/r8/internal/e3;

.field public final t:Ljava/util/IdentityHashMap;

.field public final u:Ljava/util/IdentityHashMap;

.field public final v:Ljava/util/IdentityHashMap;

.field public final w:Lcom/android/tools/r8/shaking/P;

.field public final x:Ljava/util/Set;

.field public final y:Ljava/util/Set;

.field public final z:Lcom/android/tools/r8/shaking/P;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->d:Ljava/util/IdentityHashMap;

    new-instance v6, Lcom/android/tools/r8/graph/n3;

    invoke-direct {v6}, Lcom/android/tools/r8/graph/n3;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->p:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->q:Ljava/util/Set;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->r:Ljava/util/List;

    sget-object v6, Lcom/android/tools/r8/internal/d3;->a:Lcom/android/tools/r8/internal/d3;

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->t:Ljava/util/IdentityHashMap;

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->u:Ljava/util/IdentityHashMap;

    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    new-instance v6, Lcom/android/tools/r8/shaking/P;

    invoke-direct {v6}, Lcom/android/tools/r8/shaking/P;-><init>()V

    iput-object v6, v0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    const/4 v6, 0x0

    new-array v7, v6, [Lcom/android/tools/r8/graph/J2;

    invoke-static {v7}, Lcom/android/tools/r8/internal/Al0;->b([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->x:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->y:Ljava/util/Set;

    new-instance v7, Lcom/android/tools/r8/shaking/P;

    invoke-direct {v7}, Lcom/android/tools/r8/shaking/P;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->z:Lcom/android/tools/r8/shaking/P;

    new-instance v7, Lcom/android/tools/r8/shaking/P;

    invoke-direct {v7}, Lcom/android/tools/r8/shaking/P;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->A:Lcom/android/tools/r8/shaking/P;

    new-instance v7, Lcom/android/tools/r8/shaking/P;

    invoke-direct {v7}, Lcom/android/tools/r8/shaking/P;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->B:Lcom/android/tools/r8/shaking/P;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->D:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->G:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->I:Ljava/util/Set;

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->J:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->O:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->P:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->V:Ljava/util/IdentityHashMap;

    new-instance v7, Lcom/android/tools/r8/shaking/A;

    invoke-direct {v7}, Lcom/android/tools/r8/shaking/A;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->Y:Ljava/util/Set;

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->Z:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->a0:Ljava/util/Set;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->b0:Ljava/util/Set;

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->c0:Ljava/util/IdentityHashMap;

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->d0:Ljava/util/IdentityHashMap;

    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->e0:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->j0:Lcom/android/tools/r8/internal/h80;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->l0:Ljava/lang/Thread;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->n0:Ljava/util/HashMap;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->o0:Ljava/util/LinkedHashMap;

    sget-boolean v7, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j;

    iput-object v8, v0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v8

    iput-object v8, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iput-object v3, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v8, Lcom/android/tools/r8/shaking/G;

    invoke-direct {v8}, Lcom/android/tools/r8/shaking/G;-><init>()V

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    new-instance v8, Lcom/android/tools/r8/shaking/G;

    invoke-direct {v8}, Lcom/android/tools/r8/shaking/G;-><init>()V

    goto :goto_1

    :cond_4
    new-instance v8, Lcom/android/tools/r8/shaking/T;

    invoke-direct {v8, v1, v0, v3}, Lcom/android/tools/r8/shaking/T;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/N$a;)V

    :goto_1
    iput-object v8, v0, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->h:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    iget-boolean v8, v7, Lcom/android/tools/r8/internal/nJ;->d1:Z

    iput-boolean v8, v0, Lcom/android/tools/r8/shaking/N;->a:Z

    new-instance v8, Lcom/android/tools/r8/shaking/S0;

    move-object/from16 v9, p5

    invoke-direct {v8, v1, v9}, Lcom/android/tools/r8/shaking/S0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    iput-object v8, v0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/j;

    iget-object v9, v9, Lcom/android/tools/r8/graph/j;->h:Lcom/android/tools/r8/shaking/u2;

    new-instance v10, Lcom/android/tools/r8/shaking/t2;

    iget-object v9, v9, Lcom/android/tools/r8/shaking/u2;->a:Ljava/util/Set;

    invoke-direct {v10, v9}, Lcom/android/tools/r8/shaking/t2;-><init>(Ljava/util/Set;)V

    iput-object v10, v0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    iput-object v7, v0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    new-instance v9, Lcom/android/tools/r8/shaking/x1;

    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v13, Ljava/util/IdentityHashMap;

    invoke-direct {v13}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v14, Ljava/util/IdentityHashMap;

    invoke-direct {v14}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v15, Ljava/util/IdentityHashMap;

    invoke-direct {v15}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v16, Ljava/util/IdentityHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v17, Ljava/util/IdentityHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/IdentityHashMap;-><init>()V

    sget-object v18, Lcom/android/tools/r8/internal/AV;->c:Lcom/android/tools/r8/internal/AV;

    iget-object v10, v7, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v10, v10, Lcom/android/tools/r8/internal/nJ$p;->W:Z

    if-eqz v10, :cond_5

    new-instance v10, Lcom/android/tools/r8/shaking/u1;

    invoke-direct {v10}, Lcom/android/tools/r8/shaking/u1;-><init>()V

    :goto_2
    move-object/from16 v19, v10

    goto :goto_3

    :cond_5
    new-instance v10, Lcom/android/tools/r8/shaking/v1;

    invoke-direct {v10}, Lcom/android/tools/r8/shaking/v1;-><init>()V

    goto :goto_2

    :goto_3
    move-object v11, v9

    invoke-direct/range {v11 .. v19}, Lcom/android/tools/r8/shaking/x1;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/internal/AV;Lcom/android/tools/r8/shaking/w1;)V

    iput-object v9, v0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/N;->c()Lcom/android/tools/r8/shaking/i0;

    move-result-object v9

    iput-object v9, v0, Lcom/android/tools/r8/shaking/N;->l:Lcom/android/tools/r8/shaking/i0;

    new-instance v9, Lcom/android/tools/r8/shaking/v0;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/shaking/v0;-><init>(Lcom/android/tools/r8/shaking/N;)V

    iput-object v9, v0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    iget-boolean v9, v7, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v9, :cond_6

    new-instance v9, Lcom/android/tools/r8/shaking/m3;

    invoke-direct {v9}, Lcom/android/tools/r8/shaking/m3;-><init>()V

    goto :goto_4

    :cond_6
    move-object v9, v10

    :goto_4
    iput-object v9, v0, Lcom/android/tools/r8/shaking/N;->T:Lcom/android/tools/r8/shaking/m3;

    iput-object v4, v0, Lcom/android/tools/r8/shaking/N;->H:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v1, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    new-instance v11, Lcom/android/tools/r8/shaking/G8;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/shaking/G8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    sget-boolean v12, Lcom/android/tools/r8/internal/yb0;->s:Z

    if-nez v12, :cond_8

    iget-object v13, v9, Lcom/android/tools/r8/internal/yb0;->j:Lcom/android/tools/r8/internal/vb0;

    if-nez v13, :cond_7

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_8
    :goto_5
    iput-object v11, v9, Lcom/android/tools/r8/internal/yb0;->j:Lcom/android/tools/r8/internal/vb0;

    new-instance v11, Lcom/android/tools/r8/shaking/H8;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/shaking/H8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    if-nez v12, :cond_a

    iget-object v12, v9, Lcom/android/tools/r8/internal/yb0;->k:Lcom/android/tools/r8/internal/wb0;

    if-nez v12, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_a
    :goto_6
    iput-object v11, v9, Lcom/android/tools/r8/internal/yb0;->k:Lcom/android/tools/r8/internal/wb0;

    :cond_b
    new-instance v9, Lcom/android/tools/r8/internal/iu;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/iu;-><init>()V

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v11

    if-eqz v11, :cond_1c

    :cond_c
    new-instance v11, Lcom/android/tools/r8/shaking/I;

    invoke-direct {v11, v0}, Lcom/android/tools/r8/shaking/I;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->a()Lcom/android/tools/r8/internal/H2;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/tools/r8/internal/H2;->a:Z

    if-eqz v12, :cond_d

    new-instance v12, Lcom/android/tools/r8/internal/W2;

    invoke-direct {v12, v1}, Lcom/android/tools/r8/internal/W2;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->i:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->k:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->o:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->p:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->r:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v12, Lcom/android/tools/r8/internal/Qc;->e:Lcom/android/tools/r8/internal/hC;

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    invoke-static {v12}, Lcom/android/tools/r8/ir/optimize/f;->a(Lcom/android/tools/r8/internal/nJ;)Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v12, Lcom/android/tools/r8/internal/Qc;

    sget-object v13, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    invoke-direct {v12, v1}, Lcom/android/tools/r8/internal/Qc;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v12

    if-eqz v12, :cond_f

    new-instance v12, Lcom/android/tools/r8/internal/pi;

    invoke-direct {v12, v1}, Lcom/android/tools/r8/internal/pi;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->t:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/iu;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    iget-object v13, v12, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz v13, :cond_10

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->B()Lcom/android/tools/r8/shaking/o3;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/shaking/o3;->f()Lcom/android/tools/r8/shaking/I3;

    move-result-object v12

    iget-boolean v12, v12, Lcom/android/tools/r8/shaking/I3;->e:Z

    if-eqz v12, :cond_10

    new-instance v12, Lcom/android/tools/r8/graph/S3;

    invoke-direct {v12, v11}, Lcom/android/tools/r8/graph/S3;-><init>(Lcom/android/tools/r8/shaking/I;)V

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->j:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->l:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->m:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->p:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->r:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v12

    sget-object v13, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v12, v13}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_7

    :cond_11
    new-instance v12, Lcom/android/tools/r8/internal/Az;

    invoke-direct {v12, v1, v0}, Lcom/android/tools/r8/internal/Az;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    iget-object v13, v9, Lcom/android/tools/r8/internal/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    iget-object v12, v1, Lcom/android/tools/r8/graph/y;->n:Lcom/android/tools/r8/shaking/D4;

    if-eqz v12, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/shaking/D4;->l:Ljava/util/Set;

    goto :goto_8

    :cond_12
    sget-object v12, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_8
    if-eqz v12, :cond_13

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_13

    new-instance v12, Lcom/android/tools/r8/shaking/V0;

    invoke-direct {v12, v1, v0, v2}, Lcom/android/tools/r8/shaking/V0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;Ljava/util/concurrent/ExecutorService;)V

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->t:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ;->f0:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lcom/android/tools/r8/internal/xD;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/xD;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->n:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->s:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_14
    iput-object v10, v1, Lcom/android/tools/r8/graph/y;->F:Lcom/android/tools/r8/internal/wD;

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    sget-object v12, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-interface {v2, v12}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Lcom/android/tools/r8/internal/nK;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/nK;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v12

    if-eqz v12, :cond_16

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/Qv;->b:Z

    if-eqz v2, :cond_16

    new-instance v2, Lcom/android/tools/r8/internal/pK;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/pK;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->b:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->e:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v12, v9, Lcom/android/tools/r8/internal/iu;->g:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    sget-object v2, Lcom/android/tools/r8/kotlin/V;->e:Lcom/android/tools/r8/internal/o40;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v12, v2, Lcom/android/tools/r8/internal/nJ;->i:Lcom/android/tools/r8/shaking/o3;

    if-eqz v12, :cond_17

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->v1:Lcom/android/tools/r8/internal/qJ;

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/qJ;->a:Z

    if-nez v2, :cond_17

    new-instance v2, Lcom/android/tools/r8/kotlin/V;

    invoke-direct {v2, v1, v11, v4}, Lcom/android/tools/r8/kotlin/V;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/I;Ljava/util/Set;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/tools/r8/internal/nJ$n;->b:Z

    if-eqz v2, :cond_18

    new-instance v2, Lcom/android/tools/r8/internal/ka0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/ka0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->m:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->t:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    invoke-virtual {v2}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->isOptimizedShrinking()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lcom/android/tools/r8/internal/Nf0;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/Nf0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lcom/android/tools/r8/internal/Kf0;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Kf0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->l:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v5, :cond_1b

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v9, Lcom/android/tools/r8/internal/iu;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    new-instance v2, Lcom/android/tools/r8/shaking/g0;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/shaking/g0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/tools/r8/shaking/X;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/shaking/X;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v7, Lcom/android/tools/r8/internal/nJ;->J0:Z

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/android/tools/r8/shaking/V;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/shaking/V;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v9, Lcom/android/tools/r8/internal/iu;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/iu;->a()Lcom/android/tools/r8/internal/ju;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    new-instance v2, Lcom/android/tools/r8/shaking/M;

    new-instance v4, Lcom/android/tools/r8/shaking/I8;

    invoke-direct {v4, v8}, Lcom/android/tools/r8/shaking/I8;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    invoke-direct {v2, v0, v4}, Lcom/android/tools/r8/shaking/M;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2, v6}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->L:Ljava/util/Set;

    new-instance v2, Ljava/util/IdentityHashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2, v6}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->N:Ljava/util/Set;

    new-instance v2, Lcom/android/tools/r8/shaking/M;

    new-instance v4, Lcom/android/tools/r8/shaking/I8;

    invoke-direct {v4, v8}, Lcom/android/tools/r8/shaking/I8;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    invoke-direct {v2, v0, v4}, Lcom/android/tools/r8/shaking/M;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    new-instance v2, Lcom/android/tools/r8/shaking/L;

    new-instance v4, Lcom/android/tools/r8/shaking/J8;

    invoke-direct {v4, v8}, Lcom/android/tools/r8/shaking/J8;-><init>(Lcom/android/tools/r8/shaking/S0;)V

    invoke-direct {v2, v0, v4}, Lcom/android/tools/r8/shaking/L;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/I00;

    move-result-object v2

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/nJ;)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1d

    goto :goto_a

    :cond_1d
    new-instance v10, Lcom/android/tools/r8/internal/JI;

    invoke-direct {v10, v1, v2}, Lcom/android/tools/r8/internal/JI;-><init>(Lcom/android/tools/r8/graph/y;I)V

    :goto_a
    iput-object v10, v0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    goto :goto_b

    :cond_1e
    sget-object v1, Lcom/android/tools/r8/internal/Kt;->a:Lcom/android/tools/r8/internal/Kt;

    iput-object v1, v0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    iput-object v10, v0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    :goto_b
    invoke-virtual/range {p6 .. p6}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    new-instance v2, Lcom/android/tools/r8/graph/s5;

    invoke-direct {v2, v1, v8}, Lcom/android/tools/r8/graph/s5;-><init>(ZLcom/android/tools/r8/shaking/S0;)V

    iput-object v2, v0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/p0;
    .locals 0

    .line 1551
    sget-object p0, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/x0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/D0;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    .line 305
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/M4;
    .locals 1

    .line 579
    new-instance p0, Lcom/android/tools/r8/shaking/M4;

    const/4 v0, 0x0

    .line 580
    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/M4;-><init>(Lcom/android/tools/r8/shaking/M4;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/R0;)Lcom/android/tools/r8/shaking/X1;
    .locals 0

    .line 2
    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/cz;)Lcom/android/tools/r8/shaking/i0;
    .locals 0

    .line 24
    sget-object p0, Lcom/android/tools/r8/internal/la0;->r:Lcom/android/tools/r8/shaking/i0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/r0;)Ljava/util/List;
    .locals 0

    .line 620
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/graph/D3$a;)V
    .locals 1

    .line 58
    iget-object v0, p1, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    .line 59
    iget-object p1, p1, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p1}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    instance-of v0, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 1715
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 1224
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 1712
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/k1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/k1;Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 1195
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/k1;->a(Lcom/android/tools/r8/shaking/k1;)Lcom/android/tools/r8/shaking/k1;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/m2;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 1092
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 1093
    iget-object p0, p0, Lcom/android/tools/r8/shaking/m2;->c:Ljava/util/Set;

    .line 1094
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/p1;)V
    .locals 0

    .line 451
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/p1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/p1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/p1;Lcom/android/tools/r8/shaking/p1;)V
    .locals 0

    .line 1212
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/p1;->a(Lcom/android/tools/r8/shaking/p1;)Lcom/android/tools/r8/shaking/p1;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 1487
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 0

    .line 1515
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1516
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/E5;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 81
    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/r0;)Z
    .locals 0

    .line 568
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Z
    .locals 1

    .line 53
    iget-object v0, p1, Lcom/android/tools/r8/graph/o3;->a:Lcom/android/tools/r8/graph/l1;

    if-ne p0, v0, :cond_1

    .line 54
    sget-object p0, Lcom/android/tools/r8/graph/o3;->e:Lcom/android/tools/r8/graph/o3;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Ka;)Z
    .locals 1

    .line 338
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Ka;->r()Lcom/android/tools/r8/internal/W9;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    instance-of v0, v0, Lcom/android/tools/r8/internal/ka;

    if-nez v0, :cond_0

    .line 340
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Ka;->r()Lcom/android/tools/r8/internal/W9;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 341
    instance-of p0, p0, Lcom/android/tools/r8/internal/Ma;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/x0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/internal/m80;
    .locals 0

    .line 338
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/M4;
    .locals 1

    .line 164
    new-instance p0, Lcom/android/tools/r8/shaking/M4;

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/M4;-><init>(Lcom/android/tools/r8/shaking/M4;)V

    return-object p0
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 337
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/H1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 355
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 594
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/k1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/k1;Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 339
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/k1;->a(Lcom/android/tools/r8/shaking/k1;)Lcom/android/tools/r8/shaking/k1;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/shaking/p1;Lcom/android/tools/r8/shaking/p1;)V
    .locals 0

    .line 349
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/p1;->a(Lcom/android/tools/r8/shaking/p1;)Lcom/android/tools/r8/shaking/p1;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/M4;
    .locals 1

    .line 55
    new-instance p0, Lcom/android/tools/r8/shaking/M4;

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/android/tools/r8/shaking/M4;-><init>(Lcom/android/tools/r8/shaking/M4;)V

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 154
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    return-void
.end method

.method public static c(Lcom/android/tools/r8/shaking/k1;)Z
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 8
    check-cast p0, Lcom/android/tools/r8/shaking/j1;

    .line 9
    iget-boolean p0, p0, Lcom/android/tools/r8/shaking/j1;->p:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static d(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/X1;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/M2;)Ljava/util/Map;
    .locals 0

    .line 87
    new-instance p0, Ljava/util/IdentityHashMap;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/k1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/shaking/k1;

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method

.method public static synthetic h(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->A(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/f80;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/tools/r8/internal/f80;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static synthetic j(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 0

    .line 27
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    .line 622
    new-instance v1, Lcom/android/tools/r8/shaking/U7;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/shaking/U7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/l1;)V

    new-instance v2, Lcom/android/tools/r8/shaking/V7;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/shaking/V7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D5;)V

    .line 623
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    .line 76
    new-instance v0, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v1, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    .line 77
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->l0:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/K1;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 382
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 384
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    return-object p1

    .line 387
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {p2, v0, p4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    :cond_2
    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 344
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 347
    new-instance p3, Lcom/android/tools/r8/shaking/W7;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/shaking/W7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Supplier;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Z)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 631
    invoke-virtual {v0, p1, p4}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object p4

    .line 632
    new-instance v0, Lcom/android/tools/r8/shaking/u9;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/shaking/u9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/A2;)V

    new-instance v1, Lcom/android/tools/r8/shaking/v9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/v9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    .line 633
    invoke-virtual {p4, v0, v0, v0, v1}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object p4
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K1;)Lcom/android/tools/r8/graph/Z4;
    .locals 0

    .line 644
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 645
    new-instance p2, Lcom/android/tools/r8/shaking/U8;

    invoke-direct {p2, p0, p3}, Lcom/android/tools/r8/shaking/U8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;
    .locals 2

    .line 656
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 657
    new-instance v1, Lcom/android/tools/r8/shaking/C9;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/tools/r8/shaking/C9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/D5;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;
    .locals 8

    .line 1007
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 1008
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-object v0

    .line 1010
    :cond_0
    new-instance v7, Lcom/android/tools/r8/shaking/g9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/shaking/g9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/o3;
    .locals 7

    .line 202
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 203
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 204
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    if-nez v0, :cond_2

    .line 205
    new-instance v0, Lcom/android/tools/r8/graph/o3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    .line 206
    sget-object v2, Lcom/android/tools/r8/graph/b;->a:Lcom/android/tools/r8/graph/b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/android/tools/r8/graph/o3;-><init>(Lcom/android/tools/r8/graph/l1;ILcom/android/tools/r8/graph/d;Lcom/android/tools/r8/graph/d;)V

    .line 207
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;

    .line 208
    instance-of v1, p1, Lcom/android/tools/r8/graph/F5;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    .line 210
    iget-object v1, v1, Lcom/android/tools/r8/internal/ju;->q:[Lcom/android/tools/r8/internal/EZ;

    .line 211
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 212
    check-cast v4, Lcom/android/tools/r8/shaking/V0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    .line 214
    iget-boolean v6, v4, Lcom/android/tools/r8/shaking/V0;->g:Z

    if-nez v6, :cond_0

    iget-object v6, v4, Lcom/android/tools/r8/shaking/V0;->d:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    :cond_0
    iget-object v4, v4, Lcom/android/tools/r8/shaking/V0;->f:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;)Lcom/android/tools/r8/internal/rr0;
    .locals 1

    .line 1327
    new-instance v0, Lcom/android/tools/r8/shaking/Z6;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/Z6;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/iR;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;
    .locals 3

    .line 848
    sget-object v0, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 849
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 850
    iget-object v2, v1, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v2, :cond_0

    .line 851
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    if-eq p1, v2, :cond_0

    .line 852
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p1

    .line 853
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p2

    sget-object v2, Lcom/android/tools/r8/internal/Dz$a;->q:Lcom/android/tools/r8/internal/Dz$a;

    .line 854
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;
    .locals 2

    .line 913
    sget-object p2, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 914
    iget-object v1, v0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_0

    .line 915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    instance-of v1, p1, Lcom/android/tools/r8/shaking/Z0;

    if-eqz v1, :cond_0

    .line 917
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/b1;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    .line 918
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p3

    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->p:Lcom/android/tools/r8/internal/Dz$a;

    .line 919
    invoke-virtual {v0, p1, p3, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_0
    return-object p2
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/X1;
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 349
    iget-object v1, v0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object p2

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 351
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->c:Lcom/android/tools/r8/internal/Dz$a;

    .line 352
    invoke-virtual {v0, p2, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    .line 353
    :cond_0
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/h0;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1350
    const-string v3, "Rewrite with deferred results"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1351
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->h:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/S;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1353
    const-string v3, "Remove dead protos"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1354
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    new-instance v4, Lcom/android/tools/r8/shaking/L8;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/shaking/L8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1355
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    .line 1356
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->G:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v4, v3

    .line 1357
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3, v4}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-static {v3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v10

    .line 1358
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    new-instance v4, Lcom/android/tools/r8/shaking/M8;

    invoke-direct {v4, v10}, Lcom/android/tools/r8/shaking/M8;-><init>(Ljava/util/Set;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 1359
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->G:Ljava/util/Set;

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1360
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1361
    const-string v3, "Prune field access mappings"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1362
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    new-instance v4, Lcom/android/tools/r8/shaking/N8;

    invoke-direct {v4}, Lcom/android/tools/r8/shaking/N8;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/n3;->a(Ljava/util/function/BiPredicate;)V

    .line 1363
    sget-boolean v3, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v3, :cond_2

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 1364
    sget-boolean v5, Lcom/android/tools/r8/graph/n3;->b:Z

    if-nez v5, :cond_1

    .line 1365
    iget-object v5, v4, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 1366
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    iget-object v4, v4, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v5, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1367
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1368
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    if-nez v3, :cond_3

    .line 1369
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/x0;)V

    .line 1370
    :cond_3
    const-string v4, "Prune dead items"

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1371
    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1372
    const-string v6, "Prune keep info"

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1373
    iget-object v7, v4, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 1374
    invoke-virtual {v7, v5, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    .line 1375
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1376
    const-string v7, "Prune others"

    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1377
    iget-object v4, v4, Lcom/android/tools/r8/shaking/D4;->f:Ljava/util/Set;

    invoke-static {v4, v5, v0}, Lcom/android/tools/r8/shaking/D4;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    .line 1378
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1379
    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 1380
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1381
    invoke-virtual {v4}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1382
    :cond_4
    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1383
    iget-object v5, v4, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    if-eqz v5, :cond_7

    if-nez v3, :cond_6

    .line 1384
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    if-eq v3, v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1385
    :cond_6
    :goto_1
    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1386
    iget-object v3, v5, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 1387
    invoke-virtual {v3, v4, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    .line 1388
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1389
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1390
    iget-object v3, v5, Lcom/android/tools/r8/shaking/D4;->f:Ljava/util/Set;

    invoke-static {v3, v4, v0}, Lcom/android/tools/r8/shaking/D4;->a(Ljava/util/Set;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/shaking/N;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1392
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1393
    const-string v3, "Ensure static factory references"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1394
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1395
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/shaking/O8;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/shaking/O8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 1396
    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->a:Ljava/util/Set;

    .line 1397
    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 1398
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1399
    const-string v3, "Rebuild application"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1400
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 1401
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 1402
    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->D:Ljava/util/Set;

    new-instance v6, Lcom/android/tools/r8/shaking/Q8;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/shaking/Q8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-interface {v5, v6}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 1403
    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/f0;

    .line 1404
    invoke-interface {v6}, Lcom/android/tools/r8/graph/S;->f0()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1405
    invoke-interface {v6}, Lcom/android/tools/r8/graph/S;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1406
    :cond_8
    move-object v7, v6

    check-cast v7, Lcom/android/tools/r8/graph/E0;

    .line 1407
    instance-of v7, v7, Lcom/android/tools/r8/graph/I0;

    if-eqz v7, :cond_9

    .line 1408
    invoke-interface {v6}, Lcom/android/tools/r8/graph/S;->k()Lcom/android/tools/r8/graph/I0;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1409
    :cond_9
    sget-boolean v6, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-eqz v6, :cond_a

    goto :goto_2

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1410
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v5

    .line 1411
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object v5

    .line 1412
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v5

    .line 1413
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/g3$a;->a(Ljava/util/Collection;)Lcom/android/tools/r8/graph/g3$a;

    move-result-object v3

    .line 1414
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1415
    invoke-static {v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v4

    .line 1416
    sget-boolean v5, Lcom/android/tools/r8/graph/g3$a;->l:Z

    if-nez v5, :cond_d

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1417
    :cond_d
    :goto_3
    iput-object v4, v3, Lcom/android/tools/r8/graph/g3$a;->h:Lcom/android/tools/r8/internal/XB;

    .line 1418
    iget-object v4, v3, Lcom/android/tools/r8/graph/g3$a;->j:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1419
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v3

    .line 1420
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1421
    sget-boolean v4, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v4, :cond_e

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/x0;)V

    .line 1422
    :cond_e
    new-instance v4, Lcom/android/tools/r8/shaking/R8;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/shaking/R8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/shaking/N;->a()V

    .line 1424
    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    iget-object v6, v0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/e3;->a()Lcom/android/tools/r8/internal/AV;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1425
    sget-boolean v7, Lcom/android/tools/r8/shaking/x1;->j:Z

    if-nez v7, :cond_10

    iget-object v8, v5, Lcom/android/tools/r8/shaking/x1;->h:Lcom/android/tools/r8/internal/AV;

    .line 1426
    sget-object v9, Lcom/android/tools/r8/internal/AV;->c:Lcom/android/tools/r8/internal/AV;

    if-ne v8, v9, :cond_f

    goto :goto_4

    .line 1427
    :cond_f
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_10
    :goto_4
    if-nez v7, :cond_12

    if-eqz v6, :cond_11

    goto :goto_5

    .line 1428
    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1429
    :cond_12
    :goto_5
    iput-object v6, v5, Lcom/android/tools/r8/shaking/x1;->h:Lcom/android/tools/r8/internal/AV;

    .line 1430
    const-string v5, "Create app info with liveness"

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1431
    new-instance v15, Lcom/android/tools/r8/shaking/i;

    .line 1432
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/tools/r8/synthesis/J;->a(Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/synthesis/b;

    move-result-object v6

    .line 1433
    iget-object v7, v1, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 1434
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v8

    .line 1435
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1436
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1437
    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/G;)Ljava/util/IdentityHashMap;

    move-result-object v4

    .line 1438
    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_14

    .line 1439
    invoke-static {v4}, Lcom/android/tools/r8/shaking/t2;->a(Ljava/util/IdentityHashMap;)Lcom/android/tools/r8/diagnostic/internal/m;

    move-result-object v4

    .line 1440
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/tools/r8/internal/nJ;->Y0:Z

    if-eqz v9, :cond_13

    .line 1441
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 1442
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_6

    .line 1443
    :cond_13
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 1444
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 1445
    :cond_14
    :goto_6
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 1446
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 1447
    new-instance v4, Lcom/android/tools/r8/shaking/u2;

    iget-object v5, v3, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    iget-object v9, v3, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 1448
    invoke-virtual {v9}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    iget-object v3, v3, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 1449
    invoke-static {v5, v9, v3}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/tools/r8/shaking/u2;-><init>(Ljava/util/Set;)V

    move-object v9, v4

    goto :goto_7

    .line 1450
    :cond_15
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/shaking/u2;

    move-result-object v3

    move-object v9, v3

    :goto_7
    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 1451
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/errors/q;

    invoke-direct {v4}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v11

    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 1452
    iget-object v3, v3, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 1453
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 1454
    :cond_16
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v12

    .line 1455
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/h1;

    .line 1456
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1457
    :cond_17
    iget-object v13, v0, Lcom/android/tools/r8/shaking/N;->L:Ljava/util/Set;

    iget-object v14, v0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    iget-object v3, v0, Lcom/android/tools/r8/shaking/N;->N:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/tools/r8/shaking/N;->O:Ljava/util/Set;

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->P:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 1458
    iget-object v2, v2, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 1459
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    :cond_18
    move-object/from16 v16, v4

    .line 1460
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 1461
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/tools/r8/graph/h1;

    move-object/from16 v18, v2

    .line 1462
    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    goto :goto_9

    .line 1463
    :cond_19
    iget-object v2, v0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    .line 1464
    sget-boolean v17, Lcom/android/tools/r8/graph/s5;->i:Z

    move-object/from16 v18, v5

    if-nez v17, :cond_1b

    .line 1465
    iget-object v5, v2, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    if-eqz v5, :cond_1a

    goto :goto_a

    .line 1466
    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1467
    :cond_1b
    :goto_a
    iget-object v5, v2, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    if-nez v5, :cond_1c

    .line 1468
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_1c
    if-nez v17, :cond_1d

    .line 1469
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/s5;->b(Lcom/android/tools/r8/graph/d1;)V

    :cond_1d
    const/4 v5, 0x0

    .line 1470
    iput-object v5, v2, Lcom/android/tools/r8/graph/s5;->h:Lcom/android/tools/r8/graph/r5;

    .line 1471
    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->p:Ljava/util/IdentityHashMap;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    move-object/from16 v17, v5

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    move-object/from16 v22, v1

    iget-object v1, v5, Lcom/android/tools/r8/shaking/D4;->j:Ljava/util/Map;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/D4;->f:Ljava/util/Set;

    .line 1472
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v24

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/D4;->g:Ljava/util/Set;

    .line 1473
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v25

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/D4;->h:Ljava/util/Set;

    .line 1474
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v26

    iget-object v5, v0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    move-object/from16 v23, v1

    iget-object v1, v5, Lcom/android/tools/r8/shaking/D4;->i:Lcom/android/tools/r8/internal/W60;

    iget-object v5, v5, Lcom/android/tools/r8/shaking/D4;->k:Ljava/util/Set;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->q:Ljava/util/Set;

    move-object/from16 v20, v2

    .line 1475
    new-instance v2, Lcom/android/tools/r8/internal/Y10;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Y10;-><init>()V

    .line 1476
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v28, v5

    move-object/from16 v5, v21

    check-cast v5, Lcom/android/tools/r8/graph/v2;

    move-object/from16 v21, v4

    .line 1477
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v21

    move-object/from16 v5, v28

    goto :goto_b

    :cond_1e
    move-object/from16 v21, v4

    .line 1478
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/v2;

    .line 1479
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 1480
    :cond_1f
    sget-object v29, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 1481
    sget-object v30, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->Y:Ljava/util/Set;

    move-object/from16 v31, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->Z:Ljava/util/IdentityHashMap;

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->a0:Ljava/util/Set;

    move-object/from16 v33, v1

    move-object/from16 v4, v17

    move-object/from16 v1, v18

    move-object v5, v15

    move-object/from16 v34, v15

    move-object v15, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v21

    move-object/from16 v21, v4

    move-object/from16 v28, v2

    invoke-direct/range {v5 .. v33}, Lcom/android/tools/r8/shaking/i;-><init>(Lcom/android/tools/r8/synthesis/b;Lcom/android/tools/r8/internal/Zd;Lcom/android/tools/r8/shaking/o2;Lcom/android/tools/r8/shaking/u2;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/graph/n3;Lcom/android/tools/r8/graph/t5;Ljava/util/Map;Lcom/android/tools/r8/shaking/y1;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W60;Lcom/android/tools/r8/internal/Y10;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;)V

    .line 1482
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v1, p1

    .line 1483
    iget-object v1, v1, Lcom/android/tools/r8/graph/h;->f:Lcom/android/tools/r8/internal/U6;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/U6;->e()V

    .line 1484
    iget-object v1, v0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ$p;->w:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_20

    .line 1485
    iget-object v2, v0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    move-object/from16 v3, v34

    invoke-interface {v1, v3, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_20
    move-object/from16 v3, v34

    .line 1486
    :goto_d
    new-instance v1, Lcom/android/tools/r8/shaking/h0;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/shaking/h0;-><init>(Lcom/android/tools/r8/shaking/i;)V

    return-object v1
.end method

.method public a(Lcom/android/tools/r8/shaking/D4;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1095
    iput-object p1, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    .line 1096
    iget-object v0, p1, Lcom/android/tools/r8/shaking/E4;->d:Lcom/android/tools/r8/internal/h80;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j0:Lcom/android/tools/r8/internal/h80;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/S9;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/S9;-><init>(Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1097
    const-string v0, "Transfer minimum keep info"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1098
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/E4;)V

    .line 1099
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1100
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    sget-object v0, Lcom/android/tools/r8/internal/d3;->a:Lcom/android/tools/r8/internal/d3;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1101
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1102
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->r:Ljava/util/List;

    .line 1103
    invoke-static {p1, v0, p2}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/e3;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    .line 1104
    const-string p1, "Model library"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1105
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {p1}, Lcom/android/tools/r8/internal/si;->a(Lcom/android/tools/r8/graph/y;)V

    .line 1106
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_1

    .line 1107
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1108
    const-string v0, "Retain keep info"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1109
    move-object v0, p1

    check-cast v0, Lcom/android/tools/r8/shaking/x1;

    .line 1110
    iget-object v0, v0, Lcom/android/tools/r8/shaking/x1;->h:Lcom/android/tools/r8/internal/AV;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/AV;->a()Lcom/android/tools/r8/internal/e3;

    move-result-object v0

    .line 1111
    iput-object v0, p0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    .line 1112
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 1113
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/shaking/y1;)V

    .line 1114
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/da;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/shaking/da;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;)V

    new-instance v3, Lcom/android/tools/r8/shaking/j7;

    invoke-direct {v3, p0, v0}, Lcom/android/tools/r8/shaking/j7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;)V

    new-instance v0, Lcom/android/tools/r8/shaking/u7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/u7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 1115
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1116
    :cond_3
    :goto_1
    new-instance p1, Lcom/android/tools/r8/shaking/F7;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/shaking/F7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const-string v0, "Unconditional rules"

    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 1117
    const-string p1, "Enqueue all"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1118
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/N;->d()V

    .line 1119
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1120
    const-string p1, "Trace"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1121
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1122
    const-string p1, "Trace AndroidManifest.xml files"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1123
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1124
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    .line 1125
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yb0;->e()V

    .line 1126
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->G()Lcom/android/tools/r8/shaking/D4;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/shaking/D4;->m:Lcom/android/tools/r8/internal/W;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/nI;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1127
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1128
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    .line 1129
    const-string v2, "Non shrunken dex code"

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 1130
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1131
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 1132
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1133
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 1134
    const-string p1, "Finalize library override"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1135
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 1136
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 1137
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1138
    sget-object v1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    goto :goto_3

    .line 1139
    :cond_8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1140
    const-string p1, "Finish analysis"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1141
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 1142
    iget-object p1, p1, Lcom/android/tools/r8/internal/ju;->s:[Lcom/android/tools/r8/internal/fx;

    .line 1143
    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, p2, :cond_9

    aget-object v2, p1, v1

    .line 1144
    invoke-interface {v2, p0}, Lcom/android/tools/r8/internal/fx;->a(Lcom/android/tools/r8/shaking/N;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1145
    :cond_9
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->S()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    .line 1146
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1147
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->O:Lcom/android/tools/r8/internal/yb0;

    .line 1148
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v1

    .line 1149
    iput-object p2, p1, Lcom/android/tools/r8/internal/yb0;->j:Lcom/android/tools/r8/internal/vb0;

    .line 1150
    iput-object p2, p1, Lcom/android/tools/r8/internal/yb0;->k:Lcom/android/tools/r8/internal/wb0;

    .line 1151
    iget-object v2, p1, Lcom/android/tools/r8/internal/yb0;->o:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    if-nez v1, :cond_a

    .line 1152
    iget-object p1, p1, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 1153
    iget-object p1, p1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 1154
    iget-object p1, p1, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    .line 1155
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v1, "unmodifiableList(_resources)"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ng0;

    .line 1157
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ng0;->a(Z)V

    goto :goto_5

    .line 1158
    :cond_a
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1159
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_d

    .line 1160
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->R0:Z

    if-eqz p1, :cond_d

    .line 1161
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 1162
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1163
    :cond_d
    const-string p1, "Finish compat building"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1164
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz p1, :cond_10

    .line 1165
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->T:Lcom/android/tools/r8/shaking/m3;

    .line 1166
    new-instance v1, Lcom/android/tools/r8/shaking/n3;

    .line 1167
    iget-object v0, v0, Lcom/android/tools/r8/shaking/m3;->a:Ljava/util/Set;

    .line 1168
    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/n3;-><init>(Ljava/util/Set;)V

    .line 1169
    sget-boolean v0, Lcom/android/tools/r8/graph/y;->W:Z

    if-nez v0, :cond_f

    .line 1170
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 1171
    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->d1:Z

    if-eqz v0, :cond_e

    goto :goto_7

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1172
    :cond_f
    :goto_7
    iput-object v1, p1, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    goto :goto_8

    .line 1173
    :cond_10
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->T:Lcom/android/tools/r8/shaking/m3;

    if-nez p1, :cond_11

    goto :goto_8

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1174
    :cond_12
    :goto_8
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1175
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1176
    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->g:Lcom/android/tools/r8/shaking/N$a;

    if-ne p1, v0, :cond_13

    return-object p2

    .line 1177
    :cond_13
    const-string p1, "Create result"

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1178
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/h0;

    move-result-object p1

    .line 1179
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    .line 1180
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/D3;Lcom/android/tools/r8/internal/Oy;)Ljava/lang/Boolean;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/internal/Oy;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/shaking/y1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 447
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/internal/bz;)Ljava/lang/Boolean;
    .locals 1

    .line 357
    new-instance v0, Lcom/android/tools/r8/shaking/aa;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/tools/r8/shaking/aa;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/b2;)V

    invoke-virtual {p4, p1, p2, v0}, Lcom/android/tools/r8/internal/bz;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Ljava/util/function/BooleanSupplier;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .line 1511
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1512
    :cond_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 1513
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    new-instance v2, Lcom/android/tools/r8/shaking/r7;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/shaking/r7;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/JI;->a(Ljava/util/function/BiConsumer;)V

    .line 1514
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 1488
    new-instance v0, Lcom/android/tools/r8/shaking/o7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/o7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 1489
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    if-eqz v1, :cond_0

    .line 1490
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/JI;->a(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 1491
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-interface {v0, p2}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 1492
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 1493
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1494
    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 1495
    invoke-interface {v1, v2}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1496
    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    goto :goto_0

    .line 1497
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/E0;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1498
    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    goto :goto_0

    .line 1499
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 1500
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1502
    sget-object v2, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 1503
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v1

    .line 1504
    sget-object v2, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 1505
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v2

    .line 1506
    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    .line 1507
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 1508
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 1509
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/H1;->a(Lcom/android/tools/r8/shaking/H1;)Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 1510
    invoke-virtual {v1, p2, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 0

    .line 642
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4$a;)V

    .line 643
    new-instance p3, Lcom/android/tools/r8/shaking/X8;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/X8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance p4, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {p4, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;)V
    .locals 2

    .line 71
    new-instance v0, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v1, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 72
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 73
    iget-object v0, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/I2;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 74
    iget-object p1, p1, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object p1, p1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 75
    invoke-virtual {p0, v2, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 359
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/x;->h(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 361
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p3

    .line 362
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 363
    iget-object p4, p4, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 364
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p4, v1

    .line 365
    invoke-interface {v2, p1, p3, p2}, Lcom/android/tools/r8/internal/Es0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;ZLcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4;)V
    .locals 3

    .line 1011
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1012
    :cond_0
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p5

    .line 1013
    iget-object v0, p5, Lcom/android/tools/r8/graph/Z4$c;->b:Lcom/android/tools/r8/graph/E0;

    .line 1014
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;)V

    return-void

    .line 1016
    :cond_1
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1017
    :cond_2
    new-instance v2, Lcom/android/tools/r8/shaking/O;

    invoke-direct {v2, p1, p3}, Lcom/android/tools/r8/shaking/O;-><init>(Lcom/android/tools/r8/graph/A2;Z)V

    .line 1018
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->V:Ljava/util/IdentityHashMap;

    sget-object p3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 1019
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    if-eqz p1, :cond_3

    .line 1020
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 1021
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {p5}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    return-void

    .line 1022
    :cond_3
    invoke-virtual {p0, p4, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 1023
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p5, p2, p1}, Lcom/android/tools/r8/graph/Z4$c;->b(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    return-void

    .line 1024
    :cond_4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->V:Ljava/util/IdentityHashMap;

    new-instance p3, Lcom/android/tools/r8/internal/Wz0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/Wz0;-><init>()V

    .line 1025
    invoke-static {p3}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    new-instance p3, Lcom/android/tools/r8/internal/dA0;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/dA0;-><init>()V

    .line 1026
    invoke-static {p3}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object p3

    invoke-interface {p1, v2, p3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    .line 1027
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 1028
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance p3, Lcom/android/tools/r8/shaking/f7;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/f7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance p4, Lcom/android/tools/r8/shaking/g7;

    invoke-direct {p4, p0}, Lcom/android/tools/r8/shaking/g7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 1029
    invoke-virtual {p5, p2, p1, p3, p4}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;

    move-result-object p1

    .line 1030
    invoke-virtual {p0, p1, p5}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H4;Lcom/android/tools/r8/graph/Z4$c;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 0

    .line 627
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->k()Lcom/android/tools/r8/graph/Z4$a;

    move-result-object p2

    .line 628
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4$a;)V

    .line 629
    new-instance p2, Lcom/android/tools/r8/shaking/X8;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/shaking/X8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance p4, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {p4, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/Z4;)V
    .locals 1

    .line 658
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/J4;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 660
    :cond_0
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 661
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 663
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 664
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    .line 665
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 666
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result p4

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->P:Ljava/util/Set;

    .line 667
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 668
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p4, p1, p3, p2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 8

    .line 245
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 246
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 247
    instance-of v0, v0, Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 249
    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-interface {v0}, Lcom/android/tools/r8/graph/d1;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 251
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 252
    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->u6:Lcom/android/tools/r8/graph/A2;

    if-eq v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->v6:Lcom/android/tools/r8/graph/A2;

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    .line 254
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->O:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/tools/r8/graph/D0;->g:Lcom/android/tools/r8/graph/C2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 258
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 259
    invoke-static {p1, v0, v1, p2}, Lcom/android/tools/r8/internal/kR;->b(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/kR;

    move-result-object v0

    if-nez v0, :cond_4

    .line 260
    iget-object p1, p1, Lcom/android/tools/r8/graph/D0;->h:Ljava/util/List;

    .line 261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/R2;

    .line 262
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    instance-of v0, p3, Lcom/android/tools/r8/graph/X2;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/R2;->z0()Lcom/android/tools/r8/graph/X2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/X2;->W0()Lcom/android/tools/r8/graph/d4;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/C2;

    .line 265
    iget-object v0, p3, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 266
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/B2;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    goto :goto_1

    :cond_3
    return-void

    .line 268
    :cond_4
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ$f;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 269
    :cond_6
    :goto_2
    iget-object v1, v0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/M2;

    .line 270
    invoke-virtual {p0, v5, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    .line 271
    iget-object v6, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v7, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v6, v5, v0, v7}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/kR;Lcom/android/tools/r8/graph/h;)V

    goto :goto_3

    .line 272
    :cond_7
    new-instance v1, Lcom/android/tools/r8/shaking/a1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/a1;-><init>(Lcom/android/tools/r8/internal/kR;)V

    .line 273
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 274
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, v0, Lcom/android/tools/r8/internal/kR;->e:Ljava/util/ArrayList;

    .line 275
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v5

    .line 276
    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;)V

    .line 277
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->p:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/N7;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/N7;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 278
    iget-object p1, v0, Lcom/android/tools/r8/internal/kR;->g:Lcom/android/tools/r8/graph/O2;

    new-instance v1, Lcom/android/tools/r8/shaking/O7;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/shaking/O7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/O2;->forEach(Ljava/util/function/Consumer;)V

    .line 279
    iget-object p1, v0, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 280
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_9

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 281
    :cond_9
    :goto_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 282
    iget-object p1, p1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 283
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p1

    .line 284
    :pswitch_0
    new-instance p1, Lcom/android/tools/r8/shaking/N1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/N1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    if-eqz p3, :cond_a

    .line 285
    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/x;->i(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_a

    goto/16 :goto_7

    .line 286
    :cond_a
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    const/4 p3, 0x1

    .line 287
    invoke-virtual {p0, v1, p3, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    .line 288
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 289
    iget-object p3, p3, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 290
    array-length v0, p3

    :goto_5
    if-ge v3, v0, :cond_d

    aget-object v2, p3, v3

    .line 291
    invoke-interface {v2, p1, p2}, Lcom/android/tools/r8/internal/Es0;->b(Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 292
    :pswitch_1
    new-instance p1, Lcom/android/tools/r8/shaking/N1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/N1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 293
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    goto :goto_7

    :pswitch_2
    if-nez v0, :cond_c

    .line 294
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 295
    :cond_c
    :goto_6
    iget-object p1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 296
    new-instance v0, Lcom/android/tools/r8/shaking/N1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v2}, Lcom/android/tools/r8/shaking/N1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    const/4 v2, 0x2

    .line 297
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/K1;)Lcom/android/tools/r8/graph/E0;

    .line 298
    new-instance p1, Lcom/android/tools/r8/shaking/N1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/N1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 299
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    goto :goto_7

    .line 300
    :pswitch_3
    new-instance p1, Lcom/android/tools/r8/shaking/N1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/N1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 301
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    goto :goto_7

    .line 302
    :pswitch_4
    new-instance p1, Lcom/android/tools/r8/shaking/N1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/shaking/N1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 303
    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    .line 304
    :cond_d
    :goto_7
    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;)V
    .locals 2

    .line 634
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 635
    instance-of v0, p3, Lcom/android/tools/r8/graph/V4;

    if-nez v0, :cond_1

    .line 636
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 637
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/D5;)V

    .line 640
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->p()Lcom/android/tools/r8/graph/H0;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/graph/E5;

    move-result-object p1

    .line 641
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;)V

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 1060
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;)V
    .locals 2

    .line 1044
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/D3$a;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1045
    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->N:Ljava/util/Set;

    .line 1047
    iget-object v1, p3, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    .line 1048
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/l1;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_0
    iget-object v0, p3, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 1050
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/D5;)V

    .line 1051
    iget-object v0, p3, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    iget-object p3, p3, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {v0, p3}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p3

    .line 1052
    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/graph/E5;

    move-result-object p1

    .line 1053
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    .line 1054
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V
    .locals 12

    .line 588
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 589
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 590
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_3

    .line 591
    iget-object v5, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 592
    iget-object v5, v5, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 593
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v3

    .line 594
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->m:Lcom/android/tools/r8/shaking/g;

    if-eqz v1, :cond_6

    .line 595
    iget-object v1, v1, Lcom/android/tools/r8/shaking/g;->a:Ljava/util/Set;

    .line 596
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 597
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_4
    move v1, v3

    goto :goto_5

    .line 598
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/t1;

    move-result-object v11

    .line 599
    iget-object v5, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v10, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-static/range {v5 .. v11}, Lcom/android/tools/r8/shaking/h;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;ZLcom/android/tools/r8/graph/p0;Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/shaking/t1;)Z

    move-result v1

    :goto_5
    if-nez v1, :cond_a

    .line 600
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    sget-object v1, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    if-ne p3, v1, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    .line 602
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->d0:Ljava/util/IdentityHashMap;

    goto :goto_6

    :cond_8
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->c0:Ljava/util/IdentityHashMap;

    .line 603
    :goto_6
    new-instance v1, Lcom/android/tools/r8/shaking/P8;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/P8;-><init>()V

    .line 604
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 605
    new-instance v1, Lcom/android/tools/r8/shaking/a9;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/a9;-><init>()V

    .line 606
    invoke-interface {p3, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 607
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_9

    .line 608
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b0:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void

    .line 609
    :cond_a
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 610
    iget-object v0, p3, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v0, :cond_b

    move v2, v3

    :cond_b
    if-eqz v2, :cond_c

    .line 611
    invoke-virtual {p3, p2, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/experimental/graphinfo/AnnotationGraphNode;

    move-result-object v0

    .line 612
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d()Lcom/android/tools/r8/graph/b1;

    move-result-object v1

    .line 613
    new-instance v2, Lcom/android/tools/r8/shaking/J1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/J1;-><init>(Lcom/android/tools/r8/graph/b1;)V

    .line 614
    invoke-virtual {p3, v0, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/X1;)V

    .line 615
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/r0;->l0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object v0

    .line 616
    new-instance v1, Lcom/android/tools/r8/shaking/S1;

    invoke-direct {v1, p2, p1}, Lcom/android/tools/r8/shaking/S1;-><init>(Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)V

    .line 617
    invoke-virtual {p3, v0, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/X1;)V

    .line 618
    :cond_c
    new-instance p3, Lcom/android/tools/r8/shaking/H;

    invoke-direct {p3, p0, p2, p1}, Lcom/android/tools/r8/shaking/H;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/D5;)V

    .line 619
    iget-object p1, p2, Lcom/android/tools/r8/graph/r0;->c:Lcom/android/tools/r8/graph/e1;

    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/graph/e1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/j1;)V
    .locals 2

    .line 1061
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1063
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    .line 1040
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1041
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-static {p1, p2, v0, v1}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 1042
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1043
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->L:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V
    .locals 1

    .line 729
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object p2

    .line 732
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 734
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    :cond_0
    return-void

    .line 735
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/x0;)V
    .locals 3

    .line 1537
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 1538
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/x0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1539
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected type to be in live non-program types: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 1540
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1541
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 1542
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1543
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/x0;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1544
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 1545
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 1546
    iget-object v1, v1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 1547
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1548
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_8

    .line 1549
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->u0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 1550
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_9

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/x0;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/E5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;)V
    .locals 0

    .line 736
    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/o0;->a(Lcom/android/tools/r8/graph/E5;)Lcom/android/tools/r8/graph/E5;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;)V
    .locals 4

    .line 1207
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 1208
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1209
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/shaking/p1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1210
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v3, Lcom/android/tools/r8/shaking/f9;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/shaking/f9;-><init>(Lcom/android/tools/r8/shaking/p1;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Consumer;)V

    .line 1211
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 924
    iget-object v2, v0, Lcom/android/tools/r8/shaking/L;->b:Ljava/util/function/BiConsumer;

    invoke-interface {v2, v1, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 925
    iget-object p3, v0, Lcom/android/tools/r8/shaking/L;->c:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/shaking/N;->r(Lcom/android/tools/r8/graph/H2;)V

    .line 926
    iget-object p3, v0, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 927
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/g1;

    .line 928
    iget-object p3, p3, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    if-eqz p3, :cond_1

    .line 929
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/g1;

    .line 930
    iget-object p3, p3, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    .line 931
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/y5;)V

    goto :goto_0

    .line 932
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 933
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 934
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V

    .line 935
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 936
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 937
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/D5;)V

    .line 938
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    goto :goto_1

    .line 939
    :cond_2
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->u:Ljava/util/IdentityHashMap;

    .line 940
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 941
    sget-object v1, Lcom/android/tools/r8/internal/f80;->c:Lcom/android/tools/r8/internal/f80;

    .line 942
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/f80;

    .line 943
    iget-object p3, p3, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 944
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 945
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V

    .line 946
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 947
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 948
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/D5;)V

    .line 949
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;)V

    .line 950
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h1;->G0()Z

    move-result p3

    if-nez p3, :cond_4

    .line 951
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 952
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;)V

    .line 953
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 954
    iget-object p3, p3, Lcom/android/tools/r8/internal/ju;->l:[Lcom/android/tools/r8/internal/AZ;

    .line 955
    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p3, v1

    .line 956
    invoke-interface {v2, p1, p2}, Lcom/android/tools/r8/internal/AZ;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 1

    .line 1183
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->f(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 1184
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1185
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1186
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v2, Lcom/android/tools/r8/shaking/Y7;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/shaking/Y7;-><init>(Lcom/android/tools/r8/shaking/k1;)V

    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 1187
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1188
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 1189
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1190
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    :cond_1
    if-nez v1, :cond_2

    .line 1191
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 1192
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    const/4 v1, 0x0

    .line 1193
    iget-object v0, v0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 1194
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 25
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 27
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    .line 29
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    sget-object v3, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 32
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v3, v2, Lcom/android/tools/r8/internal/nJ;->T0:Z

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;)V

    .line 35
    :cond_1
    new-instance v1, Lcom/android/tools/r8/shaking/T7;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/shaking/T7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/internal/ns0;)V
    .locals 8

    .line 743
    const-string v0, "processNewlyInstantiatedClass"

    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 744
    :try_start_0
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_1

    .line 745
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 746
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 748
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 749
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    const-string v3, "Notify processNewlyInstantiatedClass"

    invoke-virtual {p5, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 751
    iget-object v1, v1, Lcom/android/tools/r8/internal/ju;->n:[Lcom/android/tools/r8/internal/xZ;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 752
    check-cast v5, Lcom/android/tools/r8/internal/xD;

    invoke-virtual {v5, v2, p2}, Lcom/android/tools/r8/internal/xD;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 753
    :cond_4
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 754
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 755
    :cond_6
    :goto_3
    const-string v1, "Mark instantiated class"

    invoke-virtual {p5, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :try_start_1
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v7, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/h;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 757
    :try_start_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_7

    .line 758
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 759
    :cond_7
    :try_start_3
    const-string p2, "Mark live"

    new-instance p3, Lcom/android/tools/r8/shaking/I7;

    invoke-direct {p3, p0, p1, p4}, Lcom/android/tools/r8/shaking/I7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {p5, p2, p3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 760
    const-string p2, "Class initialization"

    new-instance p3, Lcom/android/tools/r8/shaking/J7;

    invoke-direct {p3, p0, p1}, Lcom/android/tools/r8/shaking/J7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p5, p2, p3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 761
    const-string p2, "Transition items"

    new-instance p3, Lcom/android/tools/r8/shaking/K7;

    invoke-direct {p3, p0, p1, p5}, Lcom/android/tools/r8/shaking/K7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {p5, p2, p3}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 762
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_1
    move-exception p1

    .line 763
    :try_start_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    .line 764
    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 765
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p2

    .line 766
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 7

    .line 1558
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    new-instance v1, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;

    .line 1559
    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 1560
    sget-object v3, Lcom/android/tools/r8/position/Position;->UNKNOWN:Lcom/android/tools/r8/position/Position;

    .line 1561
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v4

    .line 1562
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->s0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/errors/InterfaceDesugarMissingTypeDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;)V

    .line 1563
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 920
    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 921
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 767
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/M4;Lcom/android/tools/r8/shaking/Q1;)V
    .locals 1

    .line 581
    new-instance v0, Lcom/android/tools/r8/shaking/J9;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/shaking/J9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/M4;Lcom/android/tools/r8/graph/H2;)V

    new-instance p2, Lcom/android/tools/r8/shaking/K9;

    invoke-direct {p2, p0, p3}, Lcom/android/tools/r8/shaking/K9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/M4;Lcom/android/tools/r8/shaking/R0;)V
    .locals 4

    .line 464
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/shaking/P;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_e

    .line 465
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 466
    sget-boolean p3, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    sget-object v1, Lcom/android/tools/r8/shaking/N$a;->e:Lcom/android/tools/r8/shaking/N$a;

    if-ne v0, v1, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->J0:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 469
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 470
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 471
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v1

    .line 472
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 474
    iget-object v0, v0, Lcom/android/tools/r8/shaking/o2;->b:Ljava/util/Set;

    invoke-static {v2, v0, v1}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/J2;Ljava/util/Set;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 475
    :cond_1
    new-instance p2, Ljava/lang/AssertionError;

    .line 476
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Class "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was not a main dex root in the first round"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    if-nez p3, :cond_4

    .line 477
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_1

    .line 479
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    .line 480
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enum "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been unboxed but is still in the program."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 481
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ;->a1:Z

    if-eqz p3, :cond_5

    .line 482
    new-instance p3, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    goto :goto_2

    .line 483
    :cond_5
    new-instance p3, Lcom/android/tools/r8/shaking/R7;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/R7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 484
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/e4;

    .line 485
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 486
    invoke-virtual {p0, v2, p1, v3, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 487
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/e4;->d()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 488
    invoke-virtual {p0, v1, p1, v2, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    goto :goto_3

    .line 489
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->t1()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 490
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->V0()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/p5;

    .line 491
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/p5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    goto :goto_4

    .line 492
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 493
    :cond_8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 494
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/i3;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 495
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->Z0:Z

    if-eqz v1, :cond_9

    .line 496
    new-instance v1, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    goto :goto_5

    .line 497
    :cond_9
    new-instance v1, Lcom/android/tools/r8/shaking/R7;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/R7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    :goto_5
    if-eqz v0, :cond_a

    .line 498
    new-instance p3, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, v0, p1, p3, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    goto :goto_6

    .line 499
    :cond_a
    iget-object p3, p3, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    .line 500
    new-instance v0, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p3, p1, v0, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    .line 501
    :cond_b
    :goto_6
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->W0()Ljava/util/List;

    move-result-object p3

    .line 502
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 503
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->b1:Z

    if-eqz v0, :cond_c

    .line 504
    new-instance v0, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    goto :goto_7

    .line 505
    :cond_c
    new-instance v0, Lcom/android/tools/r8/shaking/R7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/R7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 506
    :goto_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A5;

    .line 507
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A5;->a()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 508
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    goto :goto_8

    .line 509
    :cond_d
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 510
    new-instance v0, Lcom/android/tools/r8/shaking/Q1;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/shaking/Q1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 511
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 512
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V

    goto :goto_9

    .line 513
    :cond_e
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p3, :cond_f

    .line 514
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->e0:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/X7;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/X7;-><init>()V

    .line 515
    invoke-interface {v1, p3, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/shaking/M4;

    .line 516
    iput-object p3, p2, Lcom/android/tools/r8/shaking/M4;->a:Lcom/android/tools/r8/shaking/M4;

    .line 517
    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p3, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 518
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->s(Lcom/android/tools/r8/graph/H2;)V

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->r(Lcom/android/tools/r8/graph/H2;)V

    .line 520
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/M4;Lcom/android/tools/r8/shaking/Q1;)V

    .line 521
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 522
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 523
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 524
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 525
    sget-boolean p2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p2, :cond_11

    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 526
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    iget-object p3, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 527
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 528
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_a

    .line 529
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_a
    move-object p2, p1

    .line 530
    :cond_12
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 531
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j;

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 532
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    .line 533
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p3, v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 534
    iget-object p3, p2, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-nez p2, :cond_12

    goto :goto_b

    .line 535
    :cond_13
    sget-object p3, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p3

    if-eqz p3, :cond_14

    .line 536
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {p3, v1, p2, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    .line 537
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 538
    sget-object p3, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 539
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p3

    .line 540
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/H1;->s()Lcom/android/tools/r8/shaking/H1;

    move-result-object p3

    .line 541
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 542
    :cond_14
    :goto_b
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 543
    new-instance p2, Lcom/android/tools/r8/shaking/a0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/a0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/Y;)V

    .line 544
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 545
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 546
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/x1;->c(Lcom/android/tools/r8/graph/H2;)V

    .line 547
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/D5;)V

    .line 548
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 549
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->b0:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_16
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    .line 551
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    .line 552
    iget-object p2, p2, Lcom/android/tools/r8/shaking/E4;->b:Ljava/util/Map;

    .line 553
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 554
    iget-boolean p3, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz p3, :cond_18

    if-nez p2, :cond_17

    goto :goto_c

    :cond_17
    const/4 p3, 0x0

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V

    .line 556
    :cond_18
    :goto_c
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 557
    iget-object p2, p2, Lcom/android/tools/r8/internal/ju;->j:[Lcom/android/tools/r8/internal/yZ;

    .line 558
    array-length v0, p2

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    aget-object v2, p2, v1

    .line 559
    invoke-interface {v2, p1, p3}, Lcom/android/tools/r8/internal/yZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/L0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    :goto_e
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V
    .locals 5

    .line 768
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    .line 769
    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 770
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 771
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 772
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 773
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    sget-boolean v3, Lcom/android/tools/r8/graph/s5;->i:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v3, :cond_7

    .line 775
    iget-object v3, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 776
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 777
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 778
    :cond_7
    :goto_3
    iget-object v3, v1, Lcom/android/tools/r8/graph/t5;->d:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 779
    invoke-virtual {v1, v2, p1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/E0;)V

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    if-nez v0, :cond_9

    .line 781
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 782
    :cond_9
    :goto_4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->q(Lcom/android/tools/r8/graph/H2;)V

    .line 783
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object p2

    if-nez v0, :cond_b

    .line 784
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 785
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    .line 786
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 787
    :cond_b
    :goto_5
    new-instance v0, Lcom/android/tools/r8/shaking/Z0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Z0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 788
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 789
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;)V

    :cond_c
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    .line 695
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/a7;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/a7;-><init>(Lcom/android/tools/r8/shaking/R0;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Supplier;)V

    .line 696
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/x1;->c(Lcom/android/tools/r8/graph/H2;)V

    .line 697
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 698
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;)V

    .line 700
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/b7;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/b7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/R0;)V

    .line 701
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 702
    new-instance v0, Lcom/android/tools/r8/shaking/c7;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/c7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/R0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 1

    .line 1182
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 159
    sget-boolean v1, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v1, :cond_1

    .line 160
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/S0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 162
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_3

    .line 163
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/L3;

    .line 164
    iget-object v3, v0, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v0, p3, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;)Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v3

    .line 167
    iget-object v4, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object v4

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    goto :goto_1

    .line 168
    :cond_3
    sget-object p3, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    .line 169
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 170
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 172
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/L0;->b(Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    .line 175
    sget-object v0, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 176
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 177
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz v1, :cond_8

    .line 178
    sget-object v1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 179
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v1

    .line 180
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/L3;

    .line 181
    instance-of v3, v2, Lcom/android/tools/r8/internal/xM;

    if-nez v3, :cond_6

    .line 182
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/L3;->D()Lcom/android/tools/r8/shaking/O3;

    move-result-object v3

    sget-object v4, Lcom/android/tools/r8/shaking/O3;->c:Lcom/android/tools/r8/shaking/O3;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 183
    iget-object v3, v1, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 184
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/H1;->m()Lcom/android/tools/r8/shaking/s1;

    goto :goto_2

    .line 186
    :cond_7
    iget-object p2, v1, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 187
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 188
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 189
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H5;)V

    sget-object v2, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    .line 190
    invoke-virtual {p2, v2, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 191
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/H1;

    .line 192
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 193
    :cond_8
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 194
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 195
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 196
    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->e6:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 197
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p1, v0, v0, p3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    .line 198
    sget-object p1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 199
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    .line 201
    sget-object p2, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Supplier;)V
    .locals 3

    .line 1651
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 1652
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1653
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1654
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->T:Lcom/android/tools/r8/shaking/m3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1655
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 1656
    iget-object v0, v0, Lcom/android/tools/r8/shaking/m3;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    if-nez v0, :cond_6

    .line 1657
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->T:Lcom/android/tools/r8/shaking/m3;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1658
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1659
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->m:Lcom/android/tools/r8/shaking/n3;

    if-eqz v0, :cond_9

    .line 1660
    iget-object v0, v0, Lcom/android/tools/r8/shaking/n3;->a:Ljava/util/Set;

    .line 1661
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1662
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/X1;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    .line 1663
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 1664
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1665
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void

    .line 1666
    :cond_7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1667
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V

    return-void

    .line 1668
    :cond_8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    .line 1669
    sget-object p2, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 1670
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 1671
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 1672
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 1673
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H5;)V

    sget-object v1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    .line 1674
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V

    .line 1675
    sget-object p2, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 1676
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p2

    .line 1677
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/H1;

    .line 1678
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    :cond_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H4$a;Lcom/android/tools/r8/internal/m80;)V
    .locals 4

    .line 855
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H4$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 856
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 857
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 858
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 859
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 860
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/graph/Uc;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/Uc;-><init>()V

    invoke-static {v3}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 861
    :cond_1
    new-instance p2, Lcom/android/tools/r8/shaking/N9;

    invoke-direct {p2, p0, v0}, Lcom/android/tools/r8/shaking/N9;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/Map;)V

    .line 862
    iget-object p1, p1, Lcom/android/tools/r8/graph/H4$a;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H4;Lcom/android/tools/r8/graph/Z4$c;)V
    .locals 1

    .line 845
    new-instance v0, Lcom/android/tools/r8/shaking/q7;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/q7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Z4$c;)V

    .line 846
    invoke-virtual {p1, v0, v0}, Lcom/android/tools/r8/graph/H4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 66
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->W0()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/J2;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 55
    new-instance v0, Lcom/android/tools/r8/shaking/P1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/P1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 56
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/shaking/s7;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/shaking/s7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 57
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 1575
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/M;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1576
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    if-nez v0, :cond_3

    .line 1577
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 1578
    iget-object v2, v1, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 1579
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->g()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1580
    :cond_3
    :goto_1
    const-string v2, "Clinit"

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1581
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1582
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    .line 1583
    :cond_4
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1584
    const-string v1, "Trace code (non-desugared)"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1585
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 1586
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1587
    const-string v1, "Analyze needs desugaring"

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 1588
    :try_start_0
    const-string v2, "Analyze interface method desugaring"

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1589
    :try_start_1
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1590
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1591
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->m1()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1592
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->i1()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1593
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1594
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 1595
    :cond_5
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto/16 :goto_a

    .line 1596
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->j0:Lcom/android/tools/r8/internal/h80;

    .line 1597
    iget-object v3, v3, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 1598
    sget-object v4, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 1599
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 1600
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1601
    check-cast v3, Lcom/android/tools/r8/graph/H5;

    if-eqz v3, :cond_b

    if-nez v0, :cond_8

    .line 1602
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    :goto_3
    if-nez v0, :cond_a

    .line 1603
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/g4;->a(Lcom/android/tools/r8/graph/i0;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1604
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1605
    :try_start_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_5

    :cond_b
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1606
    const-string v0, "Analyze instruction desugaring"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1607
    :try_start_5
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1608
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1609
    :try_start_6
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1610
    :goto_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_d

    :catchall_2
    move-exception p1

    goto :goto_6

    .line 1611
    :cond_c
    :try_start_7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1612
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_c

    .line 1613
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p2

    .line 1614
    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1615
    :goto_8
    :try_start_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p2

    .line 1616
    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1617
    :goto_a
    :try_start_c
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception p2

    .line 1618
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw p1

    .line 1619
    :cond_d
    :goto_c
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;)V

    .line 1620
    :goto_d
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1621
    const-string v0, "Super"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1622
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->t:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    if-eqz v0, :cond_e

    .line 1623
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1624
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 1625
    new-instance v2, Lcom/android/tools/r8/shaking/O1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/shaking/O1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 1626
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 1627
    new-instance v2, Lcom/android/tools/r8/shaking/O1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/shaking/O1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 1628
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_e

    .line 1629
    :cond_e
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1630
    const-string v0, "Notify"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1631
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 1632
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->m:[Lcom/android/tools/r8/internal/BZ;

    .line 1633
    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_f

    aget-object v3, v0, v2

    .line 1634
    invoke-interface {v3, p1, p2, p0}, Lcom/android/tools/r8/internal/BZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/N;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1635
    :cond_f
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 388
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 389
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 390
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/K1;)Lcom/android/tools/r8/graph/E0;

    .line 391
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 392
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 393
    sget-object p1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 394
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 395
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    .line 396
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 397
    sget-object p1, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 398
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    .line 399
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/k1;

    .line 400
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 966
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 967
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 968
    iget-object v1, v1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 969
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j0:Lcom/android/tools/r8/internal/h80;

    .line 971
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 972
    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 973
    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 974
    iget-object p2, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    .line 306
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/r0;)V
    .locals 1

    .line 1636
    sget-object v0, Lcom/android/tools/r8/graph/p0;->e:Lcom/android/tools/r8/graph/p0;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/B60;)V
    .locals 1

    .line 366
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    .line 368
    iget-boolean v0, p2, Lcom/android/tools/r8/internal/B60;->f:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 370
    :cond_1
    :goto_1
    iget-object v0, p2, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 371
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 372
    iget-object p2, p2, Lcom/android/tools/r8/internal/B60;->d:Lcom/android/tools/r8/internal/B60;

    goto :goto_0

    .line 373
    :cond_2
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 374
    iget-object p2, p2, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 375
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 376
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result p2

    if-nez p2, :cond_5

    .line 377
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/J2;)V

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)V
    .locals 6

    .line 1679
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1680
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-eqz p1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1681
    :cond_1
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1682
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 1683
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 1684
    :cond_2
    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v0

    .line 1685
    iget-object v1, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 1686
    iget-object p2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_d

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1688
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 1689
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1690
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object p2, v0

    .line 1691
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 1692
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_6
    :goto_2
    if-ge v2, v1, :cond_8

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 1693
    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1694
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    .line 1695
    :cond_7
    invoke-virtual {p0, v3, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1696
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1697
    new-instance v4, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 1698
    iget-object v5, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v5, v3, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)V

    .line 1699
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1700
    :cond_8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1701
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 1702
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_a

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1703
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v2, Lcom/android/tools/r8/shaking/p9;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/p9;-><init>()V

    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 1704
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1705
    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 1706
    new-instance v2, Lcom/android/tools/r8/shaking/q9;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/tools/r8/shaking/q9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V

    .line 1707
    sget-object v1, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p2, v2, v1}, Lcom/android/tools/r8/graph/H2;->j(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 1708
    :cond_b
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 1709
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1710
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1711
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    :goto_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ns0;)V
    .locals 5

    .line 1637
    const-string v0, "Trace code"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1638
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->l:Lcom/android/tools/r8/shaking/i0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1639
    iget-object v2, v1, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 1640
    invoke-interface {v0, v1, p1, p0, v2}, Lcom/android/tools/r8/shaking/i0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/androidapi/a;)Lcom/android/tools/r8/shaking/x;

    move-result-object v0

    .line 1641
    const-string v1, "Register code references"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1642
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    .line 1643
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1644
    const-string v1, "Notify processNewlyLiveCode"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 1645
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 1646
    iget-object v1, v1, Lcom/android/tools/r8/internal/ju;->k:[Lcom/android/tools/r8/internal/zZ;

    .line 1647
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1648
    check-cast v4, Lcom/android/tools/r8/internal/W2;

    invoke-virtual {v4, p1, v0}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1649
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 1650
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 2

    .line 1225
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v1, Lcom/android/tools/r8/shaking/l9;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/l9;-><init>(Lcom/android/tools/r8/shaking/H1;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 1226
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1713
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v1, Lcom/android/tools/r8/shaking/L7;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/L7;-><init>()V

    invoke-virtual {v0, v1, p3}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 1714
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I4;Ljava/util/function/Function;)V
    .locals 2

    .line 1032
    new-instance v0, Lcom/android/tools/r8/shaking/G9;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/G9;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/Function;)V

    new-instance v1, Lcom/android/tools/r8/shaking/I9;

    invoke-direct {v1, p0, p2}, Lcom/android/tools/r8/shaking/I9;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/Function;)V

    invoke-interface {p1, v0, v1}, Lcom/android/tools/r8/graph/I4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->q0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->x:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/J2;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V
    .locals 1

    .line 458
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 462
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V
    .locals 0

    .line 737
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 738
    iget-object p2, p2, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 739
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 790
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    const-string v1, "`"

    if-nez v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 792
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 793
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 795
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lambda expression implements missing interface `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 796
    iget-object p2, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 797
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 798
    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 799
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 800
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 802
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 803
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 804
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 805
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lambda expression expected to implement an interface, but found `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 806
    iget-object p2, p2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 807
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 808
    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 809
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/T1;)V
    .locals 4

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    sget-object v1, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 134
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/k1;->v()Lcom/android/tools/r8/shaking/k1;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->e()Lcom/android/tools/r8/shaking/s1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/k1;

    .line 138
    sget-object v2, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 140
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 141
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 143
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3, p3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    .line 146
    sget-object v1, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 149
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 150
    invoke-virtual {v2, v3, v1, p3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V

    .line 151
    :cond_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 152
    sget-object v1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 153
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/H1;

    .line 155
    sget-object v2, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Ljava/util/ListIterator;Z)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Ljava/util/ListIterator;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 318
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->Y:Ljava/util/Set;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Z)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 320
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 321
    iget-object p3, p3, Lcom/android/tools/r8/internal/ju;->b:[Lcom/android/tools/r8/internal/As0;

    .line 322
    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    aget-object v1, p3, v0

    .line 323
    check-cast v1, Lcom/android/tools/r8/internal/pK;

    .line 324
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/pK;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;)V
    .locals 0

    .line 740
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 741
    iget-object p2, p2, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 742
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 2

    .line 120
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 124
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    invoke-interface {p4, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 128
    :cond_2
    new-instance p1, Lcom/android/tools/r8/shaking/K8;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/shaking/K8;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u2;)V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 671
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    .line 673
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/b0;->v()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 674
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 675
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V

    return-void

    .line 676
    :cond_2
    iget-boolean v1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz v1, :cond_3

    .line 677
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 678
    new-instance v2, Lcom/android/tools/r8/shaking/Q1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Q1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 679
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 680
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    new-instance v3, Lcom/android/tools/r8/shaking/n7;

    invoke-direct {v3, p0, v2}, Lcom/android/tools/r8/shaking/n7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ft0;)V

    .line 681
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 682
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->f:Lcom/android/tools/r8/internal/et;

    .line 683
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->S()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/et;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 685
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 686
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 687
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p2

    .line 688
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " implements "

    goto :goto_0

    :cond_5
    const-string v0, " extends "

    .line 689
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Library class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "program class "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 690
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 691
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->F()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/tools/r8/internal/nJ$p;->N:Z

    if-eqz p1, :cond_6

    goto :goto_1

    .line 692
    :cond_6
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    .line 693
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V
    .locals 1

    .line 1569
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 1571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1572
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 1573
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1574
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1031
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/h;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/I4;)V
    .locals 1

    .line 847
    new-instance v0, Lcom/android/tools/r8/shaking/w9;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/w9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Z4$c;)V

    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/I4;Ljava/util/function/Function;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4;)V
    .locals 2

    .line 307
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 310
    sget-object v0, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 311
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/H1;->s()Lcom/android/tools/r8/shaking/H1;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;)V
    .locals 1

    .line 1055
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1056
    invoke-virtual {p1, p2, p4}, Lcom/android/tools/r8/graph/J4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/t40;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1057
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/Z4;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/D5;)V

    .line 1059
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f0;)V
    .locals 3

    .line 573
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 574
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e0:Ljava/util/IdentityHashMap;

    .line 575
    invoke-interface {p1}, Lcom/android/tools/r8/graph/S;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/s9;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/s9;-><init>()V

    .line 576
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/M4;

    .line 577
    invoke-interface {p1}, Lcom/android/tools/r8/graph/S;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/t9;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/t9;-><init>(Lcom/android/tools/r8/shaking/M4;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    sget-object v0, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/N4;->c(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/BiConsumer;Z)V
    .locals 5

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/f0;)V

    if-eqz p4, :cond_3

    .line 97
    invoke-interface {p1}, Lcom/android/tools/r8/graph/S;->f0()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 98
    invoke-interface {p1}, Lcom/android/tools/r8/graph/S;->G()Lcom/android/tools/r8/graph/u2;

    move-result-object p4

    .line 99
    iget-object v1, p4, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0, v1, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u2;)V

    .line 101
    :cond_0
    iget-object v1, p4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 102
    invoke-virtual {p0, v4, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u2;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 104
    iget-object p4, p4, Lcom/android/tools/r8/internal/ju;->o:[Lcom/android/tools/r8/internal/CZ;

    .line 105
    array-length v1, p4

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p4, v0

    .line 106
    check-cast v2, Lcom/android/tools/r8/internal/W2;

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/W2;->a(Lcom/android/tools/r8/graph/f0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_2
    new-instance p4, Lcom/android/tools/r8/shaking/h9;

    invoke-direct {p4, p0, p3}, Lcom/android/tools/r8/shaking/h9;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1, p4}, Lcom/android/tools/r8/graph/S;->b(Ljava/util/function/Consumer;)V

    .line 108
    new-instance p4, Lcom/android/tools/r8/shaking/i9;

    invoke-direct {p4, p0, p3}, Lcom/android/tools/r8/shaking/i9;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/BiConsumer;)V

    invoke-interface {p1, p4}, Lcom/android/tools/r8/graph/S;->c(Ljava/util/function/Consumer;)V

    .line 109
    :cond_3
    move-object p4, p1

    check-cast p4, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object p4

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 110
    new-instance v1, Lcom/android/tools/r8/shaking/j9;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/j9;-><init>(Lcom/android/tools/r8/internal/Yx0;)V

    .line 111
    invoke-virtual {p0, v0, p1, v1, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/f0;ZLjava/util/function/BiConsumer;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    .line 91
    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    .line 92
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/f0;

    .line 95
    invoke-virtual {p0, p1, v1, p3, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/f0;Lcom/android/tools/r8/internal/Yx0;Ljava/util/function/BiConsumer;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/x3;)V
    .locals 0

    .line 624
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->N:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    .line 626
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/x3;)V
    .locals 0

    .line 957
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 958
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 959
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->I:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Oy;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 455
    :cond_1
    :goto_0
    iget-object v1, p3, Lcom/android/tools/r8/internal/Oy;->c:Lcom/android/tools/r8/internal/La0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/La0;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 457
    invoke-virtual {p3, v0, p1}, Lcom/android/tools/r8/internal/Oy;->b(Lcom/android/tools/r8/shaking/N$a;Lcom/android/tools/r8/graph/l1;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V
    .locals 9

    .line 401
    iget v0, p4, Lcom/android/tools/r8/shaking/K;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 402
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v0

    goto :goto_0

    .line 404
    :cond_1
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    .line 405
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    .line 406
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/shaking/S;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 407
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_5

    .line 408
    iget p1, p4, Lcom/android/tools/r8/shaking/K;->b:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    .line 409
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_3
    return-void

    .line 410
    :cond_6
    new-instance v7, Lcom/android/tools/r8/shaking/x9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/shaking/x9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    new-instance p3, Lcom/android/tools/r8/shaking/y9;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/shaking/y9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V

    .line 411
    invoke-virtual {v0, v7, v7, p3}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;Lcom/android/tools/r8/graph/D3$a;)V
    .locals 6

    .line 412
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/ju;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/shaking/J;)V

    .line 413
    iget-object p1, p5, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    .line 414
    iget-object v0, p5, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    .line 415
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    .line 416
    iget-object p5, p5, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 417
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eq p5, v1, :cond_0

    .line 418
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p5

    .line 420
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v1, p5, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v1

    invoke-virtual {p0, p5, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 421
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_3

    .line 422
    iget-object p5, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p5}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/g1;

    .line 423
    iget-object p5, p5, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 424
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/lang/AssertionError;

    .line 425
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    .line 426
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unexpected reference in `"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` to field marked dead: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    .line 427
    :cond_3
    :goto_0
    iget p4, p4, Lcom/android/tools/r8/shaking/K;->b:I

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    .line 428
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 429
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/l1;

    .line 430
    iget-object p4, p4, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 431
    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/o3;

    .line 432
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 434
    iget p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    goto :goto_1

    .line 435
    :cond_4
    iget p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    goto :goto_1

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    .line 436
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 437
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/l1;

    .line 438
    iget-object p3, p3, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 439
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/o3;

    .line 440
    iget p4, p3, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 p4, p4, 0x20

    .line 441
    iput p4, p3, Lcom/android/tools/r8/graph/o3;->b:I

    .line 442
    :cond_6
    :goto_1
    new-instance p3, Lcom/android/tools/r8/shaking/R1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/shaking/R1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 443
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/r0;Ljava/util/function/Function;Lcom/android/tools/r8/graph/D5;)V
    .locals 0

    .line 571
    invoke-interface {p2, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/p0;

    .line 572
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y5;)V
    .locals 1

    .line 378
    new-instance v0, Lcom/android/tools/r8/shaking/M7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/M7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/y5;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1314
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 1316
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    monitor-enter v0

    .line 1317
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 1328
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1329
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 1330
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    .line 1331
    :cond_3
    iget-object v1, p1, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    .line 1332
    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 1333
    iget-object v2, p1, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->Q()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-boolean v3, v2, Lcom/android/tools/r8/graph/C2;->g:Z

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 1334
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object v2, v2, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/C2;->e:Lcom/android/tools/r8/graph/B2;

    .line 1335
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_4

    .line 1336
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->b()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/B2;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    iget-object v1, p1, Lcom/android/tools/r8/internal/iR;->d:Lcom/android/tools/r8/internal/kR;

    iget-object p1, p1, Lcom/android/tools/r8/internal/iR;->a:Lcom/android/tools/r8/graph/y;

    .line 1337
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    .line 1338
    iget-object v1, v1, Lcom/android/tools/r8/internal/kR;->d:Lcom/android/tools/r8/graph/C2;

    .line 1339
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/C2;->m0()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/graph/u1;->l1:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1340
    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/L2;->b([B)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1341
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-interface {p1, p3}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    sget-boolean p3, Lcom/android/tools/r8/graph/H0;->e:Z

    if-eqz p1, :cond_6

    .line 1342
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_9

    .line 1343
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-ne p3, p2, :cond_9

    .line 1344
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->T0()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    .line 1345
    sget-boolean p2, Lcom/android/tools/r8/internal/WY;->x:Z

    const/4 p3, 0x4

    if-nez p2, :cond_8

    .line 1346
    iget p2, p1, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    if-ne p2, p3, :cond_7

    goto :goto_2

    .line 1347
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1348
    :cond_8
    :goto_2
    iput p3, p1, Lcom/android/tools/r8/internal/WY;->v:I

    return-void

    :cond_9
    if-eqz v0, :cond_a

    :goto_3
    return-void

    .line 1349
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/Z4;)V
    .locals 4

    .line 831
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p3

    if-nez p3, :cond_1

    .line 832
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should not be null"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 833
    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 834
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 835
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 836
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v3, Lcom/android/tools/r8/shaking/S7;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/S7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 837
    invoke-virtual {p3, v1, v2, p2, v3}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/f4;Lcom/android/tools/r8/graph/B5;)Lcom/android/tools/r8/graph/H4;

    move-result-object v1

    .line 838
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H4;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 839
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H4;->a()Lcom/android/tools/r8/graph/H4$a;

    move-result-object p2

    goto :goto_2

    .line 840
    :cond_3
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H4;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez v2, :cond_2

    .line 841
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H4;->b()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_8

    .line 842
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H4;Lcom/android/tools/r8/graph/Z4$c;)V

    .line 843
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H4$a;Lcom/android/tools/r8/internal/m80;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 1557
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 810
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    new-instance v0, Lcom/android/tools/r8/shaking/z8;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/tools/r8/shaking/z8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;)V

    const-string p2, "Program"

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    goto :goto_0

    .line 812
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/A8;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/tools/r8/shaking/A8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;)V

    const-string p2, "Library"

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 813
    :goto_0
    iget-object p1, p4, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_1

    .line 814
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 815
    :cond_1
    iget-object p1, p4, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/xh;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 1319
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    monitor-enter v0

    .line 1320
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    .line 1321
    sget-boolean v2, Lcom/android/tools/r8/internal/xh;->i:Z

    if-nez v2, :cond_1

    .line 1322
    iget-object v2, p1, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1323
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1324
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xh;->h:Lcom/android/tools/r8/graph/H2;

    .line 1325
    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/E4;)V
    .locals 4

    .line 448
    iget-object p1, p1, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 449
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/z9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/z9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v2, Lcom/android/tools/r8/shaking/A9;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/A9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v3, Lcom/android/tools/r8/shaking/B9;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/B9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 450
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/internal/ft0;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 157
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/Q;)V
    .locals 11

    .line 1242
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    .line 1243
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 1244
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    .line 1246
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 1247
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/shaking/Z7;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/Z7;-><init>(Lcom/android/tools/r8/shaking/Q;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 1249
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    .line 1250
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 1251
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1252
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 1253
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1254
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_0

    .line 1255
    :cond_2
    new-instance v0, Lcom/android/tools/r8/shaking/a8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/a8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 1256
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1257
    new-instance v1, Lcom/android/tools/r8/shaking/c8;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/shaking/c8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/Q;)V

    .line 1258
    invoke-interface {v0, v1}, Ljava/util/function/BiConsumer;->andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object v0

    :cond_3
    move-object v3, v0

    .line 1259
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v9, p0, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    new-instance v4, Lcom/android/tools/r8/shaking/d8;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/shaking/d8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v5, Lcom/android/tools/r8/shaking/e8;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/shaking/e8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v6, Lcom/android/tools/r8/shaking/f8;

    invoke-direct {v6, p0}, Lcom/android/tools/r8/shaking/f8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v8, Lcom/android/tools/r8/shaking/g8;

    invoke-direct {v8, p0}, Lcom/android/tools/r8/shaking/g8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 1260
    new-instance v10, Lcom/android/tools/r8/internal/da;

    move-object v1, v10

    move-object v2, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/internal/da;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/util/function/BiConsumer;Lcom/android/tools/r8/shaking/Q;Ljava/util/function/BiConsumer;)V

    .line 1261
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    instance-of v1, v9, Lcom/android/tools/r8/internal/b10;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1263
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/Q70;

    .line 1264
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v2

    invoke-direct {v1, v0, v2, v10}, Lcom/android/tools/r8/internal/Q70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/ea;)V

    move-object v10, v1

    .line 1265
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Z70;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Z70;-><init>()V

    .line 1266
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    new-instance v2, Lcom/android/tools/r8/shaking/h8;

    invoke-direct {v2, p0, v10, v0}, Lcom/android/tools/r8/shaking/h8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1267
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->h:Ljava/util/concurrent/ExecutorService;

    .line 1268
    invoke-static {v1, v2, v3, v4}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 1269
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->h:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/internal/Z70;->a(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 1270
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    new-instance v1, Lcom/android/tools/r8/shaking/i8;

    invoke-direct {v1, p0, p1, v10}, Lcom/android/tools/r8/shaking/i8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/internal/ea;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 1271
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->h:Ljava/util/concurrent/ExecutorService;

    .line 1272
    invoke-static {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 1273
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    .line 1274
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 1275
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1276
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 1277
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1278
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    .line 1279
    iget-object v2, v2, Lcom/android/tools/r8/internal/JI;->b:Lcom/android/tools/r8/internal/yI;

    .line 1280
    invoke-virtual {v2, v1, v10}, Lcom/android/tools/r8/internal/yI;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/AI;)Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 1281
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    invoke-virtual {v3, v1, v2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 1282
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j0:Lcom/android/tools/r8/internal/h80;

    .line 1283
    iget-object v1, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 1284
    sget-object v3, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 1285
    new-instance v4, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v4, v3, v2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 1286
    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 1288
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 1289
    iget-object v3, v3, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 1290
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1291
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 1292
    :cond_7
    iget-object v1, p1, Lcom/android/tools/r8/shaking/Q;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1293
    :cond_8
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/ea;->a()Ljava/util/List;

    move-result-object p1

    .line 1294
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1295
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->i0:Lcom/android/tools/r8/internal/m80;

    .line 1296
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 1297
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1298
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->h0:Lcom/android/tools/r8/internal/m80;

    .line 1299
    iget-object p1, p1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 1300
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1315
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/Q;->c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object p1

    invoke-virtual {v0, p3, p2, p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/internal/iR;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 1301
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 1302
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    .line 1303
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1304
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 1305
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_0

    .line 1306
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/iR;->c()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->M1()Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    .line 1307
    iget-object p3, p2, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    iget-object p2, p2, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {p3, p2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p2

    .line 1308
    :goto_1
    iget-object p3, p2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1309
    iget-object p3, p2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1310
    check-cast p3, Lcom/android/tools/r8/graph/H5;

    .line 1311
    monitor-enter p1

    .line 1312
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 1313
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/R0;Lcom/android/tools/r8/graph/F5;)V
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;)V

    .line 704
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 705
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;)V

    .line 707
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/o3;

    move-result-object v0

    .line 708
    iget v1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 v1, v1, 0x18

    .line 709
    iput v1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    .line 710
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p0, p2, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, p2, p2, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/R0;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 714
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 715
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;)V

    .line 717
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 718
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 719
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 720
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 721
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 722
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v3

    invoke-virtual {p0, v2, v3, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    .line 723
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 724
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    .line 726
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/t5;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_1
    return-void

    .line 728
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 587
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/Z4;)V
    .locals 3

    .line 1064
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1065
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p3

    .line 1066
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1067
    new-instance v0, Lcom/android/tools/r8/graph/H5;

    .line 1068
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 1069
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 1070
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 1071
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/Z4;->c(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1072
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 1074
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 1075
    iget-object p1, p1, Lcom/android/tools/r8/internal/ju;->i:[Lcom/android/tools/r8/internal/wZ;

    .line 1076
    array-length p3, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    aget-object v1, p1, v0

    .line 1077
    check-cast v1, Lcom/android/tools/r8/internal/W2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1078
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/j1;->f(Lcom/android/tools/r8/androidapi/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    .line 1080
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p3

    .line 1081
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->t:Ljava/util/IdentityHashMap;

    .line 1082
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    new-instance v2, Lcom/android/tools/r8/shaking/Q7;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Q7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/m80;

    .line 1083
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1084
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 1086
    iget-object v0, v0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1087
    new-instance v0, Lcom/android/tools/r8/shaking/O1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/O1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 1088
    invoke-virtual {p0, v0, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 1089
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1090
    new-instance p1, Lcom/android/tools/r8/shaking/O1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/shaking/O1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 1091
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Ljava/lang/Boolean;)V
    .locals 0

    .line 63
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j;

    .line 64
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4;)V
    .locals 2

    .line 646
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->w()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object p2

    .line 648
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->d()Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 650
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Z4$c;->q()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 651
    new-instance v1, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v1, v0, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 652
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 653
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1;->w0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    .line 655
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/Y;)V
    .locals 5

    .line 1238
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1239
    iget-object v0, v0, Lcom/android/tools/r8/shaking/C;->a:Ljava/util/Map;

    .line 1240
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/s2;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/shaking/k7;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/shaking/k7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;)V

    new-instance v3, Lcom/android/tools/r8/shaking/l7;

    invoke-direct {v3, p0, p1}, Lcom/android/tools/r8/shaking/l7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;)V

    new-instance v4, Lcom/android/tools/r8/shaking/m7;

    invoke-direct {v4, p0, p1}, Lcom/android/tools/r8/shaking/m7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/d0;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;)V
    .locals 0

    .line 816
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/Z4;)V
    .locals 7

    .line 871
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {p3, p1, v0}, Lcom/android/tools/r8/graph/Z4;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/I4;

    move-result-object p3

    if-nez p3, :cond_0

    goto/16 :goto_9

    .line 872
    :cond_0
    invoke-interface {p3}, Lcom/android/tools/r8/graph/I4;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 873
    :cond_1
    invoke-interface {p3}, Lcom/android/tools/r8/graph/I4;->e()Lcom/android/tools/r8/graph/D4;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_9

    .line 874
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 875
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 876
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->r1()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 877
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v2

    if-nez v2, :cond_14

    .line 878
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 879
    iget-object v2, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_9

    .line 880
    :cond_5
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v3, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_5

    .line 881
    :cond_6
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 882
    iget-object v2, v2, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    .line 883
    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_7

    .line 884
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_2

    .line 885
    :cond_7
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v2

    .line 886
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/E0;

    .line 887
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 888
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    move-object v1, v2

    .line 889
    :goto_2
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_9

    .line 890
    :cond_a
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 891
    invoke-static {v1}, Lcom/android/tools/r8/internal/Al0;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 892
    :cond_b
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 893
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 894
    sget-boolean v4, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v4, :cond_d

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 895
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/E0;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    if-eqz v4, :cond_e

    goto :goto_3

    .line 896
    :cond_e
    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v5, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/y;->h(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 897
    :goto_5
    new-instance v0, Lcom/android/tools/r8/shaking/Y6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/Y6;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/I4;Ljava/util/function/Function;)V

    .line 898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 899
    instance-of p2, p1, Lcom/android/tools/r8/shaking/Z0;

    if-eqz p2, :cond_14

    .line 900
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/b1;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-interface {p3}, Lcom/android/tools/r8/graph/I4;->e()Lcom/android/tools/r8/graph/D4;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/tools/r8/graph/D4;->d()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;)V

    return-void

    .line 902
    :cond_f
    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 903
    iget-object v4, v4, Lcom/android/tools/r8/graph/t5;->f:Ljava/util/IdentityHashMap;

    .line 904
    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_10

    .line 905
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_7

    .line 906
    :cond_10
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/Al0;->b(I)Ljava/util/Set;

    move-result-object v4

    .line 907
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/E0;

    .line 908
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 909
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    move-object v3, v4

    .line 910
    :goto_7
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 911
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 912
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    :goto_9
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 817
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 818
    instance-of v0, p1, Lcom/android/tools/r8/shaking/a1;

    if-nez v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 820
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/b1;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 822
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->V:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 823
    new-instance v0, Lcom/android/tools/r8/shaking/d7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/d7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/b1;)V

    .line 824
    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 42
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 44
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 45
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/j;

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object p2

    .line 47
    new-instance p3, Lcom/android/tools/r8/shaking/k8;

    invoke-direct {p3, p0, p4, p1, v0}, Lcom/android/tools/r8/shaking/k8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-interface {p2, p3}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/shaking/O;Lcom/android/tools/r8/internal/m80;)V
    .locals 3

    .line 825
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 826
    iget-object v1, p2, Lcom/android/tools/r8/shaking/O;->c:Lcom/android/tools/r8/graph/Z4;

    if-nez v1, :cond_0

    .line 827
    iget-object v1, p2, Lcom/android/tools/r8/shaking/O;->a:Lcom/android/tools/r8/graph/A2;

    iget-boolean v2, p2, Lcom/android/tools/r8/shaking/O;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    iput-object v0, p2, Lcom/android/tools/r8/shaking/O;->c:Lcom/android/tools/r8/graph/Z4;

    .line 828
    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/shaking/O;->c:Lcom/android/tools/r8/graph/Z4;

    .line 829
    new-instance v0, Lcom/android/tools/r8/shaking/D8;

    invoke-direct {v0, p0, p3, p1}, Lcom/android/tools/r8/shaking/D8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/shaking/b1;)V

    .line 830
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1214
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 1215
    iget-object v0, v0, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v1, Lcom/android/tools/r8/shaking/R9;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/shaking/R9;-><init>(Lcom/android/tools/r8/shaking/p1;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1217
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1218
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 1219
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 1220
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 1221
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 1222
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    .line 1223
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 1197
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 1198
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v1, Lcom/android/tools/r8/shaking/e7;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/shaking/e7;-><init>(Lcom/android/tools/r8/shaking/k1;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    goto :goto_0

    .line 1200
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1201
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 1202
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 1203
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 1204
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 1205
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    .line 1206
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 2

    .line 1227
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/M;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1228
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 1229
    iget-object v0, v0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 1231
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 1232
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 1233
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 1234
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 1235
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    goto :goto_1

    .line 1236
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v1, Lcom/android/tools/r8/shaking/p8;

    invoke-direct {v1, p3}, Lcom/android/tools/r8/shaking/p8;-><init>(Lcom/android/tools/r8/shaking/H1;)V

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 1237
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/shaking/p1;Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;)V
    .locals 0

    .line 156
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/s2;)V
    .locals 4

    .line 1181
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/T9;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/T9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v2, Lcom/android/tools/r8/shaking/U9;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/U9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v3, Lcom/android/tools/r8/shaking/V9;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/shaking/V9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/z4;)V
    .locals 3

    .line 1564
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/shaking/z4;)V

    .line 1565
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/E4;)V

    .line 1566
    iget-object v0, p1, Lcom/android/tools/r8/shaking/E4;->d:Lcom/android/tools/r8/internal/h80;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j0:Lcom/android/tools/r8/internal/h80;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/S9;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/S9;-><init>(Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1567
    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz v0, :cond_0

    .line 1568
    iget-object p1, p1, Lcom/android/tools/r8/shaking/E4;->b:Ljava/util/Map;

    new-instance v0, Lcom/android/tools/r8/shaking/b8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/b8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/z;)V
    .locals 4

    .line 17
    iget-object v0, p1, Lcom/android/tools/r8/shaking/z;->a:Lcom/android/tools/r8/graph/H5;

    .line 18
    iget-object v1, p1, Lcom/android/tools/r8/shaking/z;->b:Lcom/android/tools/r8/graph/H5;

    .line 19
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->o0:Ljava/util/LinkedHashMap;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->o0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n0:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/IdentityHashMap;Ljava/util/function/Function;)V
    .locals 6

    .line 560
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b0:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 562
    invoke-virtual {p1, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 563
    sget-boolean v4, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/shaking/B8;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/shaking/B8;-><init>(Lcom/android/tools/r8/graph/M2;)V

    .line 564
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 565
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 566
    :cond_2
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    :cond_3
    new-instance p1, Lcom/android/tools/r8/shaking/C8;

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/shaking/C8;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/Function;)V

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/j1;)V
    .locals 4

    .line 863
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 864
    invoke-static {v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H5;

    .line 865
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 866
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 868
    new-instance v3, Lcom/android/tools/r8/graph/H5;

    invoke-direct {v3, v1, p2}, Lcom/android/tools/r8/graph/H5;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    .line 869
    invoke-static {v2}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;

    move-result-object v2

    .line 870
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 5

    .line 1552
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 1553
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->t:[Lcom/android/tools/r8/internal/jx;

    .line 1554
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1555
    invoke-interface {v4, p0, v1, p1, p2}, Lcom/android/tools/r8/internal/jx;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/L0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 1556
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/F0;)V
    .locals 3

    .line 48
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 50
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->i()Lcom/android/tools/r8/graph/h0;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->D:Ljava/util/Set;

    .line 51
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/shaking/W8;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/W8;-><init>(Ljava/util/Set;)V

    .line 52
    invoke-virtual {p0, v0, p2, v2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/H0;)V
    .locals 4

    .line 112
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->i()Lcom/android/tools/r8/graph/h0;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->D:Ljava/util/Set;

    .line 114
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/W8;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/shaking/W8;-><init>(Ljava/util/Set;)V

    .line 115
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 116
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 117
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->D:Ljava/util/Set;

    .line 118
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/W8;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/shaking/W8;-><init>(Ljava/util/Set;)V

    .line 119
    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/h0;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/C4;)V
    .locals 1

    .line 36
    iget-object p2, p2, Lcom/android/tools/r8/graph/C4;->b:Lcom/android/tools/r8/graph/H0;

    .line 37
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 39
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/X1;

    .line 40
    invoke-virtual {v0, p2, p2, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/D4;)V
    .locals 2

    .line 1033
    invoke-interface {p2}, Lcom/android/tools/r8/graph/D4;->l()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1035
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/R0;

    .line 1036
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 1037
    invoke-interface {p2}, Lcom/android/tools/r8/graph/I4;->m()Lcom/android/tools/r8/graph/H0;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1038
    instance-of v0, p2, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 1039
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/r0;Ljava/util/List;)V
    .locals 1

    .line 570
    new-instance v0, Lcom/android/tools/r8/shaking/j8;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/tools/r8/shaking/j8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/r0;Ljava/util/function/Function;)V

    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/function/Function;Ljava/util/Map;)V
    .locals 1

    .line 569
    new-instance v0, Lcom/android/tools/r8/shaking/y7;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/y7;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/function/Function;)V

    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Predicate;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 83
    sget-object v1, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    const/4 v1, 0x0

    .line 87
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/s1;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->b()Lcom/android/tools/r8/shaking/p1;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 89
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/b2;)Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/P;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/b2;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Ljava/util/ListIterator;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 326
    new-instance p1, Lcom/android/tools/r8/shaking/S8;

    invoke-direct {p1}, Lcom/android/tools/r8/shaking/S8;-><init>()V

    .line 327
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/xK;->a(Ljava/util/Iterator;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Ka;

    .line 328
    invoke-interface {p1}, Lcom/android/tools/r8/internal/Ka;->r()Lcom/android/tools/r8/internal/W9;

    move-result-object p1

    .line 329
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 330
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->L()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W9;->j()Lcom/android/tools/r8/internal/ga;

    move-result-object p1

    .line 332
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ga;->V()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 333
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 334
    iget-object v2, v1, Lcom/android/tools/r8/graph/G1;->p:Lcom/android/tools/r8/internal/QC;

    .line 335
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 336
    iget-object v2, v1, Lcom/android/tools/r8/graph/G1;->a:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v2, :cond_3

    iget-object v2, v1, Lcom/android/tools/r8/graph/G1;->d:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v2, :cond_3

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->m:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 337
    :cond_4
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    :cond_5
    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/b2;)Z
    .locals 2

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/F9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/F9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/b2;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/x0;)Z
    .locals 4

    .line 1517
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 1519
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 1520
    :cond_1
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/x0;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    if-nez p3, :cond_3

    .line 1521
    sget-boolean p2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 1522
    iget-object p3, p2, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    .line 1523
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p2, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 1524
    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p2, p2, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 1525
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_2

    .line 1526
    :cond_2
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected type to be in missing types\': "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 1527
    :cond_3
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 1528
    iget-object v3, v2, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    .line 1529
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v2, Lcom/android/tools/r8/shaking/t2;->b:Ljava/util/IdentityHashMap;

    .line 1530
    invoke-virtual {v3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, v2, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 1531
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 1532
    :cond_4
    new-instance p2, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type with definition also in missing types: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_5
    :goto_0
    if-nez v0, :cond_7

    .line 1533
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    .line 1534
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    .line 1535
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected type to be in live non-program types: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1536
    :cond_7
    :goto_1
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    return v1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/b1;)Z
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g1;)Z
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 961
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 962
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/o3;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 964
    iget-object v0, v0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 965
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z
    .locals 5

    .line 216
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 217
    iget-object v0, v0, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 218
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/o3;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/shaking/w8;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/shaking/w8;-><init>(Lcom/android/tools/r8/internal/C7;)V

    .line 221
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/D3;->b(Ljava/util/function/Consumer;)V

    .line 222
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    sget-object p3, Lcom/android/tools/r8/graph/o3;->e:Lcom/android/tools/r8/graph/o3;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;

    return v1

    .line 224
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/F0;

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F0;)Lcom/android/tools/r8/graph/o3;

    move-result-object v3

    .line 226
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    invoke-virtual {v0, p1, v3}, Lcom/android/tools/r8/graph/n3;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/o3;)Lcom/android/tools/r8/graph/o3;

    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 228
    :cond_2
    sget-object v3, Lcom/android/tools/r8/graph/o3;->e:Lcom/android/tools/r8/graph/o3;

    if-ne v0, v3, :cond_3

    return v2

    :cond_3
    :goto_0
    if-eqz p4, :cond_7

    if-eqz p3, :cond_5

    .line 229
    iget p1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    or-int/lit8 p1, p1, 0x8

    .line 230
    iput p1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    return v1

    .line 231
    :cond_5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/o3;->e()Z

    move-result p1

    if-nez p1, :cond_6

    .line 232
    iget p1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Lcom/android/tools/r8/graph/o3;->b:I

    return v1

    :cond_6
    :goto_1
    return v2

    :cond_7
    if-eqz p3, :cond_a

    .line 233
    iget-object p3, v0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    instance-of p3, p3, Lcom/android/tools/r8/graph/b;

    if-eqz p3, :cond_8

    .line 235
    new-instance p3, Lcom/android/tools/r8/graph/a;

    invoke-direct {p3}, Lcom/android/tools/r8/graph/a;-><init>()V

    iput-object p3, v0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    .line 236
    :cond_8
    iget-object p3, v0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    instance-of p3, p3, Lcom/android/tools/r8/graph/a;

    if-eqz p3, :cond_9

    .line 238
    iget-object p3, v0, Lcom/android/tools/r8/graph/o3;->c:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1

    :cond_9
    return v2

    .line 239
    :cond_a
    iget-object p3, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    instance-of p3, p3, Lcom/android/tools/r8/graph/b;

    if-eqz p3, :cond_b

    .line 241
    new-instance p3, Lcom/android/tools/r8/graph/a;

    invoke-direct {p3}, Lcom/android/tools/r8/graph/a;-><init>()V

    iput-object p3, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    .line 242
    :cond_b
    iget-object p3, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    instance-of p3, p3, Lcom/android/tools/r8/graph/a;

    if-eqz p3, :cond_c

    .line 244
    iget-object p3, v0, Lcom/android/tools/r8/graph/o3;->d:Lcom/android/tools/r8/graph/d;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/d;->a()Lcom/android/tools/r8/graph/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/graph/a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1

    :cond_c
    return v2
.end method

.method public final a(Lcom/android/tools/r8/graph/o0;)Z
    .locals 4

    .line 975
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    .line 976
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->isClass()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 977
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->asClass()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 978
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 980
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 981
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 982
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-nez v0, :cond_2

    .line 983
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 984
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-nez v0, :cond_5

    .line 985
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 986
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 987
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->J()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 988
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    .line 989
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 991
    iget-object v0, v0, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 992
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/g1;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    :goto_2
    return v2

    :cond_8
    if-nez v0, :cond_a

    .line 993
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 994
    :cond_a
    :goto_3
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 995
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 996
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 997
    iget-object v1, v1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 998
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 999
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 1000
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 1001
    iget-object v0, v0, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 1002
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    return v3

    :cond_c
    :goto_4
    return v2

    .line 1003
    :cond_d
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->a()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez v0, :cond_f

    .line 1004
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1005
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/shaking/M4;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Z
    .locals 4

    .line 582
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/shaking/M4;->a(Lcom/android/tools/r8/graph/j1;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 583
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 584
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 585
    :cond_0
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object p2, p2, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v0, p2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 586
    invoke-virtual {p1, p3, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/M2;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final a(Lcom/android/tools/r8/shaking/d0;)Z
    .locals 3

    if-eqz p1, :cond_5

    .line 3
    instance-of v0, p1, Lcom/android/tools/r8/shaking/c0;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/d0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/d0;->a()Lcom/android/tools/r8/shaking/Y;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/shaking/Y;->a:Lcom/android/tools/r8/graph/M2;

    .line 8
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 9
    :cond_1
    instance-of v2, p1, Lcom/android/tools/r8/shaking/a0;

    if-eqz v2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 11
    iget-object p1, p1, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 13
    :cond_2
    instance-of p1, p1, Lcom/android/tools/r8/shaking/Z;

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/t5;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result p1

    return p1

    .line 15
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-eqz p1, :cond_4

    return v1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/A2;
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 330
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 331
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v2, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 332
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 335
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 336
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    const-string v3, "values"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;
    .locals 2

    .line 48
    new-instance v0, Lcom/android/tools/r8/shaking/P7;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/P7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v1, Lcom/android/tools/r8/shaking/R7;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/R7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;
    .locals 9

    .line 217
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 218
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 219
    new-instance v7, Lcom/android/tools/r8/shaking/L9;

    invoke-direct {v7, p0, v0, p2, p1}, Lcom/android/tools/r8/shaking/L9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/A2;)V

    new-instance v8, Lcom/android/tools/r8/shaking/M9;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/shaking/M9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    .line 220
    invoke-virtual {v0, v7, v7, v7, v8}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/b0;
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance p1, Lcom/android/tools/r8/shaking/F8;

    invoke-direct {p1, p3, p2}, Lcom/android/tools/r8/shaking/F8;-><init>(Ljava/util/function/BiConsumer;Lcom/android/tools/r8/graph/E5;)V

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/b0;->a(Ljava/util/function/Consumer;)V

    return-object v0

    .line 13
    :cond_0
    invoke-interface {p4, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/shaking/z4;
    .locals 10

    .line 427
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 428
    new-instance v2, Lcom/android/tools/r8/shaking/I4;

    .line 429
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    .line 430
    sget-object v4, Lcom/android/tools/r8/shaking/w4;->c:Lcom/android/tools/r8/shaking/w4;

    .line 431
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 432
    instance-of v5, v3, Lcom/android/tools/r8/internal/b10;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    new-instance v4, Lcom/android/tools/r8/internal/X70;

    .line 434
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/X70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    :goto_0
    const/4 v3, 0x0

    .line 435
    invoke-direct {v2, v0, v4, v1, v3}, Lcom/android/tools/r8/shaking/I4;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/x4;Lcom/android/tools/r8/graph/Y5;Ljava/lang/Iterable;)V

    .line 436
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/shaking/z;

    .line 437
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    iget-object v5, v4, Lcom/android/tools/r8/shaking/z;->a:Lcom/android/tools/r8/graph/H5;

    .line 439
    iget-object v6, v4, Lcom/android/tools/r8/shaking/z;->b:Lcom/android/tools/r8/graph/H5;

    .line 440
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    .line 441
    iget-object v8, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v9, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v8, v6, v9}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/internal/nJ;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 442
    :cond_1
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->k1()Lcom/android/tools/r8/internal/t40;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 443
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    sget-object v6, Lcom/android/tools/r8/internal/t40;->a:Lcom/android/tools/r8/internal/t40;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/t40;)V

    .line 444
    :cond_2
    iget-object v4, v4, Lcom/android/tools/r8/shaking/z;->c:Ljava/util/function/Consumer;

    .line 445
    invoke-interface {v4, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    .line 446
    :cond_3
    new-instance v0, Lcom/android/tools/r8/shaking/z4;

    iget-object v1, v2, Lcom/android/tools/r8/shaking/I4;->g:Lcom/android/tools/r8/shaking/A;

    iget-object v3, v2, Lcom/android/tools/r8/shaking/I4;->m:Ljava/util/IdentityHashMap;

    iget-object v4, v2, Lcom/android/tools/r8/shaking/I4;->q:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 447
    invoke-static {v4}, Lcom/android/tools/r8/internal/CT;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v2, v2, Lcom/android/tools/r8/shaking/I4;->z:Lcom/android/tools/r8/internal/h80;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/tools/r8/shaking/z4;-><init>(Lcom/android/tools/r8/shaking/A;Ljava/util/IdentityHashMap;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/h80;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/Z4$a;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->M:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v0, Lcom/android/tools/r8/shaking/P9;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/P9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/D5;)V

    new-instance v1, Lcom/android/tools/r8/shaking/Q9;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/tools/r8/shaking/Q9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    invoke-virtual {p4, v0, v1}, Lcom/android/tools/r8/graph/Z4$a;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 316
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/v2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/internal/sK;

    move-result-object p1

    .line 317
    iget-object p3, p1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    iget-object p1, p1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {p3, p1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p1

    .line 318
    :cond_0
    :goto_0
    iget-object p3, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 319
    iget-object p3, p1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 320
    check-cast p3, Lcom/android/tools/r8/graph/M2;

    .line 321
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 322
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 323
    sget-object p4, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 324
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object p4

    .line 325
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/shaking/k1;

    .line 326
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/shaking/k1;

    .line 327
    invoke-virtual {p4}, Lcom/android/tools/r8/shaking/k1;->s()Lcom/android/tools/r8/shaking/k1;

    move-result-object p4

    .line 328
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V
    .locals 2

    .line 88
    iget-object v0, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/shaking/ca;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/ca;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;)V

    .line 89
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/b2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 91
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-static {p2}, Lcom/android/tools/r8/shaking/X1;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/M1;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/x;->j(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_3

    .line 95
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 96
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 97
    iget-object v1, v0, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v1, :cond_5

    .line 98
    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->Z4:Lcom/android/tools/r8/graph/A1;

    .line 100
    iget-object v0, v0, Lcom/android/tools/r8/graph/A1;->b:Lcom/android/tools/r8/internal/QC;

    .line 101
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->c5:Lcom/android/tools/r8/graph/m2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/m2;->a:Lcom/android/tools/r8/graph/A2;

    if-ne p1, v0, :cond_3

    .line 103
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_1

    .line 104
    :cond_3
    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->o6:Lcom/android/tools/r8/graph/o2;

    .line 105
    iget-object v0, p3, Lcom/android/tools/r8/graph/o2;->a:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v0, :cond_4

    .line 106
    iget-object v0, p3, Lcom/android/tools/r8/graph/o2;->b:Lcom/android/tools/r8/graph/A2;

    if-eq p1, v0, :cond_4

    iget-object p3, p3, Lcom/android/tools/r8/graph/o2;->c:Lcom/android/tools/r8/graph/A2;

    if-ne p1, p3, :cond_6

    .line 107
    :cond_4
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_1

    .line 108
    :cond_5
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->q:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 110
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 111
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/K1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p3

    .line 112
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 113
    iget-object p4, p4, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 114
    array-length v0, p4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v2, p4, v1

    .line 115
    invoke-interface {v2, p1, p3, p2}, Lcom/android/tools/r8/internal/Es0;->c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/D5;)V
    .locals 5

    .line 212
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d()Lcom/android/tools/r8/graph/b1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v0

    .line 213
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/p0;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/graph/p0;

    move-result-object v1

    .line 214
    iget-object v0, v0, Lcom/android/tools/r8/graph/u0;->d:[Lcom/android/tools/r8/graph/r0;

    .line 215
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 216
    invoke-virtual {p0, p1, v4, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/graph/r0;Lcom/android/tools/r8/graph/p0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V
    .locals 1

    .line 221
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/Z9;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/Z9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/E5;)V

    const/4 p2, 0x1

    .line 223
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/f0;ZLjava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V
    .locals 3

    .line 255
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    .line 256
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/t5;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->T()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F0;->u()Lcom/android/tools/r8/graph/k3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 264
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 265
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j;

    invoke-static {v0, p2, v1, v2}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 266
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 267
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 268
    sget-object v0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 269
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/k1;->q()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 271
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    .line 272
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/g1;

    .line 274
    iget-object p2, p2, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 275
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->u:Ljava/util/IdentityHashMap;

    .line 276
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/T8;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/T8;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/f80;

    .line 277
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    .line 278
    :cond_3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 279
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    if-eqz p2, :cond_4

    .line 280
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/g1;

    .line 281
    iget-object p2, p2, Lcom/android/tools/r8/graph/g1;->i:Lcom/android/tools/r8/graph/y5;

    .line 282
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/y5;)V

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/J2;)V

    .line 284
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)V

    .line 285
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 286
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/D5;)V

    .line 288
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 289
    iget-object p2, p2, Lcom/android/tools/r8/internal/ju;->p:[Lcom/android/tools/r8/internal/DZ;

    .line 290
    array-length p3, p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_5

    aget-object v1, p2, v0

    .line 291
    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/DZ;->a(Lcom/android/tools/r8/graph/F5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void

    .line 292
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/g1;

    invoke-virtual {p2, p1, p3}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)V
    .locals 5

    .line 166
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ;->F:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/tools/r8/shaking/x8;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/x8;-><init>()V

    .line 168
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 169
    sget-object v3, Lcom/android/tools/r8/shaking/s2;->b:Lcom/android/tools/r8/shaking/s2;

    .line 170
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/shaking/C;->b(Lcom/android/tools/r8/shaking/s2;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v2

    .line 171
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->getReference()Lcom/android/tools/r8/graph/J2;

    move-result-object v3

    .line 172
    iget-object v2, v2, Lcom/android/tools/r8/shaking/s2;->a:Ljava/util/Map;

    const/4 v4, 0x0

    .line 173
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/s1;

    if-eqz v2, :cond_1

    .line 174
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    .line 175
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 177
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 179
    iget-object v1, v1, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 180
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 182
    iget-object v1, p2, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v1, :cond_4

    .line 183
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object p1

    .line 184
    iget-object v0, v0, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/android/tools/r8/internal/Dz$a;->l:Lcom/android/tools/r8/internal/Dz$a;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    :cond_4
    return-void

    .line 186
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 187
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_6

    .line 188
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 189
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 190
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " implements the interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not an interface."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    .line 193
    :cond_6
    new-instance p2, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 194
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 195
    :cond_7
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 196
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 197
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 198
    iget-object v1, v1, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 199
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 200
    :cond_8
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->J:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/y8;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/y8;-><init>()V

    .line 201
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 202
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 203
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 204
    invoke-virtual {p0, v2, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 205
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->w1()Z

    move-result v3

    if-nez v3, :cond_b

    .line 206
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 207
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    .line 209
    :cond_a
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v2, v0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    goto :goto_1

    .line 210
    :cond_b
    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_c
    :goto_3
    return-void

    .line 211
    :cond_d
    :goto_4
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 225
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    .line 227
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 229
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/shaking/Z0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Z0;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 230
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 231
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 350
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 351
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 352
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/shaking/H1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v3, Lcom/android/tools/r8/shaking/p7;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/shaking/p7;-><init>(Lcom/android/tools/r8/shaking/H1;)V

    invoke-virtual {v2, v3, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 354
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/W1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/W1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 3
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p2

    .line 4
    new-instance v1, Lcom/android/tools/r8/shaking/t7;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/tools/r8/shaking/t7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/graph/Z4;->a(Ljava/util/function/Consumer;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 8
    invoke-interface {v3, p2, p1}, Lcom/android/tools/r8/internal/Es0;->a(Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)V
    .locals 9

    .line 448
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    .line 450
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/G1;->n:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-eqz p1, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 453
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 454
    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 455
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_c

    .line 456
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-nez p2, :cond_3

    goto/16 :goto_c

    .line 457
    :cond_3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 458
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 459
    :cond_4
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->P4:Lcom/android/tools/r8/graph/H1;

    iget-object v2, v2, Lcom/android/tools/r8/graph/H1;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    .line 460
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-nez v0, :cond_6

    .line 461
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-eqz p1, :cond_5

    goto/16 :goto_c

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 462
    :cond_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 463
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_c

    .line 464
    :cond_7
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object p2

    .line 465
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 466
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->i:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 467
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->j:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v1, :cond_8

    goto/16 :goto_c

    .line 468
    :cond_8
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 469
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 470
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_c

    .line 471
    :cond_9
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_c

    .line 472
    :cond_a
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 473
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    .line 474
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_c

    .line 475
    :cond_b
    iget-object v1, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v1

    .line 476
    iget-object v2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v2

    if-eqz v1, :cond_c

    .line 477
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result v5

    goto :goto_0

    :cond_c
    if-eqz v2, :cond_d

    .line 478
    iget-object v5, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 479
    :cond_d
    iget-object v5, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v5, v4

    goto :goto_0

    :cond_e
    const/4 v5, -0x1

    :goto_0
    if-gez v5, :cond_f

    goto/16 :goto_c

    :cond_f
    if-nez v5, :cond_10

    .line 480
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    goto/16 :goto_4

    .line 481
    :cond_10
    new-array v6, v5, [Lcom/android/tools/r8/graph/M2;

    if-eqz v1, :cond_11

    move v4, v5

    goto :goto_2

    .line 482
    :cond_11
    iget-object v1, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    move v2, v4

    :goto_1
    if-ge v2, v5, :cond_13

    .line 483
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/xw0;

    iget-object v8, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {v7, v8}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-nez v7, :cond_12

    goto/16 :goto_c

    .line 484
    :cond_12
    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    :cond_13
    :goto_2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 486
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 487
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v2

    .line 488
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eq v7, p2, :cond_15

    goto/16 :goto_c

    .line 489
    :cond_15
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v7

    if-gez v7, :cond_16

    goto/16 :goto_c

    .line 490
    :cond_16
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v8, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 491
    invoke-static {v2, v8}, Lcom/android/tools/r8/internal/Ch;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/d1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-nez v2, :cond_17

    goto/16 :goto_c

    .line 492
    :cond_17
    aget-object v8, v6, v7

    if-ne v8, v2, :cond_18

    goto :goto_3

    :cond_18
    if-eqz v8, :cond_19

    goto/16 :goto_c

    .line 493
    :cond_19
    aput-object v2, v6, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_1a
    if-nez v4, :cond_1b

    .line 494
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    :cond_1b
    :goto_4
    if-eqz v3, :cond_39

    .line 495
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 496
    :cond_1c
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->c5:Lcom/android/tools/r8/graph/m2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/m2;->a:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)V

    return-void

    .line 498
    :cond_1d
    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->o6:Lcom/android/tools/r8/graph/o2;

    .line 499
    iget-object v5, v2, Lcom/android/tools/r8/graph/o2;->a:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v5, :cond_33

    .line 500
    iget-object v5, v2, Lcom/android/tools/r8/graph/o2;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v0, v5, :cond_33

    iget-object v2, v2, Lcom/android/tools/r8/graph/o2;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v0, v2, :cond_1e

    goto/16 :goto_a

    .line 501
    :cond_1e
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 502
    iget-object v2, v2, Lcom/android/tools/r8/internal/ju;->h:[Lcom/android/tools/r8/internal/oK;

    .line 503
    array-length v5, v2

    :goto_5
    if-ge v4, v5, :cond_20

    aget-object v6, v2, v4

    .line 504
    invoke-interface {v6, p1, p2}, Lcom/android/tools/r8/internal/oK;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Z

    move-result v6

    if-eqz v6, :cond_1f

    goto/16 :goto_c

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 505
    :cond_20
    invoke-static {v1, v0}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_c

    .line 506
    :cond_21
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 507
    invoke-static {p2, v2, p1}, Lcom/android/tools/r8/naming/F;->a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/wB;

    move-result-object p2

    if-nez p2, :cond_22

    goto/16 :goto_c

    .line 508
    :cond_22
    iget-object v2, p2, Lcom/android/tools/r8/internal/wB;->a:Lcom/android/tools/r8/graph/J2;

    .line 509
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 510
    instance-of v4, v2, Lcom/android/tools/r8/graph/M2;

    if-eqz v4, :cond_29

    .line 511
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 513
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->c()Lcom/android/tools/r8/internal/dW;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/dW;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_23

    goto/16 :goto_c

    .line 514
    :cond_23
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_25

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/wB;->b()Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_6

    :cond_24
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 515
    :cond_25
    :goto_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/wB;->a()Lcom/android/tools/r8/internal/yB;

    move-result-object p2

    .line 516
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_26

    goto/16 :goto_c

    .line 517
    :cond_26
    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 518
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 519
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->l1()Z

    move-result v1

    if-nez v1, :cond_27

    .line 520
    iget-object v1, v0, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_27

    .line 521
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-nez v1, :cond_27

    .line 522
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 523
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/yB;->a(Lcom/android/tools/r8/internal/nJ;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 524
    new-instance p2, Lcom/android/tools/r8/shaking/n8;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/n8;-><init>(Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/function/Supplier;)V

    goto :goto_7

    .line 525
    :cond_27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/yB;->c()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 526
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    .line 527
    :cond_28
    :goto_7
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 528
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance p2, Lcom/android/tools/r8/shaking/o8;

    invoke-direct {p2}, Lcom/android/tools/r8/shaking/o8;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 529
    :cond_29
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->p0()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 530
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->l0()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    .line 531
    iget-object v2, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 532
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-nez v2, :cond_2a

    goto/16 :goto_c

    .line 533
    :cond_2a
    iget-object v4, v2, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 534
    iget-object v4, v4, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 535
    invoke-virtual {v4, p2}, Lcom/android/tools/r8/graph/s3;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1;

    move-result-object p2

    if-nez p2, :cond_2b

    goto/16 :goto_c

    .line 536
    :cond_2b
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/g1;->w0()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->Z4:Lcom/android/tools/r8/graph/A1;

    .line 537
    iget-object v1, v1, Lcom/android/tools/r8/graph/A1;->b:Lcom/android/tools/r8/internal/QC;

    .line 538
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 539
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 540
    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, v4}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    const/4 v4, 0x5

    .line 541
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    .line 542
    :cond_2c
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, p2, v2}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/q1;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 543
    new-instance v0, Lcom/android/tools/r8/graph/F5;

    invoke-direct {v0, p2, v2}, Lcom/android/tools/r8/graph/F5;-><init>(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/graph/H2;)V

    .line 544
    sget-object p2, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    .line 545
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/q1;->c()Lcom/android/tools/r8/shaking/p1;

    move-result-object p2

    .line 546
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/p1;

    .line 547
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/p1;

    .line 548
    new-instance v1, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 549
    iget-object p1, p2, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    .line 550
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object p1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void

    .line 552
    :cond_2d
    sget-boolean p2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p2, :cond_2f

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->r0()Z

    move-result p2

    if-eqz p2, :cond_2e

    goto :goto_8

    :cond_2e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 553
    :cond_2f
    :goto_8
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/J2;->n0()Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    .line 554
    iget-object v0, p2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 555
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-nez v0, :cond_30

    goto/16 :goto_c

    .line 556
    :cond_30
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    if-nez p2, :cond_31

    goto/16 :goto_c

    .line 557
    :cond_31
    new-instance v0, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 558
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    .line 559
    iget-object p1, p1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 560
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 561
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 562
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_9

    .line 563
    :cond_32
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 564
    :goto_9
    sget-object p1, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 565
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/H1;

    .line 567
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void

    .line 568
    :cond_33
    :goto_a
    iget-object v0, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 569
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_34

    goto/16 :goto_c

    .line 570
    :cond_34
    iget-object p2, p2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 571
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    .line 572
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    instance-of v0, v0, Lcom/android/tools/r8/internal/jh;

    if-eqz v0, :cond_37

    .line 574
    iget-object p2, p2, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object p2

    .line 575
    iget-object p2, p2, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 576
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 577
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 578
    sget-boolean v1, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v1, :cond_35

    .line 579
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l;->b()V

    .line 580
    :cond_35
    iget-object v0, v0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    .line 581
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 582
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_c

    .line 583
    :cond_36
    new-instance v0, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 584
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/T1;)V

    return-void

    .line 585
    :cond_37
    new-instance p2, Lcom/android/tools/r8/shaking/T1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/shaking/T1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 586
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 587
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->c:Lcom/android/tools/r8/graph/l;

    .line 588
    sget-boolean v1, Lcom/android/tools/r8/graph/l;->d:Z

    if-nez v1, :cond_38

    .line 589
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l;->b()V

    .line 590
    :cond_38
    iget-object v0, v0, Lcom/android/tools/r8/graph/l;->c:Ljava/lang/Object;

    .line 591
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 592
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 593
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/T1;)V

    goto :goto_b

    :cond_39
    :goto_c
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 1

    .line 356
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V
    .locals 2

    .line 14
    new-instance v0, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v1, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/f0;)V
    .locals 2

    .line 362
    new-instance v0, Lcom/android/tools/r8/shaking/W9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/W9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/f0;ZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/x3;)V
    .locals 1

    .line 293
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 295
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->I:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/shaking/H9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/H9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V

    .line 297
    iget-object p1, p3, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz p1, :cond_0

    .line 298
    iget-object p1, p1, Lcom/android/tools/r8/internal/Oa0;->c:Lcom/android/tools/r8/internal/Oy;

    if-eqz p1, :cond_0

    .line 299
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V
    .locals 9

    .line 116
    iget v0, p4, Lcom/android/tools/r8/shaking/K;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v0

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;ZZ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    .line 120
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$n;->a:Z

    if-eqz v3, :cond_3

    .line 122
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v4, Lcom/android/tools/r8/shaking/Y8;

    invoke-direct {v4, p0, v0}, Lcom/android/tools/r8/shaking/Y8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/D3;)V

    .line 123
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 124
    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/graph/y;->a(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/D3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 127
    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/shaking/S;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 128
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_6

    .line 129
    iget p1, p4, Lcom/android/tools/r8/shaking/K;->b:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    goto :goto_3

    .line 130
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-void

    .line 131
    :cond_7
    new-instance v7, Lcom/android/tools/r8/shaking/Z8;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/shaking/Z8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;)V

    new-instance p3, Lcom/android/tools/r8/shaking/b9;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/tools/r8/shaking/b9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)V

    .line 132
    invoke-virtual {v0, v7, v7, p3}, Lcom/android/tools/r8/graph/D3;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/J;Lcom/android/tools/r8/shaking/K;Lcom/android/tools/r8/graph/D3$a;)V
    .locals 6

    .line 133
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/ju;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/D3$a;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/shaking/J;)V

    .line 134
    iget-object p1, p5, Lcom/android/tools/r8/graph/D3$a;->c:Lcom/android/tools/r8/graph/E0;

    .line 135
    iget-object v0, p5, Lcom/android/tools/r8/graph/D3$a;->d:Lcom/android/tools/r8/graph/g1;

    invoke-static {p1, v0}, Lcom/android/tools/r8/graph/F0;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/F0;

    move-result-object p1

    .line 136
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    .line 137
    iget-object p5, p5, Lcom/android/tools/r8/graph/D3$a;->b:Lcom/android/tools/r8/graph/E0;

    .line 138
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->getHolder()Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    if-eq p5, v1, :cond_0

    .line 139
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p5}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p5

    .line 141
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v1, p5, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v1

    invoke-virtual {p0, p5, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 142
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->W()Lcom/android/tools/r8/graph/F5;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_3

    .line 143
    iget-object p5, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p5}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/g1;

    .line 144
    iget-object p5, p5, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 145
    invoke-virtual {p5}, Lcom/android/tools/r8/internal/vw;->i()Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_0

    :cond_2
    new-instance p3, Ljava/lang/AssertionError;

    .line 146
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unexpected reference in `"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "` to field marked dead: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p3

    .line 148
    :cond_3
    :goto_0
    iget p4, p4, Lcom/android/tools/r8/shaking/K;->b:I

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    .line 149
    iget-object p4, p0, Lcom/android/tools/r8/shaking/N;->n:Lcom/android/tools/r8/graph/n3;

    .line 150
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p5

    check-cast p5, Lcom/android/tools/r8/graph/l1;

    .line 151
    iget-object p4, p4, Lcom/android/tools/r8/graph/n3;->a:Ljava/util/Map;

    .line 152
    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/o3;

    .line 153
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 155
    iget p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 p3, p3, 0x2

    iput p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    goto :goto_2

    .line 156
    :cond_4
    iget p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    or-int/lit8 p3, p3, 0x4

    iput p3, p4, Lcom/android/tools/r8/graph/o3;->b:I

    goto :goto_2

    :cond_5
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_8

    if-nez v0, :cond_7

    .line 157
    invoke-virtual {p3}, Lcom/android/tools/r8/shaking/J;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 158
    :cond_7
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/F5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p4

    new-instance p5, Lcom/android/tools/r8/shaking/k9;

    invoke-direct {p5}, Lcom/android/tools/r8/shaking/k9;-><init>()V

    .line 160
    invoke-virtual {p3, p5, p4}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V

    .line 161
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance p4, Lcom/android/tools/r8/shaking/m9;

    invoke-direct {p4}, Lcom/android/tools/r8/shaking/m9;-><init>()V

    invoke-virtual {p3, p1, p4}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/F5;Ljava/util/function/Consumer;)V

    .line 162
    :cond_8
    :goto_2
    new-instance p3, Lcom/android/tools/r8/shaking/R1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/j1;

    invoke-direct {p3, p4}, Lcom/android/tools/r8/shaking/R1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    .line 163
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    .line 426
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final synthetic b(Lcom/android/tools/r8/shaking/Q;)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/Q;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w6:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, p2, p2, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    new-instance v0, Lcom/android/tools/r8/shaking/D9;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/D9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/internal/b2;)V

    return-void

    .line 305
    :cond_1
    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_5

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v0

    if-nez v0, :cond_5

    .line 306
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    if-nez p1, :cond_3

    .line 307
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Class initializers are never targeted"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_0
    if-nez p1, :cond_5

    .line 308
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 309
    iget-object v1, v1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 310
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 311
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 312
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    new-instance v0, Lcom/android/tools/r8/shaking/E9;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/E9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/internal/b2;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;)V
    .locals 6

    .line 232
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 233
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 234
    :cond_2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->D1()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    .line 235
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_5

    .line 236
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 237
    iget-object v3, v1, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 238
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 239
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 240
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, p2, v4}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v3

    .line 241
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/Z4;)V

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    instance-of v3, p1, Lcom/android/tools/r8/shaking/Z0;

    if-eqz v3, :cond_3

    .line 244
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 245
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    .line 246
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 247
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WR;->b()Lcom/android/tools/r8/internal/zm;

    move-result-object v3

    .line 248
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->X0()Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/zm;->a(Lcom/android/tools/r8/graph/I2;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 250
    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/internal/em;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    if-nez v2, :cond_7

    .line 251
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    if-eq v3, v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 252
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 253
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/b1;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v1

    .line 254
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/b1;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/Z4;)V

    goto :goto_1

    :cond_8
    :goto_4
    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 6

    .line 49
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/d0;->a(Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/b1;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 53
    iget-object v2, p3, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    .line 54
    iget-object p3, p3, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 55
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/g1;

    .line 56
    sget-boolean v4, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v4, :cond_2

    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/tools/r8/shaking/S0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_2
    :goto_0
    iget-object v4, v1, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v4, :cond_5

    .line 60
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/X1;

    .line 61
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    goto :goto_1

    .line 62
    :cond_3
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/L3;

    .line 63
    iget-object v4, v1, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;)Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v4

    .line 66
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/l1;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    goto :goto_2

    .line 67
    :cond_5
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    :cond_0
    iget-object v0, p3, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 342
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    :cond_1
    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 346
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/d0;->a(Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/b1;

    move-result-object p1

    .line 347
    iget-object p3, p3, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 348
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V

    :cond_3
    return-void
.end method

.method public final b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 6

    .line 68
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 70
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/shaking/d0;->a(Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/graph/b1;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 72
    iget-object v2, p3, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    .line 73
    iget-object p3, p3, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 74
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 75
    sget-boolean v4, Lcom/android/tools/r8/shaking/S0;->k:Z

    if-nez v4, :cond_2

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/tools/r8/shaking/S0;->b:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 78
    :cond_2
    :goto_0
    iget-object v4, v1, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v4, :cond_5

    .line 79
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/shaking/X1;

    .line 80
    invoke-virtual {v1, v3, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    goto :goto_1

    .line 81
    :cond_3
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_4
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/L3;

    .line 82
    iget-object v4, v1, Lcom/android/tools/r8/shaking/S0;->c:Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;

    if-eqz v4, :cond_4

    .line 83
    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/L3;)Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;)Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v4

    .line 85
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v1, v5}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz$a;)V

    goto :goto_2

    .line 86
    :cond_5
    sget-object p1, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 363
    const-string v0, "Grow the tree."

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 364
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compute fixpoint #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 365
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/N;->e()J

    move-result-wide v2

    .line 366
    const-string v0, "Process worklist"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 367
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 369
    iget-object v0, v0, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 370
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k0;

    .line 371
    invoke-virtual {v0, p0, p2}, Lcom/android/tools/r8/shaking/k0;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 372
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 373
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/N;->e()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 374
    const-string v0, "Conditional rules"

    new-instance v2, Lcom/android/tools/r8/shaking/A7;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/A7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 375
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/N;->e()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 376
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto/16 :goto_5

    .line 378
    :cond_3
    const-string v0, "Process deferred annotations"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 379
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c0:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/B7;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/B7;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/IdentityHashMap;Ljava/util/function/Function;)V

    .line 380
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->d0:Ljava/util/IdentityHashMap;

    new-instance v2, Lcom/android/tools/r8/shaking/C7;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/C7;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/N;->a(Ljava/util/IdentityHashMap;Ljava/util/function/Function;)V

    .line 381
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 382
    const-string v0, "Process onclick methods"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 383
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/N;->j()V

    .line 384
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 385
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 386
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto/16 :goto_5

    .line 387
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    .line 388
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 389
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 390
    const-string v0, "Handle reflective behavior"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 391
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    new-instance v2, Lcom/android/tools/r8/shaking/D7;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/D7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 392
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    .line 393
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 394
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 395
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 396
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 397
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto/16 :goto_5

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->g:Lcom/android/tools/r8/shaking/S;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, v2, p2}, Lcom/android/tools/r8/shaking/S;->a(Lcom/android/tools/r8/shaking/L0;Lcom/android/tools/r8/internal/ns0;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 399
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 400
    :cond_8
    :goto_3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_5

    .line 401
    :cond_9
    const-string v0, "Notify analyses"

    new-instance v2, Lcom/android/tools/r8/shaking/E7;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/tools/r8/shaking/E7;-><init>(Lcom/android/tools/r8/shaking/N;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 402
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 403
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_5

    .line 404
    :cond_a
    const-string v0, "Process delayed root set items"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 405
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_b

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/shaking/z;

    .line 406
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/z;)V

    goto :goto_4

    .line 408
    :cond_b
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 409
    const-string v0, "Synthesize"

    new-instance v2, Lcom/android/tools/r8/shaking/G7;

    invoke-direct {v2, p0, p2}, Lcom/android/tools/r8/shaking/G7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {p2, v0, v2}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 410
    const-string v0, "Delayed interface method synthetic bridges"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 411
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/N;->b()Lcom/android/tools/r8/shaking/z4;

    move-result-object v0

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/z4;)V

    .line 413
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    .line 414
    iget-object v2, v2, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 415
    iget-object v0, v0, Lcom/android/tools/r8/shaking/E4;->a:Lcom/android/tools/r8/shaking/C;

    .line 416
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/C;)V

    .line 417
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/E4;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 419
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    :goto_5
    move v0, v1

    goto/16 :goto_0

    .line 421
    :cond_c
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 422
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 423
    const-string p1, "Post processing desugaring"

    new-instance v0, Lcom/android/tools/r8/shaking/H7;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/shaking/H7;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_d
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :goto_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 425
    throw p1
.end method

.method public final synthetic b(Lcom/android/tools/r8/graph/b1;)Z
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/b1;Lcom/android/tools/r8/shaking/Q0;Lcom/android/tools/r8/graph/d1;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Z
    .locals 5

    .line 15
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    new-instance v0, Lcom/android/tools/r8/shaking/V1;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/V1;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    .line 20
    sget-object p2, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/k1;

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/k1;->s()Lcom/android/tools/r8/shaking/k1;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/shaking/k1;

    .line 25
    sget-object v2, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    .line 26
    iget-object p2, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result p2

    if-nez p2, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 28
    :cond_1
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {p2, p1, v2, v3, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/X1;)V

    .line 29
    sget-object p2, Lcom/android/tools/r8/graph/M2;->h:[Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/E0;->a([Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->H1()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 31
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 33
    invoke-virtual {v2, v3, p2, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)V

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 35
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->K1()Lcom/android/tools/r8/internal/sK;

    move-result-object p2

    .line 36
    iget-object v2, p2, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object p2, p2, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v2, p2}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object p2

    .line 37
    :goto_2
    iget-object v2, p2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    iget-object v2, p2, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 39
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 40
    sget-object v3, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 41
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/H1;

    .line 43
    sget-object v4, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 44
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 45
    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method public final c()Lcom/android/tools/r8/shaking/i0;
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    new-instance v1, Lcom/android/tools/r8/shaking/X9;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/X9;-><init>()V

    new-instance v2, Lcom/android/tools/r8/shaking/Y9;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/Y9;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/graph/y;->b(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i0;

    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/Y9;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/Y9;-><init>()V

    return-object v0
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/shaking/o2;
    .locals 3

    .line 97
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 98
    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->a:[Lcom/android/tools/r8/internal/zs0;

    .line 99
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->b:[Lcom/android/tools/r8/internal/As0;

    .line 100
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->c:[Lcom/android/tools/r8/internal/Bs0;

    .line 101
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->d:[Lcom/android/tools/r8/internal/Cs0;

    .line 102
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->e:[Lcom/android/tools/r8/internal/Ds0;

    .line 103
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 104
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->g:[Lcom/android/tools/r8/internal/Gs0;

    .line 105
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->i:[Lcom/android/tools/r8/internal/wZ;

    .line 106
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->j:[Lcom/android/tools/r8/internal/yZ;

    .line 107
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->k:[Lcom/android/tools/r8/internal/zZ;

    .line 108
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->l:[Lcom/android/tools/r8/internal/AZ;

    .line 109
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->m:[Lcom/android/tools/r8/internal/BZ;

    .line 110
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->n:[Lcom/android/tools/r8/internal/xZ;

    .line 111
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->o:[Lcom/android/tools/r8/internal/CZ;

    .line 112
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->p:[Lcom/android/tools/r8/internal/DZ;

    .line 113
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->q:[Lcom/android/tools/r8/internal/EZ;

    .line 114
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->r:[Lcom/android/tools/r8/internal/FZ;

    .line 115
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/tools/r8/internal/ju;->s:[Lcom/android/tools/r8/internal/fx;

    .line 116
    invoke-static {v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lcom/android/tools/r8/internal/ju;->t:[Lcom/android/tools/r8/internal/jx;

    .line 117
    invoke-static {v1}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 119
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 120
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 121
    iget-object v1, v1, Lcom/android/tools/r8/graph/y;->p:Lcom/android/tools/r8/shaking/B4;

    .line 122
    iput-object v1, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/E4;)V

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 125
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 126
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    new-instance p2, Lcom/android/tools/r8/shaking/m2;

    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/o2;->e:Z

    invoke-direct {p2, p1}, Lcom/android/tools/r8/shaking/m2;-><init>(Z)V

    .line 128
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/shaking/h7;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/shaking/h7;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 129
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    sget-object v1, Lcom/android/tools/r8/shaking/N$a;->d:Lcom/android/tools/r8/shaking/N$a;

    if-ne p1, v1, :cond_5

    .line 131
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 132
    iget-object p1, p1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 133
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 134
    :cond_4
    new-instance v0, Lcom/android/tools/r8/shaking/i7;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/i7;-><init>(Lcom/android/tools/r8/shaking/m2;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_7

    .line 135
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    .line 136
    iget-boolean p1, p1, Lcom/android/tools/r8/shaking/o2;->e:Z

    if-nez p1, :cond_7

    .line 137
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    sget-object v0, Lcom/android/tools/r8/shaking/N$a;->f:Lcom/android/tools/r8/shaking/N$a;

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 140
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 141
    :cond_7
    :goto_2
    new-instance p1, Lcom/android/tools/r8/shaking/p2;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 142
    iget-object v1, p2, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    .line 143
    invoke-direct {p1, v0, v1, p2}, Lcom/android/tools/r8/shaking/p2;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/Set;Lcom/android/tools/r8/shaking/m2;)V

    .line 144
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/p2;->a()V

    .line 145
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/p2;->b()V

    .line 146
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    .line 147
    iget-object p1, p1, Lcom/android/tools/r8/shaking/o2;->a:Ljava/util/Set;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/m2;->a(Ljava/util/Set;)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/x;Lcom/android/tools/r8/shaking/K1;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 33
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/shaking/x;->l(Lcom/android/tools/r8/graph/A2;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_3

    .line 34
    :cond_0
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 35
    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/G1;->n:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p3, Lcom/android/tools/r8/graph/u1;->P4:Lcom/android/tools/r8/graph/H1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/H1;->a:Lcom/android/tools/r8/graph/A2;

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    iget-object p3, p3, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    .line 38
    iget-object p3, p3, Lcom/android/tools/r8/graph/G1;->o:Lcom/android/tools/r8/internal/QC;

    .line 39
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 40
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->q:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    iget-object p3, p0, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 43
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    const/4 p3, 0x0

    .line 44
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/graph/Z4;

    move-result-object p4

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 46
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->f:[Lcom/android/tools/r8/internal/Es0;

    .line 47
    array-length v1, v0

    :goto_2
    if-ge p3, v1, :cond_4

    aget-object v2, v0, p3

    .line 48
    invoke-interface {v2, p1, p4, p2}, Lcom/android/tools/r8/internal/Es0;->b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E5;)V
    .locals 1

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p2

    if-nez p2, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/shaking/W9;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/shaking/W9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/f0;ZLjava/util/function/BiConsumer;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ns0;)V
    .locals 2

    .line 88
    new-instance v0, Lcom/android/tools/r8/shaking/c9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/c9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ns0;)V

    const-string v1, "Transition methods"

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 89
    new-instance v0, Lcom/android/tools/r8/shaking/d9;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/d9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;)V

    const-string v1, "Transition fields"

    invoke-virtual {p2, v1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 90
    new-instance v0, Lcom/android/tools/r8/shaking/e9;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/shaking/e9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;)V

    const-string p1, "Transition dependent items"

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V
    .locals 1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 93
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    new-instance v0, Lcom/android/tools/r8/shaking/ba;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/ba;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 94
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 95
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->R()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->k:Lcom/android/tools/r8/shaking/D4;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/shaking/D4;->a(Lcom/android/tools/r8/graph/D5;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/EW;->d()Lcom/android/tools/r8/internal/EW$a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->o()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 206
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 208
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 1

    .line 148
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V
    .locals 2

    .line 64
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 65
    iget-object v0, v0, Lcom/android/tools/r8/shaking/t2;->a:Ljava/util/Set;

    .line 66
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 68
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    .line 69
    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->a:Ljava/util/Set;

    .line 70
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->G:Ljava/util/Set;

    .line 72
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->H:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    .line 75
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected missing class `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 76
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->b()Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 79
    iget-object v0, v0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 81
    invoke-interface {p2}, Lcom/android/tools/r8/graph/E5;->getContext()Lcom/android/tools/r8/graph/o0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->g()Lcom/android/tools/r8/graph/D5;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 85
    iget-object p2, p2, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 86
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/t2;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/E0;

    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/L0;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/x0;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 3
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/x0;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    new-instance v1, Lcom/android/tools/r8/internal/V31;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/V31;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Y9;->a(Ljava/util/function/Consumer;)V

    .line 171
    new-instance v0, Lcom/android/tools/r8/shaking/Q;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 172
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/Q;-><init>(Lcom/android/tools/r8/internal/Ef;)V

    .line 173
    sget-boolean v1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 174
    iget-object v1, v1, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 175
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 177
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    new-instance v4, Lcom/android/tools/r8/shaking/v7;

    invoke-direct {v4, p0}, Lcom/android/tools/r8/shaking/v7;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 178
    new-instance v5, Lcom/android/tools/r8/internal/Sa;

    invoke-direct {v5, v0, v3, v4}, Lcom/android/tools/r8/internal/Sa;-><init>(Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/internal/Y9;Ljava/util/function/BiConsumer;)V

    .line 179
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    instance-of v3, v2, Lcom/android/tools/r8/internal/b10;

    if-eqz v3, :cond_2

    goto :goto_1

    .line 181
    :cond_2
    new-instance v3, Lcom/android/tools/r8/internal/R70;

    .line 182
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v2

    .line 183
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v1

    invoke-direct {v3, v2, v1, v5}, Lcom/android/tools/r8/internal/R70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;Lcom/android/tools/r8/internal/Ta;)V

    move-object v5, v3

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->g0:Lcom/android/tools/r8/internal/Y9;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    .line 185
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/shaking/w7;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/shaking/w7;-><init>(Lcom/android/tools/r8/shaking/M;)V

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->k0:Lcom/android/tools/r8/internal/JI;

    .line 186
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/Y9;->a(Ljava/util/function/Predicate;Lcom/android/tools/r8/internal/JI;)Lcom/android/tools/r8/internal/DI;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/tools/r8/shaking/w7;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/shaking/w7;-><init>(Lcom/android/tools/r8/shaking/M;)V

    invoke-static {v2, v1, v4}, Lcom/android/tools/r8/internal/Qa;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/DI;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Qa;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->h:Ljava/util/concurrent/ExecutorService;

    .line 188
    invoke-virtual {v1, v2, v5, v3, p1}, Lcom/android/tools/r8/internal/Qa;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 189
    iget-object p1, v0, Lcom/android/tools/r8/shaking/Q;->c:Ljava/util/LinkedList;

    .line 190
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/android/tools/r8/shaking/Q;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 191
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/android/tools/r8/shaking/Q;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 192
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/android/tools/r8/shaking/Q;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 193
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    new-instance v1, Lcom/android/tools/r8/shaking/x7;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/x7;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/j;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 195
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 196
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {p1}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 197
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/shaking/N;)V

    .line 198
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/L0;->b()Lcom/android/tools/r8/shaking/u0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 199
    :goto_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/L0;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 200
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    .line 201
    iget-object p1, p1, Lcom/android/tools/r8/shaking/L0;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 202
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/shaking/k0;

    .line 203
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/tools/r8/shaking/k0;->a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/ns0;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/shaking/Q;)V
    .locals 0

    .line 169
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/shaking/Q;->a(Lcom/android/tools/r8/shaking/N;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/shaking/M;->a(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 17
    iget-object p1, p1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/shaking/N;->g(Lcom/android/tools/r8/graph/H5;)V

    .line 19
    :cond_1
    iget-boolean p1, p0, Lcom/android/tools/r8/shaking/N;->a:Z

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L4;->H()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    .line 23
    invoke-virtual {p1, p2, p2, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/internal/ju;->r:[Lcom/android/tools/r8/internal/FZ;

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 27
    invoke-interface {v2, p2}, Lcom/android/tools/r8/internal/FZ;->a(Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    :cond_0
    iget-object v0, p3, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 151
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 153
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    :cond_2
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    :cond_0
    iget-object v0, p3, Lcom/android/tools/r8/shaking/s1;->a:Lcom/android/tools/r8/shaking/r1;

    .line 157
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/r1;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 159
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    .line 160
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 161
    iget-object p1, p3, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 162
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    .line 163
    sget-object v0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 164
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    .line 166
    sget-object v1, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v1, p3, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    .line 167
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V

    :cond_2
    return-void
.end method

.method public final synthetic c(Lcom/android/tools/r8/graph/j1;)Z
    .locals 4

    .line 57
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 58
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/j1;->j(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 59
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->k4:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n0:Ljava/util/HashMap;

    .line 60
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->C0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final d()V
    .locals 8

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 9
    :cond_0
    sget-object v0, Lcom/android/tools/r8/shaking/l1;->t:Lcom/android/tools/r8/shaking/l1;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/l1;->d()Lcom/android/tools/r8/shaking/k1;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/k1;

    .line 12
    sget-object v1, Lcom/android/tools/r8/shaking/q1;->o:Lcom/android/tools/r8/shaking/q1;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/q1;->c()Lcom/android/tools/r8/shaking/p1;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/p1;

    .line 15
    sget-object v2, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 16
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/H1;

    .line 18
    sget-object v3, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    .line 19
    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 20
    iget-object v6, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 21
    iget-object v6, v6, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 22
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object v7, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 25
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 26
    iget-object v6, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    .line 27
    iget-object v6, v6, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 28
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v6

    .line 29
    sget-boolean v7, Lcom/android/tools/r8/synthesis/J;->g:Z

    if-nez v7, :cond_2

    .line 30
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget-object v7, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 32
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/synthesis/J;->g(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_2
    :goto_1
    iget-object v6, v6, Lcom/android/tools/r8/synthesis/J;->c:Lcom/android/tools/r8/synthesis/d;

    .line 35
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 36
    iget-object v6, v6, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    .line 37
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    sget-boolean v6, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/internal/nJ;)V

    .line 39
    :cond_4
    iget-object v6, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j;

    const/4 v6, 0x0

    .line 40
    iget-object v7, v0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 41
    invoke-virtual {p0, v5, v7, v6}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/graph/b1;)V

    .line 42
    new-instance v6, Lcom/android/tools/r8/shaking/n9;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/tools/r8/shaking/n9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/p1;Lcom/android/tools/r8/shaking/d0;)V

    .line 43
    sget-object v7, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {v5, v6, v7}, Lcom/android/tools/r8/graph/H2;->f(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 44
    new-instance v6, Lcom/android/tools/r8/shaking/o9;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/tools/r8/shaking/o9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/H1;Lcom/android/tools/r8/shaking/d0;)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V
    .locals 3

    .line 81
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e0:Ljava/util/IdentityHashMap;

    .line 83
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/shaking/z7;

    invoke-direct {v2}, Lcom/android/tools/r8/shaking/z7;-><init>()V

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/M4;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    .line 85
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/M4;Lcom/android/tools/r8/shaking/R0;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v1, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    .line 45
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 46
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->Z:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zx0;

    if-nez v1, :cond_6

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->Z:Ljava/util/IdentityHashMap;

    .line 50
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    .line 51
    iget-object v3, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    sget-object v2, Lcom/android/tools/r8/internal/zx0;->e:Lcom/android/tools/r8/internal/zx0;

    goto :goto_1

    .line 55
    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    iget-object v2, v2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, v2, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    sget-object v2, Lcom/android/tools/r8/internal/zx0;->c:Lcom/android/tools/r8/internal/zx0;

    goto :goto_1

    .line 57
    :cond_5
    sget-object v2, Lcom/android/tools/r8/internal/zx0;->b:Lcom/android/tools/r8/internal/zx0;

    .line 58
    :goto_1
    invoke-virtual {v0, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {p1, v1, p2}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    return-void

    .line 61
    :cond_6
    sget-object v2, Lcom/android/tools/r8/internal/zx0;->b:Lcom/android/tools/r8/internal/zx0;

    if-ne v1, v2, :cond_7

    return-void

    .line 62
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    .line 63
    iget-object v3, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 64
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->z0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 66
    sget-object p2, Lcom/android/tools/r8/internal/zx0;->e:Lcom/android/tools/r8/internal/zx0;

    goto :goto_2

    .line 67
    :cond_8
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v3, p2, p1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 68
    sget-object p2, Lcom/android/tools/r8/internal/zx0;->c:Lcom/android/tools/r8/internal/zx0;

    goto :goto_2

    :cond_9
    move-object p2, v2

    :goto_2
    if-nez v0, :cond_b

    .line 69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    sget-object v3, Lcom/android/tools/r8/internal/zx0;->d:Lcom/android/tools/r8/internal/zx0;

    if-eq p2, v3, :cond_a

    goto :goto_3

    .line 71
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 72
    :cond_b
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p2, v2, :cond_c

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->Z:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 74
    :cond_c
    sget-object v2, Lcom/android/tools/r8/internal/zx0;->c:Lcom/android/tools/r8/internal/zx0;

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    if-ne p2, v2, :cond_e

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->Z:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_e
    if-nez v0, :cond_10

    .line 76
    sget-object p1, Lcom/android/tools/r8/internal/zx0;->e:Lcom/android/tools/r8/internal/zx0;

    if-ne v1, p1, :cond_f

    goto :goto_4

    .line 77
    :cond_f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_10
    :goto_4
    if-nez v0, :cond_12

    .line 78
    sget-object p1, Lcom/android/tools/r8/internal/zx0;->e:Lcom/android/tools/r8/internal/zx0;

    if-ne p2, p1, :cond_11

    return-void

    .line 79
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_5
    return-void
.end method

.method public final d(Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/Q;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/Q;-><init>(Lcom/android/tools/r8/internal/Ef;)V

    .line 98
    new-instance v1, Lcom/android/tools/r8/shaking/q8;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/shaking/q8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/Q;)V

    const-string v2, "Desugar"

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 99
    new-instance v1, Lcom/android/tools/r8/shaking/r8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/r8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const-string v2, "Synthesize interface method bridges"

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 100
    iget-object v1, v0, Lcom/android/tools/r8/shaking/Q;->c:Ljava/util/LinkedList;

    .line 101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/Q;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/Q;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/tools/r8/shaking/Q;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 105
    :cond_1
    new-instance v1, Lcom/android/tools/r8/shaking/s8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/s8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const-string v2, "Rebuild AppInfo"

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    iput-object v1, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    .line 106
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    .line 107
    new-instance v1, Lcom/android/tools/r8/shaking/u8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/u8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const-string v2, "Create SubtypingInfo"

    invoke-virtual {p1, v2, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/Y5;

    iput-object v1, p0, Lcom/android/tools/r8/shaking/N;->i:Lcom/android/tools/r8/graph/Y5;

    .line 108
    new-instance v1, Lcom/android/tools/r8/shaking/v8;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/shaking/v8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/shaking/Q;)V

    const-string v0, "Enqueue work items"

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 88
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->d1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/X1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 92
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v0, p2, p2, p1}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 0

    .line 94
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 0

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    return-void
.end method

.method public final synthetic d(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method

.method public final d(Lcom/android/tools/r8/graph/H2;)Z
    .locals 3

    .line 3
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/shaking/t8;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/shaking/t8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    new-instance v2, Lcom/android/tools/r8/shaking/E8;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/E8;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 4
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E5;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    .line 5
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/b0;->v()Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public final e()J
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/P;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    .line 61
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 62
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->R:Lcom/android/tools/r8/shaking/L;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/L;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 63
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->x:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/shaking/N;->e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-interface {p2}, Lcom/android/tools/r8/graph/D5;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object v2, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 25
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/D5;)V

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lcom/android/tools/r8/graph/H5;)V
    .locals 3

    .line 26
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v1

    if-nez v1, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    if-nez v0, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Class initializers are never targeted"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 29
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    .line 30
    iget-object v2, v2, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 31
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-nez v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 35
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/h;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->F:Lcom/android/tools/r8/shaking/t2;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/shaking/t2;->c:Ljava/util/Set;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->v1()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/shaking/W9;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/shaking/W9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/f0;ZLjava/util/function/BiConsumer;)V

    :cond_1
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 9
    new-instance v0, Lcom/android/tools/r8/shaking/r9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/shaking/r9;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)V

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/b2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/shaking/N;->E:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 13
    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/L1;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/L1;-><init>(Lcom/android/tools/r8/graph/j1;)V

    const/4 v1, 0x3

    .line 14
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;ILcom/android/tools/r8/shaking/K1;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->c:Lcom/android/tools/r8/internal/ju;

    .line 16
    iget-object v0, v0, Lcom/android/tools/r8/internal/ju;->g:[Lcom/android/tools/r8/internal/Gs0;

    .line 17
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 18
    check-cast v3, Lcom/android/tools/r8/internal/pK;

    .line 19
    invoke-virtual {v3, p1, p2}, Lcom/android/tools/r8/internal/pK;->b(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/H5;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final synthetic e(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    return-void
.end method

.method public final e(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V
    .locals 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    .line 47
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    instance-of v0, p1, Lcom/android/tools/r8/shaking/c0;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/k1;)V

    :cond_1
    return-void
.end method

.method public final e(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 54
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    .line 57
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    instance-of v0, p1, Lcom/android/tools/r8/shaking/c0;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    :cond_1
    return-void
.end method

.method public final e(Lcom/android/tools/r8/graph/H2;)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->d:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/l8;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/l8;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final synthetic f()Lcom/android/tools/r8/graph/j;
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->e:Lcom/android/tools/r8/graph/j;

    new-instance v1, Lcom/android/tools/r8/shaking/V8;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/V8;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V
    .locals 2

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->X:Lcom/android/tools/r8/shaking/A;

    .line 12
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/C;->a(Lcom/android/tools/r8/shaking/d0;)Lcom/android/tools/r8/shaking/s2;

    move-result-object v0

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/s2;->a(Lcom/android/tools/r8/graph/J2;)Lcom/android/tools/r8/shaking/s1;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/shaking/s1;->a(Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v0, p1, Lcom/android/tools/r8/shaking/c0;

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/shaking/p1;)V

    :cond_1
    return-void
.end method

.method public final f(Lcom/android/tools/r8/graph/H2;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic g()Lcom/android/tools/r8/graph/Y5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-static {v0}, Lcom/android/tools/r8/graph/Y5;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Y5;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->v:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H5;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/D5;)V

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->U0()Lcom/android/tools/r8/graph/z5;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/shaking/m8;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/shaking/m8;-><init>(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/z5;->d(Ljava/util/function/Consumer;)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 19
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 20
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/x1;->b(Lcom/android/tools/r8/graph/H5;)V

    :cond_1
    return-void
.end method

.method public final synthetic h()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/e3;->a(Lcom/android/tools/r8/shaking/N;)V

    return-void
.end method

.method public final synthetic i()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->s:Lcom/android/tools/r8/internal/e3;

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/e3;->b(Lcom/android/tools/r8/shaking/N;)V

    return-void
.end method

.method public final j()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->n0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->w:Lcom/android/tools/r8/shaking/P;

    iget-object v0, v0, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 3
    new-instance v2, Lcom/android/tools/r8/shaking/O9;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/shaking/O9;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/H2;->k(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/sK;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v1, v1, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v1

    .line 5
    :goto_0
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v1, Lcom/android/tools/r8/internal/Ps0;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ps0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 8
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 11
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    .line 12
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/shaking/t1;->b(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->n0:Ljava/util/HashMap;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 15
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/origin/Origin;

    .line 16
    new-instance v4, Lcom/android/tools/r8/shaking/V1;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/shaking/V1;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    .line 17
    sget-object v3, Lcom/android/tools/r8/shaking/I1;->D:Lcom/android/tools/r8/shaking/I1;

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/I1;->d()Lcom/android/tools/r8/shaking/H1;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/H1;

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/H1;

    .line 21
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/H1;

    .line 22
    iget-object v5, v3, Lcom/android/tools/r8/shaking/s1;->b:Ljava/util/HashSet;

    .line 23
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/shaking/H1;->m()Lcom/android/tools/r8/shaking/s1;

    move-result-object v3

    .line 25
    check-cast v3, Lcom/android/tools/r8/shaking/H1;

    .line 26
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final k()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/z;

    .line 3
    iget-object v2, v1, Lcom/android/tools/r8/shaking/z;->a:Lcom/android/tools/r8/graph/H5;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 6
    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 7
    iget-object v3, v3, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 8
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/O4;->c(Lcom/android/tools/r8/graph/j1;)V

    .line 9
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->m0:Lcom/android/tools/r8/internal/M70;

    .line 10
    iget-object v1, v1, Lcom/android/tools/r8/shaking/z;->b:Lcom/android/tools/r8/graph/H5;

    .line 11
    invoke-virtual {v3, v2, v1}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o0:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final synthetic k(Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->n(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final l(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->u:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f80;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/shaking/Q1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/Q1;-><init>(Lcom/android/tools/r8/graph/M2;)V

    iget-object v0, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final m(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/Q;->H()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->q(Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method

.method public final n(Lcom/android/tools/r8/graph/H2;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->o(Lcom/android/tools/r8/graph/H2;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yx0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/N;->p(Lcom/android/tools/r8/graph/H2;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->z:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v3, p1, v2}, Lcom/android/tools/r8/shaking/P;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->z0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final o(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->A:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/shaking/P;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v2, v2, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->B:Lcom/android/tools/r8/shaking/P;

    iget-object v2, v2, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object p1

    new-instance v2, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final p(Lcom/android/tools/r8/graph/H2;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v1, p1, v0}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->B:Lcom/android/tools/r8/shaking/P;

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/shaking/P;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/R0;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/graph/F7;

    invoke-direct {v4}, Lcom/android/tools/r8/graph/F7;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/N4;->b(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/tools/r8/shaking/N;->A:Lcom/android/tools/r8/shaking/P;

    iget-object v3, v3, Lcom/android/tools/r8/shaking/P;->a:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/shaking/N;->Q:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/shaking/N;->b(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    :cond_5
    :goto_1
    return v2
.end method

.method public final q(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->y:Ljava/util/Set;

    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Yx0;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Q;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/Z;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Z;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/Y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/t5;->c(Lcom/android/tools/r8/graph/H2;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    new-instance v0, Lcom/android/tools/r8/shaking/Z;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/shaking/Z;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/Y;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final r(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->J:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v2, p1, v1}, Lcom/android/tools/r8/shaking/S0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/shaking/R0;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/N;->d(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->J:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public final s(Lcom/android/tools/r8/graph/H2;)V
    .locals 9

    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    const-string v1, "Class "

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " extends "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " which is an interface"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v0, v0, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p0, v4, p1}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/D5;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/tools/r8/shaking/N;->j:Lcom/android/tools/r8/internal/nJ;

    iget-object v5, v5, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->j0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/n1;->j0()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " implements "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is not an interface"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
