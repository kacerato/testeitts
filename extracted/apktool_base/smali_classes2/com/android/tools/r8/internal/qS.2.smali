.class public final Lcom/android/tools/r8/internal/qS;
.super Lcom/android/tools/r8/internal/Jl0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/wS;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/wS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/qS;->b:Lcom/android/tools/r8/internal/wS;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jl0;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qS;->b:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/rS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qS;->b:Lcom/android/tools/r8/internal/wS;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/rS;-><init>(Lcom/android/tools/r8/internal/wS;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/qS;->b:Lcom/android/tools/r8/internal/wS;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/vS;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/vS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sS;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/wS;->a(Lcom/android/tools/r8/internal/wS;Lcom/android/tools/r8/internal/tS;)V

    move-object p1, v2

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/qS;->b:Lcom/android/tools/r8/internal/wS;

    iget-object v0, v0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
