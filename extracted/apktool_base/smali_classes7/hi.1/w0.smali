.class public Lhi/w0;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Lhi/E0;
.implements LXh/t;


# instance fields
.field public b:Loh/E;

.field public c:Lhi/k0;

.field public d:Lhi/b;

.field public e:Loh/c;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/w0;->b:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/k0;->w(Ljava/lang/Object;)Lhi/k0;

    move-result-object v0

    iput-object v0, p0, Lhi/w0;->c:Lhi/k0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lhi/w0;->d:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/w0;->e:Loh/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Lhi/w0;
    .locals 1

    instance-of v0, p0, Lhi/w0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/w0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/w0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/w0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/w0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/w0;->v(Ljava/lang/Object;)Lhi/w0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/w0;->d:Lhi/b;

    return-object v0
.end method

.method public B()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->C()Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public C()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->D()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public D()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->E()Lhi/h0;

    move-result-object v0

    return-object v0
.end method

.method public E()Lhi/k0;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    return-object v0
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->G()I

    move-result v0

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/w0;->b:Loh/E;

    return-object v0
.end method

.method public u()Lhi/o0;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->u()Lhi/o0;

    move-result-object v0

    return-object v0
.end method

.method public x()Lfi/d;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->y()Lfi/d;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/w0;->c:Lhi/k0;

    invoke-virtual {v0}, Lhi/k0;->A()Loh/s;

    move-result-object v0

    return-object v0
.end method

.method public z()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/w0;->e:Loh/c;

    return-object v0
.end method
