.class public final Lcom/android/tools/r8/synthesis/u;
.super Lcom/android/tools/r8/internal/bt0;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lcom/android/tools/r8/synthesis/v;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/synthesis/v;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/u;->f:Lcom/android/tools/r8/synthesis/v;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/bt0;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/u;->f:Lcom/android/tools/r8/synthesis/v;

    .line 6
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/v;->b:Lcom/android/tools/r8/internal/n6;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/u;->f:Lcom/android/tools/r8/synthesis/v;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/synthesis/v;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/synthesis/u;->f:Lcom/android/tools/r8/synthesis/v;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/synthesis/v;->a:Lcom/android/tools/r8/internal/n6;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/l6;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/l1;

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/synthesis/v;->d:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/u;->f:Lcom/android/tools/r8/synthesis/v;

    iget-object v0, v0, Lcom/android/tools/r8/synthesis/v;->c:Lcom/android/tools/r8/internal/n6;

    invoke-virtual {v0, p1, p1}, Lcom/android/tools/r8/internal/l6;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1
.end method
