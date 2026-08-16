.class public Lhi/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;

.field public c:Lhi/j0;

.field public d:Lhi/b;

.field public e:Loh/c;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/q;->b:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/j0;->w(Ljava/lang/Object;)Lhi/j0;

    move-result-object v0

    iput-object v0, p0, Lhi/q;->c:Lhi/j0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lhi/q;->d:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/q;->e:Loh/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Lhi/q;
    .locals 1

    instance-of v0, p0, Lhi/q;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/q;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/q;->d:Lhi/b;

    return-object v0
.end method

.method public B()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->C()Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public C()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->D()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public D()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->E()Lhi/h0;

    move-result-object v0

    return-object v0
.end method

.method public E()Lhi/j0;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    return-object v0
.end method

.method public F()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->G()Loh/s;

    move-result-object v0

    return-object v0
.end method

.method public G()I
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->H()I

    move-result v0

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/q;->b:Loh/E;

    return-object v0
.end method

.method public u()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->u()Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->y()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/q;->c:Lhi/j0;

    invoke-virtual {v0}, Lhi/j0;->A()Loh/s;

    move-result-object v0

    return-object v0
.end method

.method public z()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/q;->e:Loh/c;

    return-object v0
.end method
