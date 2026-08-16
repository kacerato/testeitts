.class public Lyh/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/s;

.field public d:Loh/s;

.field public e:Loh/s;

.field public f:Loh/s;

.field public g:Loh/s;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lyh/c;->d:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyh/c;->e:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyh/c;->b:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p4}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyh/c;->c:Loh/s;

    new-instance p1, Loh/s;

    int-to-long p2, p5

    invoke-direct {p1, p2, p3}, Loh/s;-><init>(J)V

    iput-object p1, p0, Lyh/c;->f:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p6}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lyh/c;->g:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Lyh/c;->d:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Lyh/c;->e:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Lyh/c;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Lyh/c;->c:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Lyh/c;->f:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/s;

    iput-object p1, p0, Lyh/c;->g:Loh/s;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lyh/c;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lyh/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Lyh/c;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Lyh/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GOST3410Parameter: "

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
    check-cast p0, Lyh/c;

    return-object p0
.end method

.method public static w(Loh/M;Z)Lyh/c;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lyh/c;->v(Ljava/lang/Object;)Lyh/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lyh/c;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/c;->e:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/c;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/c;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/c;->f:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/c;->g:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lyh/c;->d:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lyh/c;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lyh/c;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
