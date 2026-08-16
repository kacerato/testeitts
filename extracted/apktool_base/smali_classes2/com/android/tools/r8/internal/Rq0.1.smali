.class public final Lcom/android/tools/r8/internal/Rq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/YQ;

.field public final b:[Z

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Rq0;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lcom/android/tools/r8/internal/Rq0;->a:Lcom/android/tools/r8/internal/YQ;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Rq0;->a:Lcom/android/tools/r8/internal/YQ;

    .line 8
    iget-object v0, p1, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/YQ;ILcom/android/tools/r8/internal/rL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Rq0;->a:Lcom/android/tools/r8/internal/YQ;

    .line 3
    new-array p1, p2, [Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Rq0;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1

    iget-object v4, p1, Lcom/android/tools/r8/internal/Rq0;->b:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    aget-boolean v4, v3, v1

    if-nez v4, :cond_0

    aput-boolean v5, v3, v1

    move v2, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/Rq0;->a:Lcom/android/tools/r8/internal/YQ;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rq0;->a:Lcom/android/tools/r8/internal/YQ;

    if-ne v1, v3, :cond_3

    :goto_1
    iget-object v1, p1, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p1, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/rL;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/Rq0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method
