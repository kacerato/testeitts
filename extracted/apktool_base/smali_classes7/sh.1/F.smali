.class public Lsh/F;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lfi/d;

.field public final c:Loh/s;

.field public final d:Lhi/o;

.field public e:Loh/n;

.field public f:Loh/y;

.field public g:Loh/Q;


# direct methods
.method public constructor <init>(Lfi/d;Loh/s;Lhi/o;Loh/n;Loh/y;Loh/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/F;->b:Lfi/d;

    iput-object p2, p0, Lsh/F;->c:Loh/s;

    iput-object p3, p0, Lsh/F;->d:Lhi/o;

    iput-object p4, p0, Lsh/F;->e:Loh/n;

    iput-object p5, p0, Lsh/F;->f:Loh/y;

    iput-object p6, p0, Lsh/F;->g:Loh/Q;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x6

    if-gt v0, v2, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object v0

    iput-object v0, p0, Lsh/F;->b:Lfi/d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lsh/F;->c:Loh/s;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/o;->u(Ljava/lang/Object;)Lhi/o;

    move-result-object v0

    iput-object v0, p0, Lsh/F;->d:Lhi/o;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/n;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lsh/F;->e:Loh/n;

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/y;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, Lsh/F;->f:Loh/y;

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/Q;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/Q;->F(Ljava/lang/Object;)Loh/Q;

    move-result-object p1

    iput-object p1, p0, Lsh/F;->g:Loh/Q;

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lsh/F;
    .locals 1

    instance-of v0, p0, Lsh/F;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/F;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/F;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/F;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/y;
    .locals 1

    iget-object v0, p0, Lsh/F;->f:Loh/y;

    return-object v0
.end method

.method public B()Lhi/o;
    .locals 1

    iget-object v0, p0, Lsh/F;->d:Lhi/o;

    return-object v0
.end method

.method public C()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lsh/F;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public D(Loh/Q;)V
    .locals 0

    iput-object p1, p0, Lsh/F;->g:Loh/Q;

    return-void
.end method

.method public E(Loh/n;)V
    .locals 0

    iput-object p1, p0, Lsh/F;->e:Loh/n;

    return-void
.end method

.method public F(Loh/y;)V
    .locals 0

    iput-object p1, p0, Lsh/F;->f:Loh/y;

    return-void
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lsh/F;->b:Lfi/d;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/F;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/F;->d:Lhi/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/F;->e:Loh/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lsh/F;->f:Loh/y;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lsh/F;->g:Loh/Q;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/M0;
    .locals 2

    iget-object v0, p0, Lsh/F;->g:Loh/Q;

    if-eqz v0, :cond_1

    instance-of v1, v0, Loh/M0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/M0;

    iget-object v1, p0, Lsh/F;->g:Loh/Q;

    invoke-virtual {v1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    check-cast v0, Loh/M0;

    :goto_1
    return-object v0
.end method

.method public v()Loh/Q;
    .locals 1

    iget-object v0, p0, Lsh/F;->g:Loh/Q;

    return-object v0
.end method

.method public x()Loh/n;
    .locals 1

    iget-object v0, p0, Lsh/F;->e:Loh/n;

    return-object v0
.end method

.method public y()Lfi/d;
    .locals 1

    iget-object v0, p0, Lsh/F;->b:Lfi/d;

    return-object v0
.end method

.method public z()[B
    .locals 1

    iget-object v0, p0, Lsh/F;->f:Loh/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
