.class public Lcom/android/tools/r8/internal/EJ;
.super Lcom/android/tools/r8/internal/CJ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/E1;)V
    .locals 6

    .line 1
    sget-object v5, Lcom/android/tools/r8/internal/DJ;->b:Lcom/android/tools/r8/internal/DJ;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/CJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;Lcom/android/tools/r8/internal/hi;Lcom/android/tools/r8/internal/E1;Lcom/android/tools/r8/internal/DJ;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pp0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/qp0;)V
    .locals 6

    sget-object v5, Lcom/android/tools/r8/internal/DJ;->c:Lcom/android/tools/r8/internal/DJ;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/CJ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/D1;Lcom/android/tools/r8/internal/hi;Lcom/android/tools/r8/internal/E1;Lcom/android/tools/r8/internal/DJ;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
