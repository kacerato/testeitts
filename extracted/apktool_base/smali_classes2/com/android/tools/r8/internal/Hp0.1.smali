.class public abstract Lcom/android/tools/r8/internal/Hp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Ljava/util/LinkedHashSet;

.field public final b:Ljava/util/LinkedHashSet;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Hp0;->c:Z

    return-void
.end method


# virtual methods
.method public g()Lcom/android/tools/r8/internal/up0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/android/tools/r8/internal/wp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/android/tools/r8/internal/xp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/android/tools/r8/internal/yp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Lcom/android/tools/r8/internal/Cp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcom/android/tools/r8/internal/Fp0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Hp0;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Hp0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hp0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    return-object v0
.end method

.method public final n()Lcom/android/tools/r8/internal/Hp0;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/internal/Hp0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hp0;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    return-object v0
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/up0;

    return v0
.end method

.method public r()Z
    .locals 1

    instance-of v0, p0, Lcom/android/tools/r8/internal/up0;

    return v0
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Hp0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hp0;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/Hp0;

    iget-object v2, v1, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hp0;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Hp0;->c:Z

    return-void
.end method
