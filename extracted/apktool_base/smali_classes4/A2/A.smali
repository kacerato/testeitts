.class public final LA2/A;
.super LA2/g;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
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

.method public static e()LA2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/A<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LA2/A;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA2/A;-><init>(Z)V

    return-object v0
.end method

.method public static g(LA2/z;)LA2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)",
            "LA2/A<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/A;

    invoke-interface {p0}, LA2/z;->c()Z

    move-result v1

    invoke-direct {v0, v1}, LA2/A;-><init>(Z)V

    invoke-interface {p0}, LA2/z;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, LA2/A;->a(Z)LA2/A;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->k()LA2/s;

    move-result-object v1

    invoke-virtual {v0, v1}, LA2/A;->j(LA2/s;)LA2/A;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->q()LA2/s;

    move-result-object p0

    invoke-virtual {v0, p0}, LA2/A;->i(LA2/s;)LA2/A;

    move-result-object p0

    return-object p0
.end method

.method public static k()LA2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/A<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, LA2/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA2/A;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public a(Z)LA2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LA2/A<",
            "TN;>;"
        }
    .end annotation

    iput-boolean p1, p0, LA2/g;->b:Z

    return-object p0
.end method

.method public b()LA2/P;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "LA2/P<",
            "TN1;>;"
        }
    .end annotation

    new-instance v0, LA2/Y;

    invoke-direct {v0, p0}, LA2/Y;-><init>(LA2/g;)V

    return-object v0
.end method

.method public final c()LA2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "LA2/A<",
            "TN1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public d()LA2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/A<",
            "TN;>;"
        }
    .end annotation

    new-instance v0, LA2/A;

    iget-boolean v1, p0, LA2/g;->a:Z

    invoke-direct {v0, v1}, LA2/A;-><init>(Z)V

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

.method public f(I)LA2/A;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LA2/A<",
            "TN;>;"
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

.method public h()LA2/E$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "LA2/E$a<",
            "TN1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/A;->c()LA2/A;

    move-result-object v0

    new-instance v1, LA2/E$a;

    invoke-direct {v1, v0}, LA2/E$a;-><init>(LA2/A;)V

    return-object v1
.end method

.method public i(LA2/s;)LA2/A;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LA2/s<",
            "TN1;>;)",
            "LA2/A<",
            "TN1;>;"
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

    invoke-virtual {p0}, LA2/A;->c()LA2/A;

    move-result-object v0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/s;

    iput-object p1, v0, LA2/g;->d:LA2/s;

    return-object v0
.end method

.method public j(LA2/s;)LA2/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "LA2/s<",
            "TN1;>;)",
            "LA2/A<",
            "TN1;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/A;->c()LA2/A;

    move-result-object v0

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LA2/s;

    iput-object p1, v0, LA2/g;->c:LA2/s;

    return-object v0
.end method
