.class public Lyk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyk/f$a;,
        Lyk/f$b;,
        Lyk/f$c;,
        Lyk/f$d;,
        Lyk/f$e;,
        Lyk/f$f;
    }
.end annotation


# static fields
.field public static final a:[Ljava/math/BigInteger;

.field public static final b:[[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "256"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "65536"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "4294967296"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "18446744073709551616"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3}, [Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lyk/f;->a:[Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "-128"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "127"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "-32768"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "32767"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "-2147483648"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "2147483647"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    filled-new-array {v2, v3}, [Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "-9223372036854775808"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "9223372036854775807"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    filled-new-array {v3, v4}, [Ljava/math/BigInteger;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lyk/f;->b:[[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->UTF8_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static B(I)Lyk/f$b;
    .locals 3

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->UTF8_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lyk/f$b;->w(J)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static C(II)Lyk/f$b;
    .locals 3

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->UTF8_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lyk/f$b;->v(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyk/k;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->Switch:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->i(Lyk/k;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static b(J)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->BIT_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0, p1}, Lyk/f$b;->n(J)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->BOOLEAN:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static varargs d([Ljava/lang/Object;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->CHOICE:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->p([Ljava/lang/Object;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lyk/d;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->Supplier:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->k(Lyk/d;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->ENUM_ITEM:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/math/BigInteger;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->ENUM_ITEM:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p1}, Lyk/f$b;->l(Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lyk/f$b;->q(Ljava/lang/String;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([Ljava/lang/Object;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->ENUM:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->p([Ljava/lang/Object;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static varargs i(I[Ljava/lang/Object;)Lyk/f$c;
    .locals 1

    new-instance v0, Lyk/f$c;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lyk/f$c;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static varargs j([Ljava/lang/Object;)Lyk/f$c;
    .locals 2

    new-instance v0, Lyk/f$c;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lyk/f$c;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static k()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->IA5String:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static l()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->INT:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static m(J)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->INT:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    new-instance v1, Loh/s;

    invoke-direct {v1, p0, p1}, Loh/s;-><init>(J)V

    invoke-virtual {v0, v1}, Lyk/f$b;->j(Loh/g;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static n(JJ)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->INT:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lyk/f$b;->v(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static o(JJLoh/g;)Lyk/f$b;
    .locals 6

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->INT:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lyk/f$b;->u(JJLoh/g;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->INT:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0, p1}, Lyk/f$b;->v(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static q()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->NULL:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static r()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->OCTET_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0}, Lyk/f$b;->A()Lyk/f$b;

    move-result-object v0

    return-object v0
.end method

.method public static s(I)Lyk/f$b;
    .locals 3

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->OCTET_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lyk/f$b;->n(J)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static t(II)Lyk/f$b;
    .locals 3

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->OCTET_STRING:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lyk/f$b;->v(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static u()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->OPAQUE:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static varargs v([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lyk/f$f;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lyk/f$f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static w()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static x()Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->SEQ:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    return-object v0
.end method

.method public static varargs y([Ljava/lang/Object;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->SEQ:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->p([Ljava/lang/Object;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static varargs z([Ljava/lang/Object;)Lyk/f$b;
    .locals 2

    new-instance v0, Lyk/f$b;

    sget-object v1, Lyk/f$a;->SEQ_OF:Lyk/f$a;

    invoke-direct {v0, v1}, Lyk/f$b;-><init>(Lyk/f$a;)V

    invoke-virtual {v0, p0}, Lyk/f$b;->p([Ljava/lang/Object;)Lyk/f$b;

    move-result-object p0

    return-object p0
.end method
