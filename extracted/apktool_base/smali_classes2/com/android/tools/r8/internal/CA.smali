.class public Lcom/android/tools/r8/internal/CA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/cW;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/o6;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/o6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/internal/m6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/m6;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/m6;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/CA;->b:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/i;->j(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected horizontally merged lambda class `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` to be absent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    return-void
.end method

.method public a(Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;",
            "Lcom/android/tools/r8/graph/M2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/m6;->a(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/m6;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/android/tools/r8/graph/M2;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/M2;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/graph/M2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/CA;->a:Lcom/android/tools/r8/internal/o6;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
