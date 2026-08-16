.class public LE2/b$b;
.super LE2/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE2/p<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final a:LE2/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE2/b$b;

    invoke-direct {v0}, LE2/b$b;-><init>()V

    sput-object v0, LE2/b$b;->a:LE2/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LE2/p;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 0

    check-cast p1, Ljava/math/BigInteger;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, LE2/b$b;->f(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Number;)D
    .locals 2

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, LE2/b$b;->g(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic d(Ljava/lang/Number;)I
    .locals 0

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, LE2/b$b;->h(Ljava/math/BigInteger;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic e(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LE2/b$b;->i(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/math/BigInteger;)D
    .locals 2

    invoke-static {p1}, LE2/d;->a(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method public h(Ljava/math/BigInteger;)I
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p1

    return p1
.end method

.method public i(DLjava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 0

    invoke-static {p1, p2, p3}, LE2/c;->o(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
