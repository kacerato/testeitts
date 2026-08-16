.class public final Lcom/android/tools/r8/kotlin/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/kotlin/d0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/eQ;

.field public final b:Lcom/android/tools/r8/internal/hC;

.field public final c:Lcom/android/tools/r8/kotlin/N;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eQ;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/kotlin/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/kotlin/z;->a:Lcom/android/tools/r8/internal/eQ;

    iput-object p2, p0, Lcom/android/tools/r8/kotlin/z;->b:Lcom/android/tools/r8/internal/hC;

    iput-object p3, p0, Lcom/android/tools/r8/kotlin/z;->c:Lcom/android/tools/r8/kotlin/N;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/kotlin/t0;)Ljava/util/function/Consumer;
    .locals 1

    .line 28
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/kotlin/W0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/kotlin/W0;-><init>(Lcom/android/tools/r8/kotlin/t0;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/eQ;Lcom/android/tools/r8/internal/OL;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/android/tools/r8/internal/AL;->a(Lcom/android/tools/r8/internal/eQ;)Lcom/android/tools/r8/internal/zL;

    move-result-object p0

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/zL;->a:Lcom/android/tools/r8/internal/OL;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/d1;)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/z;->b:Lcom/android/tools/r8/internal/hC;

    new-instance v1, Lcom/android/tools/r8/kotlin/Q4;

    invoke-direct {v1}, Lcom/android/tools/r8/kotlin/Q4;-><init>()V

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/android/tools/r8/kotlin/z;->c:Lcom/android/tools/r8/kotlin/N;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/kotlin/N;->a(Lcom/android/tools/r8/graph/d1;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aQ;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z
    .locals 8

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/eQ;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eQ;-><init>(I)V

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/z;->a:Lcom/android/tools/r8/internal/eQ;

    .line 7
    sget-object v3, Lcom/android/tools/r8/internal/i5;->a:[Lcom/android/tools/r8/internal/XY;

    .line 8
    sget-object v4, Lcom/android/tools/r8/internal/i5;->c:Lcom/android/tools/r8/internal/Y6;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-virtual {v4, v2, v6}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v6

    .line 9
    aget-object v5, v3, v5

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 10
    sget-object v4, Lcom/android/tools/r8/internal/i5;->s:Lcom/android/tools/r8/internal/pu;

    const/16 v5, 0x11

    aget-object v6, v3, v5

    invoke-virtual {v4, v2, v6}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/Ax0;

    .line 11
    const-string v7, "<set-?>"

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    aget-object v5, v3, v5

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/tools/r8/internal/pu;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Ljava/lang/Enum;)V

    .line 13
    sget-object v4, Lcom/android/tools/r8/internal/i5;->t:Lcom/android/tools/r8/internal/Y6;

    const/16 v5, 0x12

    aget-object v6, v3, v5

    invoke-virtual {v4, v2, v6}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v6

    .line 14
    aget-object v5, v3, v5

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 15
    sget-object v4, Lcom/android/tools/r8/internal/i5;->u:Lcom/android/tools/r8/internal/Y6;

    const/16 v5, 0x13

    aget-object v6, v3, v5

    invoke-virtual {v4, v2, v6}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;)Z

    move-result v2

    .line 16
    aget-object v3, v3, v5

    invoke-virtual {v4, v0, v3, v2}, Lcom/android/tools/r8/internal/Y6;->a(Ljava/lang/Object;Lcom/android/tools/r8/internal/XY;Z)V

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/kotlin/z;->c:Lcom/android/tools/r8/kotlin/N;

    if-eqz v2, :cond_0

    .line 18
    new-instance v1, Lcom/android/tools/r8/kotlin/R4;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/R4;-><init>(Lcom/android/tools/r8/internal/eQ;)V

    .line 19
    invoke-virtual {v2, v1, p2, p3}, Lcom/android/tools/r8/kotlin/N;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    .line 20
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/kotlin/z;->b:Lcom/android/tools/r8/internal/hC;

    .line 21
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eQ;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/kotlin/d1;

    invoke-direct {v3}, Lcom/android/tools/r8/kotlin/d1;-><init>()V

    .line 22
    invoke-static {p3, p2, v2, v3}, Lcom/android/tools/r8/kotlin/b0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/internal/gt0;)Z

    move-result p2

    or-int/2addr p2, v1

    .line 23
    iget-object p3, v0, Lcom/android/tools/r8/internal/eQ;->c:Ljava/util/ArrayList;

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/kotlin/z;->a:Lcom/android/tools/r8/internal/eQ;

    .line 25
    iget-object v1, v1, Lcom/android/tools/r8/internal/eQ;->c:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/aQ;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p2
.end method

.method public final h()Lcom/android/tools/r8/kotlin/z;
    .locals 0

    return-object p0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
