.class public Lcom/android/tools/r8/internal/vb;
.super Lcom/android/tools/r8/internal/F9;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/La;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/l1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/F9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method


# virtual methods
.method public final B()I
    .locals 1

    const/16 v0, 0xb2

    return v0
.end method

.method public final H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final T()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/F9;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/vb;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/f6;Ljava/util/ListIterator;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/f6;->a(Lcom/android/tools/r8/internal/La;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/qb;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/qb;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 5
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/F9;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(ILcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final u()Lcom/android/tools/r8/internal/vb;
    .locals 0

    return-object p0
.end method
