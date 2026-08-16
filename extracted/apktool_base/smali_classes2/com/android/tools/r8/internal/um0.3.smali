.class public final Lcom/android/tools/r8/internal/um0;
.super Lcom/android/tools/r8/internal/A8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/A8;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;
    .locals 1

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/vm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vm0;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/h80;)Lcom/android/tools/r8/internal/um0;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/vv1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/vv1;-><init>(Lcom/android/tools/r8/internal/um0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/A8;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/vm0;

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/A8;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/vm0;

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/vm0;->e:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, p2, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    .line 7
    :cond_2
    iput-object p2, p1, Lcom/android/tools/r8/internal/vm0;->c:Lcom/android/tools/r8/internal/vm0;

    .line 8
    iget-object p2, p2, Lcom/android/tools/r8/internal/vm0;->d:Ljava/util/TreeSet;

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
