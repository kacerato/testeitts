.class public abstract Lcom/android/tools/r8/internal/Ry;
.super Lcom/android/tools/r8/internal/Qy;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/lW;


# instance fields
.field public c:Lcom/android/tools/r8/internal/Jw;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Qy;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/Jw;->c:Lcom/android/tools/r8/internal/Jw;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Wy;Ljava/io/Serializable;)Lcom/android/tools/r8/internal/Ry;
    .locals 4

    .line 19
    iget-object v0, p1, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Qy;->b()Lcom/android/tools/r8/internal/Yy;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 21
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Ry;->d:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ry;->d:Z

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    iget-object v1, p1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    .line 25
    iget-boolean v2, v1, Lcom/android/tools/r8/internal/Vy;->d:Z

    if-eqz v2, :cond_2

    .line 26
    iget-object v2, v1, Lcom/android/tools/r8/internal/Vy;->c:Lcom/android/tools/r8/internal/Sx0;

    .line 27
    iget-object v2, v2, Lcom/android/tools/r8/internal/Sx0;->b:Lcom/android/tools/r8/internal/Ux0;

    .line 28
    sget-object v3, Lcom/android/tools/r8/internal/Ux0;->j:Lcom/android/tools/r8/internal/Ux0;

    if-ne v2, v3, :cond_3

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p2, v2

    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Wy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 33
    :cond_3
    :goto_1
    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/Jw;->c(Lcom/android/tools/r8/internal/Vy;Ljava/lang/Object;)V

    return-object p0

    .line 34
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Ty;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Ry;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Jw;->clone()Lcom/android/tools/r8/internal/Jw;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Ry;->d:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ry;->c:Lcom/android/tools/r8/internal/Jw;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ty;->b:Lcom/android/tools/r8/internal/Jw;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 8
    iget-object v2, v2, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 10
    iget-object v2, p1, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 11
    iget-object v2, v2, Lcom/android/tools/r8/internal/Um0;->c:Ljava/util/List;

    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Jw;->b(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p1, Lcom/android/tools/r8/internal/Jw;->a:Lcom/android/tools/r8/internal/Um0;

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/android/tools/r8/internal/an0;->b:Lcom/android/tools/r8/internal/Ym0;

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/Um0;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 17
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Jw;->b(Ljava/util/Map$Entry;)V

    goto :goto_2

    :cond_3
    return-void
.end method
