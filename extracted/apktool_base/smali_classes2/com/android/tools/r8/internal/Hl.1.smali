.class public final Lcom/android/tools/r8/internal/Hl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/RI;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/nk;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/android/tools/r8/internal/Pl;

.field public final e:[Lcom/android/tools/r8/internal/Kl;

.field public final f:[Lcom/android/tools/r8/internal/Kl;

.field public final g:I

.field public h:Ljava/util/HashMap;

.field public i:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;)V
    .locals 7

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hl;->h:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hl;->i:Ljava/lang/ref/ReferenceQueue;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Hl;->b:Lcom/android/tools/r8/internal/nk;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nk;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3, v1}, Lcom/android/tools/r8/internal/Ul;->a(Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Cl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/internal/Hl;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Hl;->d:Lcom/android/tools/r8/internal/Pl;

    iget-object p3, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lcom/android/tools/r8/internal/Kl;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Hl;->e:[Lcom/android/tools/r8/internal/Kl;

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/Hl;->e:[Lcom/android/tools/r8/internal/Kl;

    new-instance v3, Lcom/android/tools/r8/internal/Kl;

    iget-object v4, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/tk;

    invoke-direct {v3, v4, p2, p0, v1}, Lcom/android/tools/r8/internal/Kl;-><init>(Lcom/android/tools/r8/internal/tk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Hl;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hl;->e:[Lcom/android/tools/r8/internal/Kl;

    invoke-virtual {v1}, [Lcom/android/tools/r8/internal/Kl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/tools/r8/internal/Kl;

    iput-object v1, p0, Lcom/android/tools/r8/internal/Hl;->f:[Lcom/android/tools/r8/internal/Kl;

    sget-object v2, Lcom/android/tools/r8/internal/Kl;->f:Lcom/android/tools/r8/internal/Il;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    iget-object v3, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Hl;->f:[Lcom/android/tools/r8/internal/Kl;

    aget-object v4, v3, p3

    aget-object v5, v3, v2

    iget-object v4, v4, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    iget v4, v4, Lcom/android/tools/r8/internal/tk;->d:I

    iget-object v6, v5, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    iget v6, v6, Lcom/android/tools/r8/internal/tk;->d:I

    if-eq v4, v6, :cond_1

    add-int/lit8 p3, p3, 0x1

    aput-object v5, v3, p3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr p3, v1

    iput p3, p0, Lcom/android/tools/r8/internal/Hl;->g:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Hl;->f:[Lcom/android/tools/r8/internal/Kl;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nk;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v1, p3, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p1, p2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    return-void

    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Fl;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2}, Lcom/android/tools/r8/internal/Fl;-><init>(Lcom/android/tools/r8/internal/Ql;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Lcom/android/tools/r8/internal/Kl;
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->f:[Lcom/android/tools/r8/internal/Kl;

    iget v1, p0, Lcom/android/tools/r8/internal/Hl;->g:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v1, :cond_1

    add-int v3, v2, v1

    .line 3
    div-int/lit8 v3, v3, 0x2

    .line 4
    aget-object v4, v0, v3

    .line 5
    iget-object v5, v4, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    .line 6
    iget v5, v5, Lcom/android/tools/r8/internal/tk;->d:I

    if-ge p1, v5, :cond_0

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_0
    if-le p1, v5, :cond_2

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :cond_2
    return-object v4
.end method

.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->d:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b(I)Lcom/android/tools/r8/internal/Kl;
    .locals 4

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Hl;->a(I)Lcom/android/tools/r8/internal/Kl;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->i:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hl;->i:Ljava/lang/ref/ReferenceQueue;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hl;->h:Ljava/util/HashMap;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Gl;

    if-nez v0, :cond_4

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Kl;

    :goto_2
    if-nez v0, :cond_3

    .line 10
    new-instance v0, Lcom/android/tools/r8/internal/Kl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/Kl;-><init>(Lcom/android/tools/r8/internal/Hl;Ljava/lang/Integer;)V

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hl;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/Gl;

    invoke-direct {v3, p1, v0}, Lcom/android/tools/r8/internal/Gl;-><init>(ILcom/android/tools/r8/internal/Kl;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    monitor-exit p0

    return-object v0

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hl;->h:Ljava/util/HashMap;

    .line 14
    iget v0, v0, Lcom/android/tools/r8/internal/Gl;->a:I

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->b:Lcom/android/tools/r8/internal/nk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Hl;->b:Lcom/android/tools/r8/internal/nk;

    return-object v0
.end method
