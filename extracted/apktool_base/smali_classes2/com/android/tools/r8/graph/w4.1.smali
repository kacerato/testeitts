.class public Lcom/android/tools/r8/graph/w4;
.super Lcom/android/tools/r8/graph/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/w4$a;
    }
.end annotation


# static fields
.field public static final synthetic l:Z = true


# instance fields
.field public final h:Lcom/android/tools/r8/internal/a80;

.field public final i:Lcom/android/tools/r8/internal/je;

.field public final j:Lcom/android/tools/r8/internal/TR;

.field public final k:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/a80;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/je;Lcom/android/tools/r8/internal/TR;Ljava/util/List;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/x0;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    iput-object p3, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    iput-object p5, p0, Lcom/android/tools/r8/graph/w4;->i:Lcom/android/tools/r8/internal/je;

    iput-object p6, p0, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    iput-object p7, p0, Lcom/android/tools/r8/graph/w4;->k:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nC;Ljava/util/function/Function;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/nC;
    .locals 3

    if-eqz p0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/kC;

    const/4 v2, 0x4

    .line 9
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 10
    new-instance v2, Lcom/android/tools/r8/graph/jh;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/tools/r8/graph/jh;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/kC;Ljava/util/Set;)V

    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 12
    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/w4;->a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;)V

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p0

    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/bf0;->i:Lcom/android/tools/r8/internal/bf0;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Ljava/util/Set;)V
    .locals 2

    .line 20
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/nJ;->n0:Z

    if-eqz v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/kh;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/kh;-><init>()V

    .line 23
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 24
    const-string v0, ", "

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The following library types, prefixed by java., are present both as library and non library classes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Library classes will be ignored."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/kC;Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 15
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/E0;

    if-nez p0, :cond_0

    .line 16
    invoke-virtual {p1, p3, p4}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void

    .line 17
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->A0()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->f0()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 19
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/jd;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ud;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ud;->a()Ljava/util/Collection;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string v0, "Cannot access all types since the classProvider is no longer available"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/jd;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/graph/w4;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot lookup definition for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/w0;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/graph/w4$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/w4$a;-><init>(Lcom/android/tools/r8/graph/w4;)V

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 3

    new-instance v0, Lcom/android/tools/r8/graph/W;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/W;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/u2;

    new-instance v2, Lcom/android/tools/r8/graph/fh;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/fh;-><init>(Lcom/android/tools/r8/graph/W;)V

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    new-instance v2, Lcom/android/tools/r8/graph/gh;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/graph/gh;-><init>(Lcom/android/tools/r8/graph/W;)V

    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/graph/w4;->i:Lcom/android/tools/r8/internal/je;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/I0;

    new-instance v1, Lcom/android/tools/r8/graph/hh;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/hh;-><init>(Lcom/android/tools/r8/graph/W;)V

    if-eqz p1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/W;->a()Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/graph/w4;->l:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot lookup definition for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/graph/w4;->i:Lcom/android/tools/r8/internal/je;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method public final bridge synthetic h()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/w4;->k()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/graph/g3;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/g3$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/g3$a;-><init>(Lcom/android/tools/r8/graph/w4;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g3$a;->d()Lcom/android/tools/r8/graph/g3;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->k:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    new-instance v1, Lcom/android/tools/r8/graph/ih;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/ih;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/jd;->a(Ljava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/jd;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/graph/w4;->h:Lcom/android/tools/r8/internal/a80;

    iget-object v1, p0, Lcom/android/tools/r8/graph/w4;->i:Lcom/android/tools/r8/internal/je;

    iget-object v2, p0, Lcom/android/tools/r8/graph/w4;->j:Lcom/android/tools/r8/internal/TR;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
