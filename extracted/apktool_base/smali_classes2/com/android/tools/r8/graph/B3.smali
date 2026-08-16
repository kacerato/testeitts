.class public final Lcom/android/tools/r8/graph/B3;
.super Lcom/android/tools/r8/graph/z3;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/F3;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/graph/z3;-><init>(Lcom/android/tools/r8/graph/D3$a;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final o()Lcom/android/tools/r8/graph/F5;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/graph/z3;->b:Lcom/android/tools/r8/graph/D3$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/tools/r8/graph/F3;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/F3;->r()Lcom/android/tools/r8/graph/F5;

    move-result-object v0

    return-object v0
.end method
