.class public final Lcom/android/tools/r8/internal/wS;
.super Lcom/android/tools/r8/internal/S0;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/xT;
.implements Ljava/io/Serializable;


# instance fields
.field public transient f:Lcom/android/tools/r8/internal/tS;

.field public transient g:Lcom/android/tools/r8/internal/tS;

.field public final transient h:Ljava/util/HashMap;

.field public transient i:I

.field public transient j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/S0;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/m60;->a:I

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/tools/r8/internal/tV;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/wS;Lcom/android/tools/r8/internal/tS;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v1, v0, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    iput-object v1, p0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    .line 5
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    if-eqz v1, :cond_1

    .line 6
    iput-object v0, v1, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    goto :goto_1

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    .line 8
    :goto_1
    iget-object v0, p1, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sS;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 10
    iput v0, p1, Lcom/android/tools/r8/internal/sS;->c:I

    .line 11
    iget p1, p0, Lcom/android/tools/r8/internal/wS;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/wS;->j:I

    goto :goto_3

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/sS;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget v1, v0, Lcom/android/tools/r8/internal/sS;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/sS;->c:I

    .line 14
    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    iput-object v2, v1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    .line 17
    :goto_2
    iget-object v1, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    if-nez v1, :cond_4

    .line 18
    iget-object p1, p1, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/tools/r8/internal/sS;->b:Lcom/android/tools/r8/internal/tS;

    goto :goto_3

    .line 19
    :cond_4
    iget-object p1, p1, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object p1, v1, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    .line 20
    :goto_3
    iget p1, p0, Lcom/android/tools/r8/internal/wS;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/wS;->i:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/android/tools/r8/internal/tS;)Lcom/android/tools/r8/internal/tS;
    .locals 1

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/tS;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/tS;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    if-nez p2, :cond_0

    .line 26
    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    .line 27
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    new-instance p3, Lcom/android/tools/r8/internal/sS;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/sS;-><init>(Lcom/android/tools/r8/internal/tS;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget p1, p0, Lcom/android/tools/r8/internal/wS;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/wS;->j:I

    goto :goto_2

    :cond_0
    if-nez p3, :cond_2

    .line 29
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p2, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    .line 30
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object p2, v0, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    .line 31
    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    .line 32
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/sS;

    if-nez p2, :cond_1

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    new-instance p3, Lcom/android/tools/r8/internal/sS;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/sS;-><init>(Lcom/android/tools/r8/internal/tS;)V

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget p1, p0, Lcom/android/tools/r8/internal/wS;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/wS;->j:I

    goto :goto_2

    .line 35
    :cond_1
    iget p1, p2, Lcom/android/tools/r8/internal/sS;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Lcom/android/tools/r8/internal/sS;->c:I

    .line 36
    iget-object p1, p2, Lcom/android/tools/r8/internal/sS;->b:Lcom/android/tools/r8/internal/tS;

    .line 37
    iput-object v0, p1, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    .line 38
    iput-object p1, v0, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    .line 39
    iput-object v0, p2, Lcom/android/tools/r8/internal/sS;->b:Lcom/android/tools/r8/internal/tS;

    goto :goto_2

    .line 40
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sS;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget p2, p1, Lcom/android/tools/r8/internal/sS;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/tools/r8/internal/sS;->c:I

    .line 42
    iget-object p2, p3, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    iput-object p2, v0, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    .line 43
    iget-object p2, p3, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    iput-object p2, v0, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    .line 44
    iput-object p3, v0, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    .line 45
    iput-object p3, v0, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    .line 46
    iget-object p2, p3, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    if-nez p2, :cond_3

    .line 47
    iput-object v0, p1, Lcom/android/tools/r8/internal/sS;->a:Lcom/android/tools/r8/internal/tS;

    goto :goto_0

    .line 48
    :cond_3
    iput-object v0, p2, Lcom/android/tools/r8/internal/tS;->f:Lcom/android/tools/r8/internal/tS;

    .line 49
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    if-nez p1, :cond_4

    .line 50
    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    goto :goto_1

    .line 51
    :cond_4
    iput-object v0, p1, Lcom/android/tools/r8/internal/tS;->d:Lcom/android/tools/r8/internal/tS;

    .line 52
    :goto_1
    iput-object v0, p3, Lcom/android/tools/r8/internal/tS;->e:Lcom/android/tools/r8/internal/tS;

    .line 53
    iput-object v0, p3, Lcom/android/tools/r8/internal/tS;->g:Lcom/android/tools/r8/internal/tS;

    .line 54
    :goto_2
    iget p1, p0, Lcom/android/tools/r8/internal/wS;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/wS;->i:I

    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/wS;->g()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/S0;->b:Ljava/util/Collection;

    .line 23
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/HY;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/HY;-><init>(Lcom/android/tools/r8/internal/wS;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->f:Lcom/android/tools/r8/internal/tS;

    iput-object v0, p0, Lcom/android/tools/r8/internal/wS;->g:Lcom/android/tools/r8/internal/tS;

    iget-object v0, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/wS;->i:I

    iget v0, p0, Lcom/android/tools/r8/internal/wS;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/wS;->j:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wS;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()Ljava/util/Set;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/qS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/qS;-><init>(Lcom/android/tools/r8/internal/wS;)V

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/LY;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/KY;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/KY;-><init>(Lcom/android/tools/r8/internal/S0;)V

    return-object v0
.end method

.method public final g()Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/pS;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/pS;-><init>(Lcom/android/tools/r8/internal/wS;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/oS;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/oS;-><init>(Lcom/android/tools/r8/internal/wS;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/wS;->i:I

    return v0
.end method
