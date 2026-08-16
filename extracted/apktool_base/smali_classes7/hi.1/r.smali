.class public Lhi/r;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/i0;

.field public c:Lhi/b;

.field public d:Loh/c;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhi/r;->e:Z

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/i0;->v(Ljava/lang/Object;)Lhi/i0;

    move-result-object v0

    iput-object v0, p0, Lhi/r;->b:Lhi/i0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lhi/r;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/r;->d:Loh/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for CertificateList"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lhi/r;
    .locals 1

    instance-of v0, p0, Lhi/r;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/r;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/r;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/r;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lhi/r;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()[Lhi/i0$b;
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0}, Lhi/i0;->A()[Lhi/i0$b;

    move-result-object v0

    return-object v0
.end method

.method public B()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/r;->d:Loh/c;

    return-object v0
.end method

.method public C()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/r;->c:Lhi/b;

    return-object v0
.end method

.method public D()Lhi/i0;
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    return-object v0
.end method

.method public E()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0}, Lhi/i0;->C()Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0}, Lhi/i0;->E()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lhi/r;->e:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Loh/v;->hashCode()I

    move-result v0

    iput v0, p0, Lhi/r;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhi/r;->e:Z

    :cond_0
    iget v0, p0, Lhi/r;->f:I

    return v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/r;->d:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0}, Lhi/i0;->x()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public y()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0}, Lhi/i0;->y()Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lhi/r;->b:Lhi/i0;

    invoke-virtual {v0}, Lhi/i0;->z()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method
