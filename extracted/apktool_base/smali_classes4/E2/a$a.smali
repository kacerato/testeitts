.class public LE2/a$a;
.super LE2/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LE2/p<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:LE2/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LE2/a$a;

    invoke-direct {v0}, LE2/a$a;-><init>()V

    sput-object v0, LE2/a$a;->a:LE2/a$a;

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

    check-cast p1, Ljava/math/BigDecimal;

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, p2}, LE2/a$a;->f(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/Number;)D
    .locals 2

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, LE2/a$a;->g(Ljava/math/BigDecimal;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic d(Ljava/lang/Number;)I
    .locals 0

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, LE2/a$a;->h(Ljava/math/BigDecimal;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic e(DLjava/math/RoundingMode;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LE2/a$a;->i(DLjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/math/BigDecimal;)D
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public h(Ljava/math/BigDecimal;)I
    .locals 0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    return p1
.end method

.method public i(DLjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 0

    new-instance p3, Ljava/math/BigDecimal;

    invoke-direct {p3, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p3
.end method
