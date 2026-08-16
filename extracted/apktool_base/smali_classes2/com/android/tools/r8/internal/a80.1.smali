.class public final Lcom/android/tools/r8/internal/a80;
.super Lcom/android/tools/r8/internal/jd;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final d:Lcom/android/tools/r8/dex/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/dex/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/jd;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/internal/Ud;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/a80;->d:Lcom/android/tools/r8/dex/b;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)Lcom/android/tools/r8/dex/b;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/F41;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/F41;-><init>(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/ClassConflictResolver;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;
    .locals 4

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/internal/a80;->e:Z

    if-nez v0, :cond_1

    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 11
    :cond_1
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v1

    .line 12
    iget-object v2, p3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 13
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/android/tools/r8/graph/M2;->i:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    sget-boolean v0, Lcom/android/tools/r8/internal/a80;->e:Z

    if-nez v0, :cond_10

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/N4;->d()I

    move-result v1

    .line 19
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/N4;->d()I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    if-nez v0, :cond_10

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v0

    .line 24
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->b0()Lcom/android/tools/r8/graph/N4;

    move-result-object v1

    .line 25
    iget-object v1, v1, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 26
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O4;->h()I

    move-result v1

    if-ne v0, v1, :cond_5

    goto :goto_6

    .line 27
    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    if-eqz v1, :cond_b

    if-nez v0, :cond_8

    .line 28
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_2
    if-nez v0, :cond_a

    .line 29
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 30
    :cond_a
    :goto_3
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 31
    instance-of v0, v0, Lcom/android/tools/r8/internal/jJ;

    if-eqz v0, :cond_11

    move-object v0, p3

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_11

    if-nez v0, :cond_d

    .line 32
    iget-object v1, p3, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_4
    if-nez v0, :cond_f

    .line 33
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->f:Lcom/android/tools/r8/graph/Q;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->o()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 34
    :cond_f
    :goto_5
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 35
    instance-of v0, v0, Lcom/android/tools/r8/internal/jJ;

    if-eqz v0, :cond_11

    :cond_10
    :goto_6
    move-object v0, p2

    goto :goto_7

    :cond_11
    move-object v0, v3

    :goto_7
    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    if-eqz p0, :cond_14

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v1, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->M0()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-interface {p0, v1, v0, p1}, Lcom/android/tools/r8/ClassConflictResolver;->resolveDuplicateClass(Lcom/android/tools/r8/references/ClassReference;Ljava/util/Collection;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/origin/Origin;

    move-result-object p0

    .line 42
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    if-ne p0, v0, :cond_13

    return-object p2

    .line 43
    :cond_13
    iget-object v0, p3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    if-ne p0, v0, :cond_14

    return-object p3

    .line 44
    :cond_14
    new-instance p0, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;

    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/references/Reference;->classFromDescriptor(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object v0

    .line 46
    iget-object p2, p2, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 47
    iget-object p3, p3, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 48
    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/android/tools/r8/errors/DuplicateTypesDiagnostic;-><init>(Lcom/android/tools/r8/references/ClassReference;Ljava/util/Collection;)V

    .line 49
    invoke-virtual {p1, v3, p0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 50
    iget-object p0, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method

.method public static a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/b;)Lcom/android/tools/r8/internal/a80;
    .locals 6

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 6
    iget-object v4, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/internal/G41;

    invoke-direct {v5, p1}, Lcom/android/tools/r8/internal/G41;-><init>(Lcom/android/tools/r8/dex/b;)V

    invoke-virtual {v0, v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/android/tools/r8/internal/a80;

    invoke-direct {p0, v0, p1}, Lcom/android/tools/r8/internal/a80;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Lcom/android/tools/r8/dex/b;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/dex/b;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 0

    .line 8
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/dex/b;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/E0;
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/graph/H2;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/a80;->d:Lcom/android/tools/r8/dex/b;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/dex/b;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/E0;)Ljava/util/function/Supplier;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/graph/H2;

    return-object p1
.end method

.method public final c()Lcom/android/tools/r8/graph/V;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/graph/V;->c:Lcom/android/tools/r8/graph/V;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/android/tools/r8/internal/jd;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "program classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
