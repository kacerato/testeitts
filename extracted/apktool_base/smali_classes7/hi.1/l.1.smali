.class public Lhi/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/e;

.field public c:Loh/s;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Loh/e;->I(Z)Loh/e;

    move-result-object v0

    iput-object v0, p0, Lhi/l;->b:Loh/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/l;->c:Loh/s;

    const/4 v0, 0x1

    invoke-static {v0}, Loh/e;->I(Z)Loh/e;

    move-result-object v0

    iput-object v0, p0, Lhi/l;->b:Loh/e;

    new-instance v0, Loh/s;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lhi/l;->c:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Loh/e;->I(Z)Loh/e;

    move-result-object v1

    iput-object v1, p0, Lhi/l;->b:Loh/e;

    const/4 v1, 0x0

    iput-object v1, p0, Lhi/l;->c:Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Lhi/l;->b:Loh/e;

    iput-object v1, p0, Lhi/l;->c:Loh/s;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/e;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v0

    iput-object v0, p0, Lhi/l;->b:Loh/e;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lhi/l;->b:Loh/e;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lhi/l;->c:Loh/s;

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lhi/l;->b:Loh/e;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lhi/l;->c:Loh/s;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong sequence in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Loh/e;->I(Z)Loh/e;

    move-result-object v0

    iput-object v0, p0, Lhi/l;->b:Loh/e;

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/l;->c:Loh/s;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p1}, Loh/e;->I(Z)Loh/e;

    move-result-object p1

    iput-object p1, p0, Lhi/l;->b:Loh/e;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lhi/l;->b:Loh/e;

    :goto_0
    iput-object v0, p0, Lhi/l;->c:Loh/s;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/l;
    .locals 1

    sget-object v0, Lhi/B;->k:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lhi/l;
    .locals 1

    instance-of v0, p0, Lhi/l;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/l;

    return-object p0

    :cond_0
    instance-of v0, p0, Lhi/y0;

    if-eqz v0, :cond_1

    check-cast p0, Lhi/y0;

    invoke-static {p0}, Lhi/y0;->a(Lhi/y0;)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lhi/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/l;-><init>(Loh/E;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/l;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/l;->v(Ljava/lang/Object;)Lhi/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/l;->b:Loh/e;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/l;->c:Loh/s;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lhi/l;->c:Loh/s;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhi/l;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lhi/l;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhi/l;->c:Loh/s;

    invoke-virtual {v1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/l;->c:Loh/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/l;->c:Loh/s;

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lhi/l;->b:Loh/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/e;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
