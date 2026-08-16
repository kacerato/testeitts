.class public Lki/h;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/c;

.field public c:Loh/s;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v0

    iput-object v0, p0, Lki/h;->b:Loh/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lki/h;->c:Loh/s;

    return-void

    :cond_0
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

.method public constructor <init>(Loh/r0;Loh/s;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Lki/h;->b:Loh/c;

    iput-object p2, p0, Lki/h;->c:Loh/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'pgenCounter\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'seed\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Loh/r0;

    invoke-direct {v0, p1}, Loh/r0;-><init>([B)V

    iput-object v0, p0, Lki/h;->b:Loh/c;

    new-instance p1, Loh/s;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Loh/s;-><init>(J)V

    iput-object p1, p0, Lki/h;->c:Loh/s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'seed\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lki/h;
    .locals 1

    instance-of v0, p0, Lki/h;

    if-eqz v0, :cond_0

    check-cast p0, Lki/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lki/h;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lki/h;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lki/h;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lki/h;->u(Ljava/lang/Object;)Lki/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lki/h;->b:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/h;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lki/h;->c:Loh/s;

    invoke-virtual {v0}, Loh/s;->H()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lki/h;->b:Loh/c;

    invoke-virtual {v0}, Loh/c;->F()[B

    move-result-object v0

    return-object v0
.end method
