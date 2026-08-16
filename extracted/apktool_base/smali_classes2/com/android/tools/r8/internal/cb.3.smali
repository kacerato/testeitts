.class public final Lcom/android/tools/r8/internal/cb;
.super Lcom/android/tools/r8/internal/i9;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/W9;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/cb;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/cb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->e(Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ob;)V
    .locals 2

    .line 1
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/i9;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/M2;Z)V

    return-void
.end method
