.class public final LA2/k0;
.super LA2/g;
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
        "LA2/g<",
        "TN;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, LA2/g;-><init>(Z)V

    return-void
.end method

.method public static e()LA2/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/k0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LA2/k0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA2/k0;-><init>(Z)V

    return-object v0
.end method

.method public static g(LA2/j0;)LA2/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/j0<",
            "TN;TV;>;)",
            "LA2/k0<",
            "TN;TV;>;"
        }
    .end annotation

    new-instance v0, LA2/k0;

    invoke-interface {p0}, LA2/j0;->c()Z

    move-result v1

    invoke-direct {v0, v1}, LA2/k0;-><init>(Z)V

    invoke-interface {p0}, LA2/j0;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, LA2/k0;->a(Z)LA2/k0;

    move-result-object v0

    invoke-interface {p0}, LA2/j0;->k()LA2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, LA2/k0;->j(LA2/s;)LA2/k0;

    move-result-object v0

    invoke-interface {p0}, LA2/j0;->q()LA2/s;

    move-result-object p0

    invoke-virtual {v0, p0}, LA2/k0;->i(LA2/s;)LA2/k0;

    move-result-object p0

    return-object p0
.end method

.method public static k()LA2/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/k0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LA2/k0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA2/k0;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)LA2/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LA2/k0<",
            "TN;TV;>;"
        }
    .end annotation

    iput-boolean p1, p0, LA2/g;->b:Z

    return-object p0
.end method

.method public b()LA2/S;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "LA2/S<",
            "TN1;TV1;>;"
        }
    .end annotation

    new-instance v0, LA2/a0;

    invoke-direct {v0, p0}, LA2/a0;-><init>(LA2/g;)V

    return-object v0
.end method

.method public final c()LA2/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "LA2/k0<",
            "TN1;TV1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public d()LA2/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/k0<",
            "TN;TV;>;"
        }
    .end annotation

    new-instance v0, LA2/k0;

    iget-boolean v1, p0, LA2/g;->a:Z

    invoke-direct {v0, v1}, LA2/k0;-><init>(Z)V

    iget-boolean v1, p0, LA2/g;->b:Z

    iput-boolean v1, v0, LA2/g;->b:Z

    iget-object v1, p0, LA2/g;->c:LA2/s;

    iput-object v1, v0, LA2/g;->c:LA2/s;

    iget-object v1, p0, LA2/g;->e:Lw2/C;

    iput-object v1, v0, LA2/g;->e:Lw2/C;

    iget-object v1, p0, LA2/g;->d:LA2/s;

    iput-object v1, v0, LA2/g;->d:LA2/s;

    return-object v0
.end method

.method public f(I)LA2/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LA2/k0<",
            "TN;TV;>;"
        }
    .end annotation

    invoke-static {p1}, LA2/D;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p1

    iput-object p1, p0, LA2/g;->e:Lw2/C;

    return-object p0
.end method

.method public h()LA2/K$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "LA2/K$a<",
            "TN1;TV1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/k0;->c()LA2/k0;

    move-result-object v0

    new-instance v1, LA2/K$a;

    invoke-direct {v1, v0}, LA2/K$a;-><init>(LA2/k0;)V

    return-object v1
.end method

.method public i(LA2/s;)LA2/k0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LA2/s<",
            "TN1;>;)",
            "LA2/k0<",
            "TN1;TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, LA2/s;->h()LA2/s$b;

    move-result-object v0

    sget-object v1, LA2/s$b;->UNORDERED:LA2/s$b;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, LA2/s;->h()LA2/s$b;

    move-result-object v0

    sget-object v1, LA2/s$b;->STABLE:LA2/s$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable()."

    invoke-static {v0, v1, p1}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, LA2/k0;->c()LA2/k0;

    move-result-object v0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/s;

    iput-object p1, v0, LA2/g;->d:LA2/s;

    return-object v0
.end method

.method public j(LA2/s;)LA2/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LA2/s<",
            "TN1;>;)",
            "LA2/k0<",
            "TN1;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/k0;->c()LA2/k0;

    move-result-object v0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/s;

    iput-object p1, v0, LA2/g;->c:LA2/s;

    return-object v0
.end method
