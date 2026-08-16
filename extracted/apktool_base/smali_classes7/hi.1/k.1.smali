.class public Lhi/k;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/y;

.field public c:Lhi/F;

.field public d:Loh/s;


# direct methods
.method public constructor <init>(Lhi/F;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lhi/k;-><init>([BLhi/F;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lhi/k;-><init>(Lhi/h0;Lhi/F;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lhi/h0;Lhi/F;Ljava/math/BigInteger;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/k;->b:Loh/y;

    iput-object v0, p0, Lhi/k;->c:Lhi/F;

    iput-object v0, p0, Lhi/k;->d:Loh/s;

    new-instance v1, LIi/J;

    invoke-direct {v1}, LIi/J;-><init>()V

    invoke-interface {v1}, LBi/y;->f()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->F()[B

    move-result-object p1

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v1, p1, v4, v3}, LBi/y;->update([BII)V

    invoke-interface {v1, v2, v4}, LBi/y;->c([BI)I

    new-instance p1, Loh/C0;

    invoke-direct {p1, v2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, Lhi/k;->b:Loh/y;

    iput-object p2, p0, Lhi/k;->c:Lhi/F;

    if-eqz p3, :cond_0

    new-instance v0, Loh/s;

    invoke-direct {v0, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    :cond_0
    iput-object v0, p0, Lhi/k;->d:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/k;->b:Loh/y;

    iput-object v0, p0, Lhi/k;->c:Lhi/F;

    iput-object v0, p0, Lhi/k;->d:Loh/s;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lhi/k;->d:Loh/s;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v2}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v0

    iput-object v0, p0, Lhi/k;->c:Lhi/F;

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Lhi/k;->b:Loh/y;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lhi/k;-><init>([BLhi/F;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([BLhi/F;Ljava/math/BigInteger;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/k;->b:Loh/y;

    iput-object v0, p0, Lhi/k;->c:Lhi/F;

    iput-object v0, p0, Lhi/k;->d:Loh/s;

    if-eqz p1, :cond_0

    new-instance v1, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Loh/C0;-><init>([B)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lhi/k;->b:Loh/y;

    iput-object p2, p0, Lhi/k;->c:Lhi/F;

    if-eqz p3, :cond_1

    new-instance v0, Loh/s;

    invoke-direct {v0, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    :cond_1
    iput-object v0, p0, Lhi/k;->d:Loh/s;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/k;
    .locals 1

    sget-object v0, Lhi/B;->w:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/k;->y(Ljava/lang/Object;)Lhi/k;

    move-result-object p0

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lhi/k;
    .locals 1

    instance-of v0, p0, Lhi/k;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/k;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/k;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lhi/k;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/k;->y(Ljava/lang/Object;)Lhi/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()[B
    .locals 1

    iget-object v0, p0, Lhi/k;->b:Loh/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/k;->b:Loh/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/k;->c:Lhi/F;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/k;->d:Loh/s;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lhi/k;->b:Loh/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lem/h;->j([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthorityKeyIdentifier: KeyID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/k;->c:Lhi/F;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/k;->d:Loh/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
