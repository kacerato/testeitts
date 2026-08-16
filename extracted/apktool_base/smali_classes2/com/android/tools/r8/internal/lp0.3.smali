.class public final Lcom/android/tools/r8/internal/lp0;
.super Lcom/android/tools/r8/internal/Sj;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/util/IdentityHashMap;

.field public final synthetic e:Ljava/util/IdentityHashMap;

.field public final synthetic f:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/LinkedHashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/lp0;->d:Ljava/util/IdentityHashMap;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lp0;->e:Ljava/util/IdentityHashMap;

    iput-object p3, p0, Lcom/android/tools/r8/internal/lp0;->f:Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Qj;Ljava/util/function/Function;)V
    .locals 2

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Qj;->a:Ljava/lang/Object;

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/Hp0;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/lp0;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/lp0;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Hp0;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
