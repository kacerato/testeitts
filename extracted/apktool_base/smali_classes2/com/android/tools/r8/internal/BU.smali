.class public final Lcom/android/tools/r8/internal/BU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic s:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Lcom/android/tools/r8/internal/IC;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lcom/android/tools/r8/internal/kC;

.field public final e:Lcom/android/tools/r8/internal/kC;

.field public final f:Lcom/android/tools/r8/internal/kC;

.field public final g:Lcom/android/tools/r8/internal/kC;

.field public final h:Lcom/android/tools/r8/internal/kC;

.field public final i:Lcom/android/tools/r8/internal/kC;

.field public final j:Lcom/android/tools/r8/internal/kC;

.field public final k:Lcom/android/tools/r8/internal/kC;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Lcom/android/tools/r8/internal/kC;

.field public final n:Lcom/android/tools/r8/internal/IC;

.field public final o:Lcom/android/tools/r8/internal/kC;

.field public final p:Lcom/android/tools/r8/internal/IC;

.field public final q:Lcom/android/tools/r8/internal/kC;

.field public final r:Lcom/android/tools/r8/internal/kC;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->b:Lcom/android/tools/r8/internal/IC;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->d:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->e:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->f:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->g:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->h:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->i:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->j:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->k:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->l:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->m:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->n:Lcom/android/tools/r8/internal/IC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->o:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/IC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/IC;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->p:Lcom/android/tools/r8/internal/IC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->q:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/BU;->r:Lcom/android/tools/r8/internal/kC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/CU;
    .locals 22

    move-object/from16 v0, p0

    .line 14
    iget-object v1, v0, Lcom/android/tools/r8/internal/BU;->b:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    move-object v4, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/BU;->a(Lcom/android/tools/r8/internal/QC;)V

    .line 16
    new-instance v1, Lcom/android/tools/r8/internal/CU;

    move-object v2, v1

    iget-object v3, v0, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    iget-object v5, v0, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    iget-object v6, v0, Lcom/android/tools/r8/internal/BU;->d:Lcom/android/tools/r8/internal/kC;

    .line 17
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v6

    .line 18
    iget-object v7, v0, Lcom/android/tools/r8/internal/BU;->e:Lcom/android/tools/r8/internal/kC;

    .line 19
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v7

    .line 20
    iget-object v8, v0, Lcom/android/tools/r8/internal/BU;->f:Lcom/android/tools/r8/internal/kC;

    .line 21
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v8

    .line 22
    iget-object v9, v0, Lcom/android/tools/r8/internal/BU;->g:Lcom/android/tools/r8/internal/kC;

    .line 23
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v9

    .line 24
    iget-object v10, v0, Lcom/android/tools/r8/internal/BU;->h:Lcom/android/tools/r8/internal/kC;

    .line 25
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v10

    .line 26
    iget-object v11, v0, Lcom/android/tools/r8/internal/BU;->i:Lcom/android/tools/r8/internal/kC;

    .line 27
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v11

    .line 28
    iget-object v12, v0, Lcom/android/tools/r8/internal/BU;->j:Lcom/android/tools/r8/internal/kC;

    .line 29
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v12

    .line 30
    iget-object v13, v0, Lcom/android/tools/r8/internal/BU;->k:Lcom/android/tools/r8/internal/kC;

    .line 31
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v13

    .line 32
    iget-object v14, v0, Lcom/android/tools/r8/internal/BU;->l:Ljava/util/LinkedHashMap;

    iget-object v15, v0, Lcom/android/tools/r8/internal/BU;->m:Lcom/android/tools/r8/internal/kC;

    .line 33
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v15

    move-object/from16 v21, v1

    .line 34
    iget-object v1, v0, Lcom/android/tools/r8/internal/BU;->n:Lcom/android/tools/r8/internal/IC;

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v16

    iget-object v1, v0, Lcom/android/tools/r8/internal/BU;->o:Lcom/android/tools/r8/internal/kC;

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v17

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/internal/BU;->p:Lcom/android/tools/r8/internal/IC;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/IC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v18

    iget-object v1, v0, Lcom/android/tools/r8/internal/BU;->q:Lcom/android/tools/r8/internal/kC;

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v19

    .line 40
    iget-object v1, v0, Lcom/android/tools/r8/internal/BU;->r:Lcom/android/tools/r8/internal/kC;

    .line 41
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v20

    .line 42
    invoke-direct/range {v2 .. v20}, Lcom/android/tools/r8/internal/CU;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/QC;Ljava/util/Map;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    return-object v21
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->p:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->f:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/L4;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->q:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;[Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->j:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->n:Lcom/android/tools/r8/internal/IC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/IC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/IC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->m:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/k3;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->r:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/QC;)V
    .locals 4

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 10
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 13
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The compilation cannot proceed because the desugared library specification contains ambiguous flags that the compiler cannot interpret: The following types are both rewritten and maintained "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/BU;->s:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eq p1, p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
