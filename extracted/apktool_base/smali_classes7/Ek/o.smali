.class public LEk/o;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:Ljava/math/BigInteger;


# instance fields
.field public final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LEk/o;->c:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LEk/o;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, LEk/o;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contributor id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is out of range 0..255"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, LEk/o;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LEk/o;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static v(Ljava/lang/Object;)LEk/o;
    .locals 1

    instance-of v0, p0, LEk/o;

    if-eqz v0, :cond_0

    check-cast p0, LEk/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/o;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/o;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/s;

    iget-object v1, p0, LEk/o;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public u()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LEk/o;->b:Ljava/math/BigInteger;

    return-object v0
.end method
