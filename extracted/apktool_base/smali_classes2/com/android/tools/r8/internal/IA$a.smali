.class public Lcom/android/tools/r8/internal/IA$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/IA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic v:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Ef0;

.field public final b:Lcom/android/tools/r8/origin/Origin;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/IdentityHashMap;

.field public final j:Ljava/util/IdentityHashMap;

.field public final k:Ljava/util/IdentityHashMap;

.field public final l:Ljava/util/IdentityHashMap;

.field public final m:Ljava/util/IdentityHashMap;

.field public final n:Ljava/util/IdentityHashMap;

.field public final o:Ljava/util/IdentityHashMap;

.field public final p:Ljava/util/IdentityHashMap;

.field public final q:Ljava/util/Set;

.field public final r:Ljava/util/IdentityHashMap;

.field public final s:Ljava/util/Set;

.field public final t:Ljava/util/IdentityHashMap;

.field public final u:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->a:Lcom/android/tools/r8/internal/Ef0;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->b:Lcom/android/tools/r8/origin/Origin;

    new-instance v1, Ljava/util/HashMap;

    move-object v2, p3

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->c:Ljava/util/HashMap;

    invoke-static {p4}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->d:Ljava/util/HashSet;

    invoke-static {p5}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->e:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    move-object v2, p6

    invoke-direct {v1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object v2, p7

    invoke-direct {v1, p7}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->g:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object v2, p8

    invoke-direct {v1, p8}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->h:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object v2, p9

    invoke-direct {v1, p9}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->i:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object v2, p10

    invoke-direct {v1, p10}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object v2, p11

    invoke-direct {v1, p11}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->k:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object v2, p12

    invoke-direct {v1, p12}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->l:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p13

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->m:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->n:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p15

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->o:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p16

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->p:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->q:Ljava/util/Set;

    move-object/from16 v2, p17

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p18

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->s:Ljava/util/Set;

    move-object/from16 v2, p19

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p20

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    new-instance v1, Ljava/util/IdentityHashMap;

    move-object/from16 v2, p21

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->u:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/util/Map;
    .locals 0

    .line 10
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)[Lcom/android/tools/r8/graph/A2;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Lcom/android/tools/r8/graph/A2;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->k:Ljava/util/IdentityHashMap;

    const-string v1, "retarget_method_with_emulated_dispatch"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/IA$a;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->q:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->p:Ljava/util/IdentityHashMap;

    const-string v1, "custom_conversion"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/JA;)Lcom/android/tools/r8/internal/IA$a;
    .locals 1

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/internal/IA$a;->v:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/JA;

    if-nez v0, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/JA;->a(Lcom/android/tools/r8/internal/JA;)Lcom/android/tools/r8/internal/JA;

    move-result-object p2

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->g:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/k3;)Lcom/android/tools/r8/internal/IA$a;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->u:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->h:Ljava/util/IdentityHashMap;

    const-string v1, "retarget_static_field"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->c:Ljava/util/HashMap;

    const-string v1, "rewrite_prefix"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/IA;
    .locals 23

    move-object/from16 v0, p0

    .line 26
    new-instance v21, Lcom/android/tools/r8/internal/IA;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/android/tools/r8/internal/IA$a;->c:Ljava/util/HashMap;

    .line 27
    invoke-static {v2}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v2

    iget-object v3, v0, Lcom/android/tools/r8/internal/IA$a;->d:Ljava/util/HashSet;

    .line 28
    invoke-static {v3}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/IA$a;->e:Ljava/util/HashSet;

    .line 29
    invoke-static {v4}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v4

    iget-object v5, v0, Lcom/android/tools/r8/internal/IA$a;->f:Ljava/util/HashMap;

    .line 30
    invoke-static {v5}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/IA$a;->g:Ljava/util/IdentityHashMap;

    .line 31
    invoke-static {v6}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/internal/IA$a;->h:Ljava/util/IdentityHashMap;

    .line 32
    invoke-static {v7}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/IA$a;->i:Ljava/util/IdentityHashMap;

    .line 33
    invoke-static {v8}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v8

    iget-object v9, v0, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    .line 34
    invoke-static {v9}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v9

    iget-object v10, v0, Lcom/android/tools/r8/internal/IA$a;->k:Ljava/util/IdentityHashMap;

    .line 35
    invoke-static {v10}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v10

    iget-object v11, v0, Lcom/android/tools/r8/internal/IA$a;->l:Ljava/util/IdentityHashMap;

    .line 36
    invoke-static {v11}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v11

    iget-object v12, v0, Lcom/android/tools/r8/internal/IA$a;->m:Ljava/util/IdentityHashMap;

    .line 37
    invoke-static {v12}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v12

    iget-object v13, v0, Lcom/android/tools/r8/internal/IA$a;->n:Ljava/util/IdentityHashMap;

    .line 38
    invoke-static {v13}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/internal/IA$a;->o:Ljava/util/IdentityHashMap;

    .line 39
    invoke-static {v14}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/internal/IA$a;->p:Ljava/util/IdentityHashMap;

    .line 40
    invoke-static {v15}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v15

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->q:Ljava/util/Set;

    .line 41
    invoke-static {v1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v16

    iget-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    .line 42
    invoke-static {v1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v17

    iget-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->s:Ljava/util/Set;

    .line 43
    invoke-static {v1}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v18

    iget-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    .line 44
    invoke-static {v1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v19

    iget-object v1, v0, Lcom/android/tools/r8/internal/IA$a;->u:Ljava/util/IdentityHashMap;

    .line 45
    invoke-static {v1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v20

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/android/tools/r8/internal/IA;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    return-object v21
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/graph/A2;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->n:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/BI0;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/BI0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    .line 19
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/A2;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result p2

    .line 21
    :cond_0
    sget-boolean p1, Lcom/android/tools/r8/internal/IA$a;->v:Z

    if-nez p1, :cond_2

    aget-object p1, v0, p2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_2
    :goto_0
    aput-object p3, v0, p2

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/internal/CI0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/CI0;-><init>()V

    .line 8
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 9
    const-string v0, "rewrite_derived_prefix"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/IA$a;->a:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid desugared library configuration.  Duplicate assignment of key: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' in sections for \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/android/tools/r8/internal/IA$a;->b:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p3, p2, p4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    const-string v1, "retarget_method"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/IA$a;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->o:Ljava/util/IdentityHashMap;

    const-string v1, "backport"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/IA$a;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
