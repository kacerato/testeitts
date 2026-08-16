.class public final Lcom/android/tools/r8/naming/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/p;->a:Ljava/util/TreeMap;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/naming/p;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3
    sget v1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 5
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    const/4 v2, 0x0

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k$b;

    iget-object v3, v3, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    if-nez v3, :cond_2

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/naming/p;->b:Z

    if-nez v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/naming/k$b;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/k$b;

    .line 11
    iget-object v4, v2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/naming/M0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    iget v3, v3, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcom/android/tools/r8/internal/eC;

    .line 14
    invoke-direct {v1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 15
    iget-object v3, v2, Lcom/android/tools/r8/naming/k$b;->b:Lcom/android/tools/r8/naming/M0;

    .line 16
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_1

    .line 17
    :cond_4
    iget p0, v3, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_5
    :goto_2
    new-instance p0, Lcom/android/tools/r8/naming/p;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/naming/p;-><init>(Ljava/util/TreeMap;)V

    return-object p0
.end method


# virtual methods
.method public final a(I)Ljava/util/List;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/naming/p;->a:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/p;->a:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
