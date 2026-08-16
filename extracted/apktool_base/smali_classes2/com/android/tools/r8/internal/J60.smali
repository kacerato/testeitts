.class public final Lcom/android/tools/r8/internal/J60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/K60;


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/J60;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/I60;)Lcom/android/tools/r8/graph/W0;
    .locals 2

    .line 16
    new-instance v0, Lcom/android/tools/r8/graph/X0;

    iget v1, p0, Lcom/android/tools/r8/internal/I60;->b:I

    iget p0, p0, Lcom/android/tools/r8/internal/I60;->c:I

    invoke-direct {v0, v1, p0}, Lcom/android/tools/r8/graph/X0;-><init>(II)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lcom/android/tools/r8/internal/I60;)V
    .locals 3

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/internal/J60;->b:Z

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/tools/r8/internal/I60;->a:Lcom/android/tools/r8/graph/J0;

    iget v2, p1, Lcom/android/tools/r8/internal/I60;->c:I

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/graph/J0;I)V

    .line 10
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/eJ0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/eJ0;-><init>()V

    .line 11
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/W0;

    if-nez v0, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/W0;->m0()Lcom/android/tools/r8/graph/X0;

    move-result-object v0

    .line 13
    iget v0, v0, Lcom/android/tools/r8/graph/X0;->f:I

    .line 14
    iget v1, p1, Lcom/android/tools/r8/internal/I60;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 15
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/I60;->a:Lcom/android/tools/r8/graph/J0;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/W0;)V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/J60;->b:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a()V
    .locals 3

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/J60;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/fJ0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/fJ0;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;I)V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/android/tools/r8/internal/J60;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/i0;->v0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object p1

    if-nez v0, :cond_2

    .line 5
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/oj;->a(Lcom/android/tools/r8/graph/J0;I)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/J60;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/I60;

    invoke-direct {v2, p1, v1, p2}, Lcom/android/tools/r8/internal/I60;-><init>(Lcom/android/tools/r8/graph/J0;II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
