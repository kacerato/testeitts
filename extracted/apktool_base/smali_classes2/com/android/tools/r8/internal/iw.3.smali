.class public final Lcom/android/tools/r8/internal/iw;
.super Lcom/android/tools/r8/internal/IV;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/M2;

.field public final d:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/IV;-><init>(Lcom/android/tools/r8/graph/v2;Lcom/android/tools/r8/graph/v2;)V

    iput-object p3, p0, Lcom/android/tools/r8/internal/iw;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/iw;->c:Lcom/android/tools/r8/graph/M2;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/iw;->c:Lcom/android/tools/r8/graph/M2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
