.class public Lhi/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/s;

.field public b:Lhi/I;

.field public c:Lhi/e;

.field public d:Lhi/b;

.field public e:Loh/s;

.field public f:Loh/h;

.field public g:Loh/r0;

.field public h:Lhi/C;

.field public i:Loh/n;

.field public j:Loh/n;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lhi/r0;->a:Loh/s;

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, Lhi/r0;->f:Loh/h;

    return-void
.end method


# virtual methods
.method public a(Lhi/g;)V
    .locals 1

    iget-object v0, p0, Lhi/r0;->f:Loh/h;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;Loh/g;)V
    .locals 3

    iget-object v0, p0, Lhi/r0;->f:Loh/h;

    new-instance v1, Lhi/g;

    new-instance v2, Loh/x;

    invoke-direct {v2, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance p1, Loh/I0;

    invoke-direct {p1, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v1, v2, p1}, Lhi/g;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    return-void
.end method

.method public c()Lhi/i;
    .locals 4

    iget-object v0, p0, Lhi/r0;->e:Loh/s;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhi/r0;->d:Lhi/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhi/r0;->c:Lhi/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhi/r0;->i:Loh/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhi/r0;->j:Loh/n;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhi/r0;->b:Lhi/I;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhi/r0;->f:Loh/h;

    if-eqz v0, :cond_2

    new-instance v0, Loh/h;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/r0;->a:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r0;->b:Lhi/I;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r0;->c:Lhi/e;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r0;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r0;->e:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Lhi/f;

    iget-object v2, p0, Lhi/r0;->i:Loh/n;

    iget-object v3, p0, Lhi/r0;->j:Loh/n;

    invoke-direct {v1, v2, v3}, Lhi/f;-><init>(Loh/n;Loh/n;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    iget-object v2, p0, Lhi/r0;->f:Loh/h;

    invoke-direct {v1, v2}, Loh/G0;-><init>(Loh/h;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r0;->g:Loh/r0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/r0;->h:Lhi/C;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {v1}, Lhi/i;->z(Ljava/lang/Object;)Lhi/i;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V2 AttributeCertificateInfo generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Loh/n;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->j:Loh/n;

    return-void
.end method

.method public e(Lhi/C;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->h:Lhi/C;

    return-void
.end method

.method public f(Lhi/z0;)V
    .locals 0

    invoke-virtual {p1}, Lhi/z0;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p1

    iput-object p1, p0, Lhi/r0;->h:Lhi/C;

    return-void
.end method

.method public g(Lhi/I;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->b:Lhi/I;

    return-void
.end method

.method public h(Lhi/e;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->c:Lhi/e;

    return-void
.end method

.method public i(Loh/r0;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->g:Loh/r0;

    return-void
.end method

.method public j(Loh/s;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->e:Loh/s;

    return-void
.end method

.method public k(Lhi/b;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->d:Lhi/b;

    return-void
.end method

.method public l(Loh/n;)V
    .locals 0

    iput-object p1, p0, Lhi/r0;->i:Loh/n;

    return-void
.end method
