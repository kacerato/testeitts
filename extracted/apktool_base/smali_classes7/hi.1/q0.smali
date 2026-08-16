.class public Lhi/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/K0;

.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Lfi/d;

.field public e:Lhi/o0;

.field public f:Lhi/o0;

.field public g:Lfi/d;

.field public h:Lhi/h0;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/K0;

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    iput-object v0, p0, Lhi/q0;->a:Loh/K0;

    return-void
.end method


# virtual methods
.method public a()Lhi/j0;
    .locals 3

    iget-object v0, p0, Lhi/q0;->b:Loh/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/q0;->c:Lhi/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/q0;->d:Lfi/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/q0;->e:Lhi/o0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/q0;->f:Lhi/o0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/q0;->g:Lfi/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhi/q0;->h:Lhi/h0;

    if-eqz v0, :cond_0

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/q0;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/q0;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/q0;->d:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Loh/h;-><init>(I)V

    iget-object v2, p0, Lhi/q0;->e:Lhi/o0;

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    iget-object v2, p0, Lhi/q0;->f:Lhi/o0;

    invoke-virtual {v1, v2}, Loh/h;->a(Loh/g;)V

    new-instance v2, Loh/G0;

    invoke-direct {v2, v1}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/q0;->g:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/q0;->h:Lhi/h0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lhi/j0;->w(Ljava/lang/Object;)Lhi/j0;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lhi/o0;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->f:Lhi/o0;

    return-void
.end method

.method public c(Loh/P;)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Loh/B;)V

    iput-object v0, p0, Lhi/q0;->f:Lhi/o0;

    return-void
.end method

.method public d(Lfi/d;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->d:Lfi/d;

    return-void
.end method

.method public e(Lhi/B0;)V
    .locals 0

    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lhi/q0;->d:Lfi/d;

    return-void
.end method

.method public f(Loh/s;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->b:Loh/s;

    return-void
.end method

.method public g(Lhi/b;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->c:Lhi/b;

    return-void
.end method

.method public h(Lhi/o0;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->e:Lhi/o0;

    return-void
.end method

.method public i(Loh/P;)V
    .locals 1

    new-instance v0, Lhi/o0;

    invoke-direct {v0, p1}, Lhi/o0;-><init>(Loh/B;)V

    iput-object v0, p0, Lhi/q0;->e:Lhi/o0;

    return-void
.end method

.method public j(Lfi/d;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->g:Lfi/d;

    return-void
.end method

.method public k(Lhi/B0;)V
    .locals 0

    invoke-virtual {p1}, Lhi/B0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    iput-object p1, p0, Lhi/q0;->g:Lfi/d;

    return-void
.end method

.method public l(Lhi/h0;)V
    .locals 0

    iput-object p1, p0, Lhi/q0;->h:Lhi/h0;

    return-void
.end method
