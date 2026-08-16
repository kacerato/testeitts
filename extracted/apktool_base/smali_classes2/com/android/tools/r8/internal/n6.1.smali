.class public final Lcom/android/tools/r8/internal/n6;
.super Lcom/android/tools/r8/internal/l6;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/TY;
.implements Lcom/android/tools/r8/internal/o6;


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final e:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/l6;-><init>(Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/n6;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/n6;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/internal/n6;-><init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    .line 9
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ft0;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/jm1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/jm1;-><init>(Lcom/android/tools/r8/internal/n6;Lcom/android/tools/r8/internal/ft0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/l6;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ft0;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/n6;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/km1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/km1;-><init>(Lcom/android/tools/r8/internal/n6;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/n6;->a(Lcom/android/tools/r8/internal/ft0;)V

    return-void
.end method

.method public final a(Ljava/util/Set;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/l6;->a(Ljava/lang/Iterable;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/l6;->b:Ljava/util/AbstractMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/n6;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/l6;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/l6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/n6;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/n6;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {p1, v0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
