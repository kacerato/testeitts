.class public final Lcom/android/tools/r8/internal/J00;
.super Lcom/android/tools/r8/internal/et;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/shaking/b3;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/et;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J00;->b:Ljava/util/IdentityHashMap;

    sget-boolean v0, Lcom/android/tools/r8/internal/J00;->c:Z

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

    iget-object v0, p1, Lcom/android/tools/r8/shaking/b3;->a:Lcom/android/tools/r8/internal/hC;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/android/tools/r8/shaking/b3;->a:Lcom/android/tools/r8/internal/hC;

    iput-object p1, p0, Lcom/android/tools/r8/internal/J00;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/shaking/c3;)Ljava/util/Set;
    .locals 0

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/J00;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/c3;

    .line 13
    sget-boolean v2, Lcom/android/tools/r8/internal/J00;->c:Z

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/c3;->d()Ljava/lang/Iterable;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/tools/r8/internal/J00;->b:Ljava/util/IdentityHashMap;

    .line 17
    sget-object v3, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/c3;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/J00;->b:Ljava/util/IdentityHashMap;

    .line 20
    invoke-virtual {v3, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->D0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected unnecessary wildcard in -dontwarn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (only matches "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/nJ;)V
    .locals 2

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/J00;->c:Z

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$p;->R:Z

    if-nez v1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/J00;->a()V

    :cond_0
    if-nez v0, :cond_1

    .line 11
    iget-object v0, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$p;->S:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/J00;->b(Lcom/android/tools/r8/internal/nJ;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/android/tools/r8/internal/nJ;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/J00;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/aJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/aJ0;-><init>()V

    .line 6
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 7
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/J00;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/c3;

    .line 2
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/shaking/c3;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, v1, p1}, Lcom/android/tools/r8/internal/J00;->a(Lcom/android/tools/r8/shaking/c3;Lcom/android/tools/r8/graph/M2;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/nJ;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/J00;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/c3;

    sget-boolean v2, Lcom/android/tools/r8/internal/J00;->c:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/J00;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ$p;->K0:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/c3;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/c3;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected unused rule -dontwarn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method
