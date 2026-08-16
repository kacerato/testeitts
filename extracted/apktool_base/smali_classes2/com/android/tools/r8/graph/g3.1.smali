.class public Lcom/android/tools/r8/graph/g3;
.super Lcom/android/tools/r8/graph/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/graph/g3$a;
    }
.end annotation


# static fields
.field public static final synthetic m:Z = true


# instance fields
.field public final h:Ljava/util/IdentityHashMap;

.field public final i:Lcom/android/tools/r8/internal/nC;

.field public final j:Lcom/android/tools/r8/internal/nC;

.field public final k:Lcom/android/tools/r8/internal/hC;

.field public final l:Lcom/android/tools/r8/internal/XB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/XB;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/graph/x0;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/z0;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/g3;->h:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/graph/g3;->i:Lcom/android/tools/r8/internal/nC;

    iput-object p4, p0, Lcom/android/tools/r8/graph/g3;->j:Lcom/android/tools/r8/internal/nC;

    iput-object p5, p0, Lcom/android/tools/r8/graph/g3;->k:Lcom/android/tools/r8/internal/hC;

    iput-object p6, p0, Lcom/android/tools/r8/graph/g3;->l:Lcom/android/tools/r8/internal/XB;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/u2;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/graph/g3;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->j:Lcom/android/tools/r8/internal/nC;

    new-instance v1, Lcom/android/tools/r8/graph/td;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/td;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final b(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->k:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/graph/ud;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/graph/ud;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/hC;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->i:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/I5;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/graph/o0;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Lcom/android/tools/r8/graph/w0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/g3;->j()Lcom/android/tools/r8/graph/g3$a;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/graph/g3;->m:Z

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
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->j:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/u2;

    iget-object v1, p0, Lcom/android/tools/r8/graph/g3;->i:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/I5;

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/tools/r8/graph/Z;->b:Lcom/android/tools/r8/graph/Z;

    return-object p1

    :cond_2
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    check-cast p1, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :cond_4
    new-instance v1, Lcom/android/tools/r8/graph/W;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/W;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/W;->a(Lcom/android/tools/r8/graph/u2;)Lcom/android/tools/r8/graph/W;

    move-result-object v0

    sget-boolean v1, Lcom/android/tools/r8/graph/W;->c:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    iput-object p1, v0, Lcom/android/tools/r8/graph/W;->a:Lcom/android/tools/r8/graph/I5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/W;->a()Lcom/android/tools/r8/graph/b0;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/graph/g3;->m:Z

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
    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->i:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/I5;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/tools/r8/graph/E0;

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/graph/g3;->j:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/u2;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    if-nez v0, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    check-cast v0, Lcom/android/tools/r8/graph/E0;

    return-object v0
.end method

.method public final h()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->k:Lcom/android/tools/r8/internal/hC;

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/graph/g3;
    .locals 0

    return-object p0
.end method

.method public j()Lcom/android/tools/r8/graph/g3$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/graph/g3$a;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/graph/g3$a;-><init>(Lcom/android/tools/r8/graph/g3;)V

    return-object v0
.end method

.method public k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/graph/u2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->j:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->q()Lcom/android/tools/r8/internal/XB;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v0, p0, Lcom/android/tools/r8/graph/g3;->k:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hC;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    new-instance v2, Lcom/android/tools/r8/graph/sd;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/sd;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/E0;->c(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    sget-boolean v4, Lcom/android/tools/r8/graph/g3;->m:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->V()Lcom/android/tools/r8/graph/G;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/i0;->B0()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/tools/r8/graph/g3;->h:Ljava/util/IdentityHashMap;

    invoke-virtual {v5, v3, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    if-nez v4, :cond_1

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DexApplication (direct)"

    return-object v0
.end method
