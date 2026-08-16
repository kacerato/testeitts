.class public LAh/o;
.super LAh/n;
.source "SourceFile"


# static fields
.field public static f:I = 0x1

.field public static g:I = 0x2


# instance fields
.field public b:Loh/x;

.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, LAh/n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LAh/o;->e:I

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, LAh/o;->b:Loh/x;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LAh/p;->v(Ljava/lang/Object;)LAh/p;

    move-result-object v0

    invoke-virtual {v0}, LAh/p;->g()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, LAh/o;->z(LAh/p;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DERTaggedObject :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, LAh/p;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-> not an Iso7816RSAPublicKeyStructure"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, v0}, LAh/o;->A(LAh/p;)V

    goto :goto_0

    :cond_2
    iget p1, p0, LAh/o;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing argument -> not an Iso7816RSAPublicKeyStructure"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LAh/n;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LAh/o;->e:I

    iput-object p1, p0, LAh/o;->b:Loh/x;

    iput-object p2, p0, LAh/o;->c:Ljava/math/BigInteger;

    iput-object p3, p0, LAh/o;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final A(LAh/p;)V
    .locals 3

    iget v0, p0, LAh/o;->e:I

    sget v1, LAh/o;->f:I

    and-int v2, v0, v1

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, LAh/o;->e:I

    invoke-virtual {p1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LAh/o;->c:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modulus already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LAh/o;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, LAh/p;

    const/4 v2, 0x1

    invoke-virtual {p0}, LAh/o;->x()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, LAh/p;

    const/4 v2, 0x2

    invoke-virtual {p0}, LAh/o;->y()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LAh/p;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, LAh/o;->b:Loh/x;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LAh/o;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LAh/o;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final z(LAh/p;)V
    .locals 3

    iget v0, p0, LAh/o;->e:I

    sget v1, LAh/o;->g:I

    and-int v2, v0, v1

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, LAh/o;->e:I

    invoke-virtual {p1}, LAh/p;->x()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LAh/o;->d:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Exponent already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
