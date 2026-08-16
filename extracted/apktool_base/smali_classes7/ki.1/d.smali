.class public Lki/d;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/s;

.field public final c:Loh/s;

.field public final d:Loh/s;

.field public final e:Loh/s;

.field public final f:Lki/h;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lki/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lki/d;->b:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lki/d;->c:Loh/s;

    new-instance p1, Loh/s;

    invoke-direct {p1, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lki/d;->d:Loh/s;

    if-eqz p4, :cond_0

    new-instance p1, Loh/s;

    invoke-direct {p1, p4}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p1, p0, Lki/d;->e:Loh/s;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-object p5, p0, Lki/d;->f:Lki/h;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'q\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'g\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'p\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lki/d;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lki/d;->c:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lki/d;->d:Loh/s;

    invoke-static {p1}, Lki/d;->y(Ljava/util/Enumeration;)Loh/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Loh/s;

    if-eqz v2, :cond_0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lki/d;->e:Loh/s;

    invoke-static {p1}, Lki/d;->y(Ljava/util/Enumeration;)Loh/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lki/d;->e:Loh/s;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lki/h;->u(Ljava/lang/Object;)Lki/h;

    move-result-object p1

    iput-object p1, p0, Lki/d;->f:Lki/h;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lki/d;->f:Lki/h;

    :goto_1
    return-void

    :cond_2
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

.method public static v(Ljava/lang/Object;)Lki/d;
    .locals 1

    instance-of v0, p0, Lki/d;

    if-eqz v0, :cond_0

    check-cast p0, Lki/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lki/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lki/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lki/d;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lki/d;->v(Ljava/lang/Object;)Lki/d;

    move-result-object p0

    return-object p0
.end method

.method private static y(Ljava/util/Enumeration;)Loh/g;
    .locals 1

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Loh/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/d;->d:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public B()Lki/h;
    .locals 1

    iget-object v0, p0, Lki/d;->f:Lki/h;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lki/d;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/d;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/d;->d:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/d;->e:Loh/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lki/d;->f:Lki/h;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/d;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/d;->e:Loh/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/d;->b:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
