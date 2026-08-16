.class public final Lcom/google/common/primitives/w;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/google/common/primitives/f;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcom/google/common/primitives/w;",
        ">;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final c:Lcom/google/common/primitives/w;

.field public static final d:Lcom/google/common/primitives/w;

.field public static final e:Lcom/google/common/primitives/w;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/w;->c:Lcom/google/common/primitives/w;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/w;->d:Lcom/google/common/primitives/w;

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/w;->e:Lcom/google/common/primitives/w;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Lcom/google/common/primitives/w;->b:I

    return-void
.end method

.method public static e(I)Lcom/google/common/primitives/w;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/w;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/w;-><init>(I)V

    return-object v0
.end method

.method public static m(J)Lcom/google/common/primitives/w;
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    invoke-static {v0, v1, p0, p1}, Lw2/H;->p(ZLjava/lang/String;J)V

    long-to-int p0, p0

    invoke-static {p0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;)Lcom/google/common/primitives/w;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/w;->q(Ljava/lang/String;I)Lcom/google/common/primitives/w;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;I)Lcom/google/common/primitives/w;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/primitives/x;->k(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/math/BigInteger;)Lcom/google/common/primitives/w;
    .locals 2

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    invoke-static {v0, v1, p0}, Lw2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/w;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/common/primitives/w;)I
    .locals 1

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/x;->b(II)I

    move-result p1

    return p1
.end method

.method public c(Lcom/google/common/primitives/w;)Lcom/google/common/primitives/w;
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/w;

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/x;->d(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/primitives/w;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/w;->b(Lcom/google/common/primitives/w;)I

    move-result p1

    return p1
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/w;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/google/common/primitives/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/primitives/w;

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public floatValue()F
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/w;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public g(Lcom/google/common/primitives/w;)Lcom/google/common/primitives/w;
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/w;

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/common/primitives/w;)Lcom/google/common/primitives/w;
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/w;

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/x;->l(II)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    return v0
.end method

.method public i(Lcom/google/common/primitives/w;)Lcom/google/common/primitives/w;
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/w;

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p1

    return-object p1
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    return v0
.end method

.method public j(Lcom/google/common/primitives/w;)Lcom/google/common/primitives/w;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/primitives/w;

    iget p1, p1, Lcom/google/common/primitives/w;->b:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/w;->e(I)Lcom/google/common/primitives/w;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {v0, p1}, Lcom/google/common/primitives/x;->t(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/w;->b:I

    invoke-static {v0}, Lcom/google/common/primitives/x;->r(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/common/primitives/w;->k(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
