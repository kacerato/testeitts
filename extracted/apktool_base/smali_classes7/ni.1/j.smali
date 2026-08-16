.class public Lni/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lwh/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwh/h;

    invoke-direct {v0}, Lwh/h;-><init>()V

    iput-object v0, p0, Lni/j;->a:Lwh/h;

    return-void
.end method


# virtual methods
.method public a()Lni/i;
    .locals 3

    new-instance v0, Lni/i;

    new-instance v1, Lth/T;

    iget-object v2, p0, Lni/j;->a:Lwh/h;

    invoke-virtual {v2}, Lwh/h;->b()Lwh/g;

    move-result-object v2

    invoke-direct {v1, v2}, Lth/T;-><init>(Lwh/g;)V

    invoke-direct {v0, v1}, Lni/i;-><init>(Lth/T;)V

    return-object v0
.end method

.method public b(Lfi/d;)Lni/j;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lni/j;->a:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->e(Lfi/d;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public c(Lhi/h0;)Lni/j;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lni/j;->a:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->g(Lhi/h0;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public d(Ljava/math/BigInteger;)Lni/j;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lni/j;->a:Lwh/h;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lwh/h;->h(Loh/s;)Lwh/h;

    :cond_0
    return-object p0
.end method

.method public e(Lfi/d;)Lni/j;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lni/j;->a:Lwh/h;

    invoke-virtual {v0, p1}, Lwh/h;->j(Lfi/d;)Lwh/h;

    :cond_0
    return-object p0
.end method
