.class public final Lcom/android/tools/r8/internal/Sy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Iterator;

.field public b:Ljava/util/Map$Entry;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Ty;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Um0;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/gn0;

    new-instance v0, Lcom/android/tools/r8/internal/en0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/gn0;->b:Lcom/android/tools/r8/internal/Um0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/en0;-><init>(Lcom/android/tools/r8/internal/Um0;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sy;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sy;->b:Ljava/util/Map$Entry;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/android/tools/r8/internal/He;)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sy;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Vy;

    iget v0, v0, Lcom/android/tools/r8/internal/Vy;->b:I

    if-ge v0, p1, :cond_5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sy;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Vy;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Sy;->b:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Jw;->c:Lcom/android/tools/r8/internal/Jw;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    iget v3, v0, Lcom/android/tools/r8/internal/Vy;->b:I

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/Vy;->d:Z

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eqz v0, :cond_1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lcom/android/tools/r8/internal/Sx0;->f:Lcom/android/tools/r8/internal/Mx0;

    if-ne v2, v6, :cond_0

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p2, v3, v5}, Lcom/android/tools/r8/internal/He;->b(II)V

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    invoke-virtual {p2, v3, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    goto :goto_1

    :cond_0
    iget v6, v2, Lcom/android/tools/r8/internal/Sx0;->c:I

    invoke-virtual {p2, v3, v6}, Lcom/android/tools/r8/internal/He;->b(II)V

    invoke-static {p2, v2, v1}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/Sx0;->f:Lcom/android/tools/r8/internal/Mx0;

    if-ne v2, v0, :cond_2

    check-cast v1, Lcom/android/tools/r8/internal/O0;

    invoke-virtual {p2, v3, v5}, Lcom/android/tools/r8/internal/He;->b(II)V

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    invoke-virtual {p2, v3, v4}, Lcom/android/tools/r8/internal/He;->b(II)V

    goto :goto_2

    :cond_2
    iget v0, v2, Lcom/android/tools/r8/internal/Sx0;->c:I

    invoke-virtual {p2, v3, v0}, Lcom/android/tools/r8/internal/He;->b(II)V

    invoke-static {p2, v2, v1}, Lcom/android/tools/r8/internal/Jw;->a(Lcom/android/tools/r8/internal/He;Lcom/android/tools/r8/internal/Sx0;Ljava/lang/Object;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Sy;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sy;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sy;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sy;->b:Ljava/util/Map$Entry;

    goto :goto_0

    :cond_5
    return-void
.end method
