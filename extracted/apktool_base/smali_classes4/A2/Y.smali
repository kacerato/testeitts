.class public final LA2/Y;
.super LA2/w;
.source "SourceFile"

# interfaces
.implements LA2/P;


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LA2/w<",
        "TN;>;",
        "LA2/P<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:LA2/S;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/S<",
            "TN;",
            "LA2/C$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/g<",
            "-TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LA2/w;-><init>()V

    new-instance v0, LA2/a0;

    invoke-direct {v0, p1}, LA2/a0;-><init>(LA2/g;)V

    iput-object v0, p0, LA2/Y;->a:LA2/S;

    return-void
.end method


# virtual methods
.method public I(LA2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/a;->P(LA2/u;)V

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LA2/Y;->K(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public K(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/Y;->a:LA2/S;

    sget-object v1, LA2/C$a;->EDGE_EXISTS:LA2/C$a;

    invoke-interface {v0, p1, p2, v1}, LA2/S;->y(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Q()LA2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/k<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/Y;->a:LA2/S;

    return-object v0
.end method

.method public o(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/Y;->a:LA2/S;

    invoke-interface {v0, p1}, LA2/S;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/Y;->a:LA2/S;

    invoke-interface {v0, p1}, LA2/S;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    iget-object v0, p0, LA2/Y;->a:LA2/S;

    invoke-interface {v0, p1, p2}, LA2/S;->r(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public t(LA2/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/u<",
            "TN;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, LA2/a;->P(LA2/u;)V

    invoke-virtual {p1}, LA2/u;->h()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LA2/u;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, LA2/Y;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
