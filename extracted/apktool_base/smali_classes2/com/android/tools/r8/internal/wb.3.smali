.class public final Lcom/android/tools/r8/internal/wb;
.super Lcom/android/tools/r8/internal/F9;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/F9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xb3

    return v0
.end method

.method public final J()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/wb;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/f6;->g(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 0

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 4
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/aB;->b(ILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final v()Lcom/android/tools/r8/internal/wb;
    .locals 0

    return-object p0
.end method
