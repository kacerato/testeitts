.class public LA2/c0;
.super LA2/j;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LA2/j<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:LA2/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/s<",
            "TN;>;"
        }
    .end annotation
.end field

.field public final d:LA2/M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/M<",
            "TN;",
            "LA2/B<",
            "TN;TV;>;>;"
        }
    .end annotation
.end field

.field public e:J


# direct methods
.method public constructor <init>(LA2/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/g<",
            "-TN;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, LA2/g;->c:LA2/s;

    iget-object v1, p1, LA2/g;->e:Lw2/C;

    const/16 v2, 0xa

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw2/C;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, LA2/s;->c(I)Ljava/util/Map;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, LA2/c0;-><init>(LA2/g;Ljava/util/Map;J)V

    return-void
.end method

.method public constructor <init>(LA2/g;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/g<",
            "-TN;>;",
            "Ljava/util/Map<",
            "TN;",
            "LA2/B<",
            "TN;TV;>;>;J)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, LA2/j;-><init>()V

    .line 6
    iget-boolean v0, p1, LA2/g;->a:Z

    iput-boolean v0, p0, LA2/c0;->a:Z

    .line 7
    iget-boolean v0, p1, LA2/g;->b:Z

    iput-boolean v0, p0, LA2/c0;->b:Z

    .line 8
    iget-object p1, p1, LA2/g;->c:LA2/s;

    invoke-virtual {p1}, LA2/s;->a()LA2/s;

    move-result-object p1

    iput-object p1, p0, LA2/c0;->c:LA2/s;

    .line 9
    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, LA2/N;

    invoke-direct {p1, p2}, LA2/N;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, LA2/M;

    invoke-direct {p1, p2}, LA2/M;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, LA2/c0;->d:LA2/M;

    .line 12
    invoke-static {p3, p4}, LA2/D;->c(J)J

    move-result-wide p1

    iput-wide p1, p0, LA2/c0;->e:J

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, LA2/c0;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public J(LA2/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1}, LA2/a;->P(LA2/u;)V

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, LA2/c0;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public N()J
    .locals 2

    iget-wide v0, p0, LA2/c0;->e:J

    return-wide v0
.end method

.method public final R(Ljava/lang/Object;)LA2/B;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "LA2/B<",
            "TN;TV;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA2/B;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Node "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an element of this graph."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final S(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/B;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, LA2/B;->value(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object p3

    :cond_1
    return-object p1
.end method

.method public final U(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0, p1}, LA2/M;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/B;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LA2/B;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/c0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, LA2/c0;->R(Ljava/lang/Object;)LA2/B;

    move-result-object p1

    invoke-interface {p1}, LA2/B;->b()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LA2/c0;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, LA2/c0;->R(Ljava/lang/Object;)LA2/B;

    move-result-object p1

    invoke-interface {p1}, LA2/B;->c()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, LA2/c0;->a:Z

    return v0
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/c0;->R(Ljava/lang/Object;)LA2/B;

    move-result-object p1

    invoke-interface {p1}, LA2/B;->a()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/c0;->d:LA2/M;

    invoke-virtual {v0}, LA2/M;->k()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public h(LA2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, LA2/a;->O(LA2/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LA2/c0;->U(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LA2/c0;->U(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/c0;->c:LA2/s;

    return-object v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, LA2/c0;->b:Z

    return v0
.end method

.method public n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/c0;->R(Ljava/lang/Object;)LA2/B;

    move-result-object v0

    new-instance v1, LA2/c0$a;

    invoke-direct {v1, p0, p0, p1, v0}, LA2/c0$a;-><init>(LA2/c0;LA2/k;Ljava/lang/Object;LA2/B;)V

    return-object v1
.end method
