.class public Lji/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lji/a;

.field public c:Ljava/math/BigInteger;

.field public d:Loh/n;

.field public e:Lfi/b;

.field public f:Ljava/lang/String;

.field public g:Lfi/b;


# direct methods
.method public constructor <init>(Lji/a;Ljava/math/BigInteger;Loh/n;Lfi/b;Ljava/lang/String;Lfi/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lji/b;->b:Lji/a;

    iput-object p3, p0, Lji/b;->d:Loh/n;

    iput-object p5, p0, Lji/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lji/b;->c:Ljava/math/BigInteger;

    iput-object p6, p0, Lji/b;->g:Lfi/b;

    iput-object p4, p0, Lji/b;->e:Lfi/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lji/a;->v(Ljava/lang/Object;)Lji/a;

    move-result-object v0

    iput-object v0, p0, Lji/b;->b:Lji/a;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {v0, v1}, Lfi/b;->v(Loh/M;Z)Lfi/b;

    move-result-object v0

    iput-object v0, p0, Lji/b;->g:Lfi/b;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v3}, Loh/C;->G(Loh/M;Z)Loh/C;

    move-result-object v0

    invoke-virtual {v0}, Loh/C;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lji/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lfi/b;->v(Loh/M;Z)Lfi/b;

    move-result-object v0

    iput-object v0, p0, Lji/b;->e:Lfi/b;

    goto :goto_0

    :cond_3
    invoke-static {v0, v3}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lji/b;->d:Loh/n;

    goto :goto_0

    :cond_4
    invoke-static {v0, v3}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lji/b;->c:Ljava/math/BigInteger;

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Ljava/lang/Object;)Lji/b;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lji/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Lji/b;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lji/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lji/b;

    return-object p0
.end method


# virtual methods
.method public A()Lfi/b;
    .locals 1

    iget-object v0, p0, Lji/b;->g:Lfi/b;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lji/b;->b:Lji/a;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lji/b;->c:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v3, Loh/s;

    iget-object v4, p0, Lji/b;->c:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lji/b;->d:Loh/n;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v4, Loh/K0;

    invoke-direct {v4, v2, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lji/b;->e:Lfi/b;

    if-eqz v1, :cond_2

    new-instance v4, Loh/K0;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lji/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Loh/K0;

    new-instance v4, Loh/F0;

    iget-object v5, p0, Lji/b;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Loh/F0;-><init>(Ljava/lang/String;Z)V

    const/4 v5, 0x3

    invoke-direct {v1, v2, v5, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_3
    iget-object v1, p0, Lji/b;->g:Lfi/b;

    if-eqz v1, :cond_4

    new-instance v2, Loh/K0;

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_4
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/n;
    .locals 1

    iget-object v0, p0, Lji/b;->d:Loh/n;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lji/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lji/b;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public y()Lji/a;
    .locals 1

    iget-object v0, p0, Lji/b;->b:Lji/a;

    return-object v0
.end method

.method public z()Lfi/b;
    .locals 1

    iget-object v0, p0, Lji/b;->e:Lfi/b;

    return-object v0
.end method
