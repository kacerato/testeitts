.class public Lcom/android/tools/r8/internal/IR$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/IR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/Ef0;

.field public final c:Lcom/android/tools/r8/origin/Origin;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/IdentityHashMap;

.field public final f:Ljava/util/IdentityHashMap;

.field public final g:Ljava/util/IdentityHashMap;

.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/Set;

.field public final k:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/IR$a;->b:Lcom/android/tools/r8/internal/Ef0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/IR$a;->c:Lcom/android/tools/r8/origin/Origin;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1, p5}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->e:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1, p6}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->f:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1, p7}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->g:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1, p8}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->h:Ljava/util/IdentityHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->i:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->j:Ljava/util/Set;

    invoke-interface {p1, p10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->k:Ljava/util/Set;

    invoke-interface {p1, p11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specification (# position) in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IR$a;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->g:Ljava/util/IdentityHashMap;

    const-string v1, "backport"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IR$a;->a(Ljava/util/Map;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Lcom/android/tools/r8/internal/IR;
    .locals 10

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/IR$a;->b()V

    .line 10
    new-instance v9, Lcom/android/tools/r8/internal/IR;

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->d:Ljava/util/HashMap;

    .line 11
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->e:Ljava/util/IdentityHashMap;

    .line 12
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->f:Ljava/util/IdentityHashMap;

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v3

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->g:Ljava/util/IdentityHashMap;

    .line 14
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v4

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->h:Ljava/util/IdentityHashMap;

    .line 15
    invoke-static {v0}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v5

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->i:Ljava/util/ArrayList;

    .line 16
    invoke-static {v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->j:Ljava/util/Set;

    .line 17
    invoke-static {v0}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v7

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->k:Ljava/util/Set;

    .line 18
    invoke-static {v0}, Lcom/android/tools/r8/internal/QC;->a(Ljava/util/Collection;)Lcom/android/tools/r8/internal/QC;

    move-result-object v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/internal/IR;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/QC;Lcom/android/tools/r8/internal/QC;)V

    return-object v9
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/IR$a;->b:Lcom/android/tools/r8/internal/Ef0;

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

    iget-object p4, p0, Lcom/android/tools/r8/internal/IR$a;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {p3, p2, p4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final b()V
    .locals 5

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/IR$a;->k:Ljava/util/Set;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 11
    new-instance v2, Lcom/android/tools/r8/internal/Cl0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Cl0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 12
    invoke-static {v1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/Cl0;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/graph/kh;

    invoke-direct {v3}, Lcom/android/tools/r8/graph/kh;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 15
    const-string v3, ", "

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid desugared library configuration. Duplicate types in custom conversions and wrapper conversions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/IR$a;->c:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 17
    iget-object v0, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "set2"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "set1"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "retarget core library member"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/IR$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/IR$a;->f:Ljava/util/IdentityHashMap;

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/IR$a;->f:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {p2}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    .line 8
    sget-boolean v0, Lcom/android/tools/r8/internal/IR$a;->l:Z

    if-nez v0, :cond_1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 9
    :cond_1
    :goto_0
    const-string v0, "retarget_lib_member"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/tools/r8/internal/IR$a;->a(Ljava/util/Map;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IR$a;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/IR$a;->d:Ljava/util/HashMap;

    const-string v1, "rewrite_prefix"

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/tools/r8/internal/IR$a;->a(Ljava/util/Map;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/String;)V

    return-object p0
.end method
