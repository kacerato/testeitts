.class public final Lcom/android/tools/r8/internal/yb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final q:Lcom/android/tools/r8/internal/QC;

.field public static final r:Lcom/android/tools/r8/internal/QC;

.field public static final synthetic s:Z = true


# instance fields
.field public final a:Ljava/util/function/Function;

.field public final b:Lcom/android/tools/r8/internal/xb0;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashSet;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/HashMap;

.field public final h:Ljava/util/HashMap;

.field public final i:Lcom/android/tools/r8/internal/Tl0;

.field public j:Lcom/android/tools/r8/internal/vb0;

.field public k:Lcom/android/tools/r8/internal/wb0;

.field public l:Ljava/util/HashMap;

.field public m:Ljava/util/HashSet;

.field public final n:Ljava/util/HashSet;

.field public final o:Ljava/util/HashSet;

.field public final p:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "application"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const-string v5, "instrumentation"

    const-string v6, "process"

    const-string v1, "provider"

    const-string v2, "activity"

    const-string v3, "service"

    const-string v4, "receiver"

    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/yb0;->q:Lcom/android/tools/r8/internal/QC;

    const-string v0, "appComponentFactory"

    const-string v1, "zygotePreloadName"

    const-string v2, "backupAgent"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Lcom/android/tools/r8/internal/QC;->a(II[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/yb0;->r:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Tl0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->d:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->g:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->n:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->o:Ljava/util/HashSet;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/xb0;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/internal/xb0;-><init>(Lcom/android/tools/r8/internal/Tl0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yb0;->i:Lcom/android/tools/r8/internal/Tl0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/yb0;->a:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/ci0;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ng0;)Ljava/lang/Integer;
    .locals 0

    .line 109
    iget p0, p0, Lcom/android/tools/r8/internal/ng0;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/lj0;)Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/tools/r8/internal/ng0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p2, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 29
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ng0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ng0;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reachable from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 0

    .line 108
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Map;Ljava/util/List;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/ci0;)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-static {p3, p1, v0}, Lcom/android/tools/r8/internal/kg0;->a(Lcom/android/tools/r8/internal/ci0;Ljava/util/List;Z)Lcom/android/tools/r8/internal/ci0;

    move-result-object p1

    .line 28
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/android/tools/r8/internal/ng0;)Z
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ng0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget p0, p0, Lcom/android/tools/r8/internal/ng0;->b:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/ng0;)Z
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/android/tools/r8/internal/ng0;->c:Lcom/android/tools/r8/internal/lg0;

    sget-object v0, Lcom/android/tools/r8/internal/lg0;->o:Lcom/android/tools/r8/internal/lg0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 12

    .line 78
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->l:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yb0;->l:Ljava/util/HashMap;

    .line 80
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ci0;

    .line 81
    iget-object v1, v1, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zh0;

    .line 83
    iget-object v3, v2, Lcom/android/tools/r8/internal/zh0;->d:Ljava/util/List;

    .line 84
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Vi0;

    .line 85
    iget-object v5, v4, Lcom/android/tools/r8/internal/Vi0;->d:Ljava/util/List;

    .line 86
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Ug0;

    .line 87
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    .line 88
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Og0;

    .line 89
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Og0;->a()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 90
    iget-object v8, v8, Lcom/android/tools/r8/internal/Og0;->c:Lcom/android/tools/r8/internal/ej0;

    if-nez v8, :cond_5

    .line 91
    sget-object v8, Lcom/android/tools/r8/internal/ej0;->h:Lcom/android/tools/r8/internal/ej0;

    .line 92
    :cond_5
    iget v9, v8, Lcom/android/tools/r8/internal/ej0;->b:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 93
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/ej0;->a()Lcom/android/tools/r8/internal/hh0;

    move-result-object v8

    .line 94
    iget v9, v8, Lcom/android/tools/r8/internal/hh0;->b:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    .line 95
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/hh0;->a()Lcom/android/tools/r8/internal/bh0;

    move-result-object v8

    .line 96
    iget v9, v8, Lcom/android/tools/r8/internal/bh0;->c:I

    if-eqz v9, :cond_9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_6

    const/4 v9, 0x0

    goto :goto_1

    .line 97
    :cond_6
    sget-object v9, Lcom/android/tools/r8/internal/ah0;->f:Lcom/android/tools/r8/internal/ah0;

    goto :goto_1

    .line 98
    :cond_7
    sget-object v9, Lcom/android/tools/r8/internal/ah0;->e:Lcom/android/tools/r8/internal/ah0;

    goto :goto_1

    .line 99
    :cond_8
    sget-object v9, Lcom/android/tools/r8/internal/ah0;->d:Lcom/android/tools/r8/internal/ah0;

    goto :goto_1

    .line 100
    :cond_9
    sget-object v9, Lcom/android/tools/r8/internal/ah0;->c:Lcom/android/tools/r8/internal/ah0;

    :goto_1
    if-nez v9, :cond_a

    .line 101
    sget-object v9, Lcom/android/tools/r8/internal/ah0;->g:Lcom/android/tools/r8/internal/ah0;

    .line 102
    :cond_a
    sget-object v10, Lcom/android/tools/r8/internal/ah0;->f:Lcom/android/tools/r8/internal/ah0;

    if-ne v9, v10, :cond_4

    .line 103
    invoke-static {v2, v4, v6}, Lcom/android/tools/r8/internal/kg0;->a(Lcom/android/tools/r8/internal/zh0;Lcom/android/tools/r8/internal/Vi0;Lcom/android/tools/r8/internal/Ug0;)I

    move-result v9

    .line 104
    iget-object v10, p0, Lcom/android/tools/r8/internal/yb0;->l:Ljava/util/HashMap;

    .line 105
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lcom/android/tools/r8/internal/QA1;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/QA1;-><init>()V

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 106
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/bh0;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_b
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->o:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 5
    iget-object v0, v0, Lcom/android/tools/r8/internal/ig0;->d:Ljava/util/HashMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ng0;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    sget-boolean v1, Lcom/android/tools/r8/internal/yb0;->s:Z

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 8
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/android/tools/r8/internal/TA1;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/internal/TA1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Lcom/android/tools/r8/internal/pg0;->a(Lcom/android/tools/r8/internal/ng0;)Z

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yb0;->a()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    if-eqz p2, :cond_5

    .line 11
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/yb0;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 14
    iget-object v2, p0, Lcom/android/tools/r8/internal/yb0;->d:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/yb0;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object p1, v0, Lcom/android/tools/r8/internal/ng0;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :cond_6
    :goto_2
    if-ge v0, p2, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/tools/r8/internal/ng0;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ng0;->b()Z

    move-result v2

    if-nez v2, :cond_6

    .line 19
    iget v2, v1, Lcom/android/tools/r8/internal/ng0;->f:I

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ng0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/uj0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 41
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/uj0;->a()Lcom/android/tools/r8/internal/oj0;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/oj0;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p1, Lcom/android/tools/r8/internal/oj0;->e:Ljava/util/List;

    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/lj0;

    .line 46
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "manifest"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object p3

    .line 48
    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {p0, v3, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/yb0;->m:Ljava/util/HashSet;

    if-nez v4, :cond_3

    .line 53
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/tools/r8/internal/yb0;->m:Ljava/util/HashSet;

    .line 54
    iget-object v4, p0, Lcom/android/tools/r8/internal/yb0;->h:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/ci0;

    .line 55
    iget-object v5, v5, Lcom/android/tools/r8/internal/ci0;->c:Ljava/util/List;

    .line 56
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zh0;

    .line 57
    iget-object v7, p0, Lcom/android/tools/r8/internal/yb0;->m:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zh0;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 58
    :cond_3
    iget-object v4, p0, Lcom/android/tools/r8/internal/yb0;->m:Ljava/util/HashSet;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    new-instance v5, Lcom/android/tools/r8/internal/PA1;

    invoke-direct {v5, p0, v3, p2}, Lcom/android/tools/r8/internal/PA1;-><init>(Lcom/android/tools/r8/internal/yb0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_4
    :goto_3
    if-eqz p3, :cond_7

    .line 60
    sget-object v3, Lcom/android/tools/r8/internal/yb0;->q:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/oj0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_4

    .line 61
    :cond_5
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 62
    invoke-static {p3, v2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/lj0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_6
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/oj0;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 64
    sget-object v3, Lcom/android/tools/r8/internal/yb0;->r:Lcom/android/tools/r8/internal/QC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 65
    invoke-static {p3, v2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/lj0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onClick"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    iget-object v3, v2, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    if-eqz v3, :cond_8

    goto :goto_5

    .line 68
    :cond_8
    check-cast v3, Lcom/android/tools/r8/internal/m8;

    .line 69
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/m8;->c()Ljava/lang/String;

    move-result-object v3

    .line 70
    iput-object v3, v2, Lcom/android/tools/r8/internal/lj0;->b:Ljava/lang/String;

    .line 71
    :goto_5
    const-string v4, "http://schemas.android.com/apk/res/android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    iget-object v3, p0, Lcom/android/tools/r8/internal/yb0;->k:Lcom/android/tools/r8/internal/wb0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lj0;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/android/tools/r8/origin/PathOrigin;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p2, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v3, v2, v4}, Lcom/android/tools/r8/internal/wb0;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    goto/16 :goto_0

    .line 73
    :cond_9
    iget-object p1, p1, Lcom/android/tools/r8/internal/oj0;->f:Ljava/util/List;

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/uj0;

    .line 75
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/yb0;->a(Lcom/android/tools/r8/internal/uj0;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Lcom/android/tools/r8/internal/ng0;)V
    .locals 0

    .line 37
    iget p2, p2, Lcom/android/tools/r8/internal/ng0;->f:I

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .line 31
    :try_start_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/uj0;->a(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/uj0;

    move-result-object p2

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/tools/r8/internal/yb0;->a(Lcom/android/tools/r8/internal/uj0;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/E80;->a(Lcom/android/tools/r8/internal/uj0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/SA1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/SA1;-><init>(Lcom/android/tools/r8/internal/yb0;Ljava/lang/String;)V

    .line 35
    invoke-interface {p2, v0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 36
    iget-object p2, p0, Lcom/android/tools/r8/internal/yb0;->a:Ljava/util/function/Function;

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->j:Lcom/android/tools/r8/internal/vb0;

    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    invoke-interface {v0, p1, v1}, Lcom/android/tools/r8/internal/vb0;->a(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 40
    iget-object p2, p0, Lcom/android/tools/r8/internal/yb0;->n:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 2

    .line 21
    sget-boolean v0, Lcom/android/tools/r8/internal/yb0;->s:Z

    const-string v1, "res/"

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/function/Supplier;

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 25
    :cond_3
    :try_start_0
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/android/tools/r8/E2;->a(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->a:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1
.end method

.method public final b()Ljava/util/List;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 7
    iget-object v0, v0, Lcom/android/tools/r8/internal/ig0;->b:Ljava/util/ArrayList;

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(_resources)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/XA1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/XA1;-><init>()V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/YA1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/YA1;-><init>()V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ZA1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ZA1;-><init>()V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 13
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yb0;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated xmlfile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/ci0;

    .line 2
    new-instance v2, Lcom/android/tools/r8/internal/Na0;

    new-instance v3, Lcom/android/tools/r8/internal/VA1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/VA1;-><init>(Lcom/android/tools/r8/internal/yb0;)V

    new-instance v4, Lcom/android/tools/r8/internal/WA1;

    invoke-direct {v4, v1}, Lcom/android/tools/r8/internal/WA1;-><init>(Lcom/android/tools/r8/internal/ci0;)V

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/Na0;-><init>(Lcom/android/tools/r8/internal/Gf0;Lcom/android/tools/r8/internal/ny;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 3
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/Na0;->a(Lcom/android/tools/r8/internal/Tf0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()Lcom/android/tools/r8/internal/GR;
    .locals 7

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v4, v0

    check-cast v5, Ljava/util/function/Supplier;

    .line 3
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/tools/r8/internal/uj0;->a(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/uj0;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 4
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/E80;->a(Lcom/android/tools/r8/internal/uj0;Lcom/android/tools/r8/internal/Tf0;)Lcom/android/tools/r8/internal/nl0;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/2addr v4, v0

    check-cast v5, Ljava/util/function/Supplier;

    .line 6
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/InputStream;

    invoke-static {v5}, Lcom/android/tools/r8/E2;->a(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/tools/r8/internal/HR;->a([B)Ljava/io/Reader;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 7
    invoke-static {v5, v6}, Lcom/android/tools/r8/internal/us0;->a(Ljava/io/Reader;Lcom/android/tools/r8/internal/Tf0;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 9
    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    .line 10
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ig0;->b()Ljava/util/List;

    .line 11
    sget-object v2, Lcom/android/tools/r8/internal/KC;->c:Lcom/android/tools/r8/internal/KC;

    .line 12
    iget-object v4, p0, Lcom/android/tools/r8/internal/yb0;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/yb0;->g:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x2

    .line 13
    new-array v6, v6, [Ljava/lang/Iterable;

    aput-object v4, v6, v3

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/android/tools/r8/internal/Vx;->b([Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/Ux;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ux;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    move-object v3, v0

    check-cast v3, Lcom/android/tools/r8/internal/GK;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/GK;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/Sf0;->a(Lcom/android/tools/r8/internal/ig0;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/PC;->a(Ljava/lang/Object;)Lcom/android/tools/r8/internal/PC;

    move-result-object v2

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/PC;->c()Lcom/android/tools/r8/internal/PC;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/PC;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/yb0;->b()Ljava/util/List;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 23
    iget-object v3, p0, Lcom/android/tools/r8/internal/yb0;->h:Ljava/util/HashMap;

    new-instance v4, Lcom/android/tools/r8/internal/OA1;

    invoke-direct {v4, v2, v1}, Lcom/android/tools/r8/internal/OA1;-><init>(Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 25
    iget-object v4, p0, Lcom/android/tools/r8/internal/yb0;->i:Lcom/android/tools/r8/internal/Tl0;

    new-instance v5, Lcom/android/tools/r8/internal/RA1;

    invoke-direct {v5, v3}, Lcom/android/tools/r8/internal/RA1;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v4, v5}, Lcom/android/tools/r8/internal/Tl0;->a(Ljava/util/function/Supplier;)V

    goto :goto_3

    .line 26
    :cond_4
    new-instance v1, Lcom/android/tools/r8/internal/GR;

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/GR;-><init>(Lcom/android/tools/r8/internal/QC;Ljava/util/AbstractMap;)V

    return-object v1
.end method

.method public final synthetic d(Lcom/android/tools/r8/internal/ng0;)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/android/tools/r8/internal/ng0;->f:I

    const-string v0, "keep xml file"

    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/yb0;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-static {v4}, Lcom/android/tools/r8/E2;->a(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/HR;->a([B)Ljava/io/Reader;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/us0;->a(Ljava/io/Reader;Lcom/android/tools/r8/internal/Tf0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ig0;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/UA1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/UA1;-><init>(Lcom/android/tools/r8/internal/yb0;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/yb0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    const-string v4, "AndroidManifest.xml"

    invoke-virtual {p0, v4, v3}, Lcom/android/tools/r8/internal/yb0;->a(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1

    :cond_1
    return-void

    :goto_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/yb0;->a:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method
