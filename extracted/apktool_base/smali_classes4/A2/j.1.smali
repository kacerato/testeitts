.class public abstract LA2/j;
.super LA2/a;
.source "SourceFile"

# interfaces
.implements LA2/j0;


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
        "LA2/a<",
        "TN;>;",
        "LA2/j0<",
        "TN;TV;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LA2/a;-><init>()V

    return-void
.end method

.method public static Q(LA2/j0;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;)",
            "Ljava/util/Map<",
            "LA2/u<",
            "TN;>;TV;>;"
        }
    .end annotation

    new-instance v0, LA2/j$b;

    invoke-direct {v0, p0}, LA2/j$b;-><init>(LA2/j0;)V

    invoke-interface {p0}, LA2/j0;->g()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;Lw2/t;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LA2/j0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LA2/j0;

    invoke-interface {p0}, LA2/j0;->c()Z

    move-result v1

    invoke-interface {p1}, LA2/j0;->c()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-interface {p0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, LA2/j;->Q(LA2/j0;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, LA2/j;->Q(LA2/j0;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LA2/a;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic g()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LA2/a;->g()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(LA2/u;)Z
    .locals 0

    invoke-super {p0, p1}, LA2/a;->h(LA2/u;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-static {p0}, LA2/j;->Q(LA2/j0;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, LA2/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LA2/a;->j(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LA2/a;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/a;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q()LA2/s;
    .locals 1

    invoke-super {p0}, LA2/a;->q()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public s()LA2/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/z<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/j$a;

    invoke-direct {v0, p0}, LA2/j$a;-><init>(LA2/j;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, LA2/j0;->c()Z

    move-result v0

    invoke-interface {p0}, LA2/j0;->m()Z

    move-result v1

    invoke-interface {p0}, LA2/j0;->e()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, LA2/j;->Q(LA2/j0;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "isDirected: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", allowsSelfLoops: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", nodes: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", edges: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
