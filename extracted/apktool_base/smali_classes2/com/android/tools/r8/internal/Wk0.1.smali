.class public final Lcom/android/tools/r8/internal/Wk0;
.super Lcom/android/tools/r8/internal/yY;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/graph/u1;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yY;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Wk0;->b:Lcom/android/tools/r8/graph/u1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;)Ljava/lang/Object;
    .locals 6

    new-instance v0, Lcom/android/tools/r8/internal/kA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kA;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->k1()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Wk0;->b:Lcom/android/tools/r8/graph/u1;

    new-instance v3, Lcom/android/tools/r8/internal/Vk0;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->I0()Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v1, v2, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    :goto_1
    invoke-direct {v3, v4, v1}, Lcom/android/tools/r8/internal/Vk0;-><init>(Lcom/android/tools/r8/graph/k3;Lcom/android/tools/r8/graph/M2;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/android/tools/r8/internal/F0;->a(Ljava/lang/Object;I)I

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "SameInstanceFields"

    return-object v0
.end method
