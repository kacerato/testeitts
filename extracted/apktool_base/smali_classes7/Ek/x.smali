.class public LEk/x;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:Ljava/math/BigInteger;

.field public static final d:LEk/x;

.field public static final e:LEk/x;


# instance fields
.field public final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0xff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, LEk/x;->c:Ljava/math/BigInteger;

    new-instance v0, LEk/x;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, LEk/x;-><init>(J)V

    sput-object v0, LEk/x;->d:LEk/x;

    new-instance v0, LEk/x;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, LEk/x;-><init>(J)V

    sput-object v0, LEk/x;->e:LEk/x;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LEk/x;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, LEk/x;->u(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, LEk/x;->b:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LEk/x;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 4
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p0, v0}, LEk/x;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static u(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v0, LEk/x;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value exceeds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value less than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w(Ljava/lang/Object;)LEk/x;
    .locals 1

    instance-of v0, p0, LEk/x;

    if-eqz v0, :cond_0

    check-cast p0, LEk/x;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEk/x;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, LEk/x;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/s;

    iget-object v1, p0, LEk/x;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, LEk/x;->b:Ljava/math/BigInteger;

    return-object v0
.end method
