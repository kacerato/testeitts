.class public LEk/e;
.super Loh/j;
.source "SourceFile"


# static fields
.field public static final f:LEk/e;

.field public static final g:LEk/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEk/e;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, LEk/e;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, LEk/e;->f:LEk/e;

    new-instance v0, LEk/e;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, LEk/e;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, LEk/e;->g:LEk/e;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Loh/j;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, LEk/e;->M()V

    return-void
.end method

.method public constructor <init>(Loh/j;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LEk/e;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static N(Ljava/lang/Object;)LEk/e;
    .locals 1

    instance-of v0, p0, LEk/e;

    if-eqz v0, :cond_0

    check-cast p0, LEk/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/e;

    invoke-static {p0}, Loh/j;->F(Ljava/lang/Object;)Loh/j;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/e;-><init>(Loh/j;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public M()V
    .locals 3

    invoke-virtual {p0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/util/b;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid enumeration value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loh/j;->H()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
