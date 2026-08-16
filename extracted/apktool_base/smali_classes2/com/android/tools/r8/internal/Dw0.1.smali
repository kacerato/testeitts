.class public final Lcom/android/tools/r8/internal/Dw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->b:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;)Ljava/util/Set;
    .locals 6

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/internal/Dw0;->c:Z

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->b:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-boolean v2, Lcom/android/tools/r8/internal/TU;->a:Z

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, v0

    .line 12
    :cond_2
    check-cast v1, Ljava/util/Set;

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 14
    iget-object v3, p0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 15
    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 16
    sget-boolean v5, Lcom/android/tools/r8/internal/Dw0;->c:Z

    if-nez v5, :cond_5

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    .line 2
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/pC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pC0;-><init>()V

    .line 5
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/xw0;)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dw0;->a:Ljava/util/IdentityHashMap;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-boolean v2, Lcom/android/tools/r8/internal/TU;->a:Z

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dw0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    sget-boolean v4, Lcom/android/tools/r8/internal/Dw0;->c:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dw0;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void
.end method
