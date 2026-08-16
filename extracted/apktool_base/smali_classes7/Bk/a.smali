.class public LBk/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LBk/a;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/b;->l(Ljava/math/BigInteger;)I

    move-result p1

    iput p1, p0, LBk/a;->b:I

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, LBk/a;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public static v(Ljava/lang/Object;)LBk/a;
    .locals 1

    instance-of v0, p0, LBk/a;

    if-eqz v0, :cond_0

    check-cast p0, LBk/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LBk/a;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-direct {v0, p0}, LBk/a;-><init>(Loh/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/s;

    iget v1, p0, LBk/a;->b:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, LBk/a;->b:I

    return v0
.end method
