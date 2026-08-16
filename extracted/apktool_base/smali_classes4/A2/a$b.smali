.class public LA2/a$b;
.super LA2/L;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/a;->n(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LA2/L<",
        "TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(LA2/a;LA2/k;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, LA2/L;-><init>(LA2/k;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(LA2/a$b;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-virtual {p0, p1}, LA2/a$b;->f(Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(LA2/a$b;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-virtual {p0, p1}, LA2/a$b;->g(Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LA2/a$b;Ljava/lang/Object;)LA2/u;
    .locals 0

    invoke-virtual {p0, p1}, LA2/a$b;->e(Ljava/lang/Object;)LA2/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/common/collect/e3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "LA2/u<",
            "TN;>;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/L;->c:LA2/k;

    invoke-interface {v0}, LA2/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA2/L;->c:LA2/k;

    iget-object v1, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LA2/k;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/b;

    invoke-direct {v1, p0}, LA2/b;-><init>(LA2/a$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, LA2/L;->c:LA2/k;

    iget-object v2, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v1, v2}, LA2/k;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/common/collect/r1;->A(Ljava/lang/Object;)Lcom/google/common/collect/r1;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/D2;->f(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/D2$m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/D2$m;->c()Lcom/google/common/collect/e3;

    move-result-object v1

    new-instance v2, LA2/c;

    invoke-direct {v2, p0}, LA2/c;-><init>(LA2/a$b;)V

    invoke-static {v1, v2}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->j(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->f0(Ljava/util/Iterator;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, LA2/L;->c:LA2/k;

    iget-object v1, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, LA2/k;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LA2/d;

    invoke-direct {v1, p0}, LA2/d;-><init>(LA2/a$b;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/E1;->f0(Ljava/util/Iterator;)Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic e(Ljava/lang/Object;)LA2/u;
    .locals 1

    iget-object v0, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Ljava/lang/Object;)LA2/u;
    .locals 1

    iget-object v0, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, LA2/u;->l(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic g(Ljava/lang/Object;)LA2/u;
    .locals 1

    iget-object v0, p0, LA2/L;->b:Ljava/lang/Object;

    invoke-static {v0, p1}, LA2/u;->o(Ljava/lang/Object;Ljava/lang/Object;)LA2/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, LA2/a$b;->d()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method
