.class public Lhi/H;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public b:Lhi/E;

.field public c:Loh/s;

.field public d:Loh/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lhi/H;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lhi/E;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lhi/H;-><init>(Lhi/E;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lhi/E;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/H;->b:Lhi/E;

    if-eqz p3, :cond_0

    new-instance p1, Loh/s;

    invoke-direct {p1, p3}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lhi/H;->d:Loh/s;

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lhi/H;->c:Loh/s;

    goto :goto_1

    :cond_1
    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v1

    iput-object v1, p0, Lhi/H;->b:Lhi/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object v1

    iput-object v1, p0, Lhi/H;->c:Loh/s;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v1

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-static {p1, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lhi/H;->d:Loh/s;

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number for \'maximum\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number for \'minimum\': "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

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

    :cond_3
    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v1

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/M;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {p1, v0}, Loh/s;->G(Loh/M;Z)Loh/s;

    move-result-object p1

    iput-object p1, p0, Lhi/H;->c:Loh/s;

    :cond_6
    :goto_1
    return-void
.end method

.method public static v(Ljava/lang/Object;)Lhi/H;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lhi/H;

    if-eqz v0, :cond_1

    check-cast p0, Lhi/H;

    return-object p0

    :cond_1
    new-instance v0, Lhi/H;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/H;-><init>(Loh/E;)V

    return-object v0
.end method

.method public static w(Loh/M;Z)Lhi/H;
    .locals 1

    new-instance v0, Lhi/H;

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/H;-><init>(Loh/E;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/H;->b:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/H;->c:Loh/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Loh/s;->J(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Loh/K0;

    iget-object v3, p0, Lhi/H;->c:Loh/s;

    invoke-direct {v1, v2, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/H;->d:Loh/s;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/E;
    .locals 1

    iget-object v0, p0, Lhi/H;->b:Lhi/E;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/H;->d:Loh/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lhi/H;->c:Loh/s;

    if-nez v0, :cond_0

    sget-object v0, Lhi/H;->e:Ljava/math/BigInteger;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
