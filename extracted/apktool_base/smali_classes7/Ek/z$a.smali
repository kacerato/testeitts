.class public LEk/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LEk/H;

.field public b:Loh/s;

.field public c:Loh/s;

.field public d:LEk/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/z;
    .locals 5

    new-instance v0, LEk/z;

    iget-object v1, p0, LEk/z$a;->a:LEk/H;

    iget-object v2, p0, LEk/z$a;->b:Loh/s;

    iget-object v3, p0, LEk/z$a;->c:Loh/s;

    iget-object v4, p0, LEk/z$a;->d:LEk/k;

    invoke-direct {v0, v1, v2, v3, v4}, LEk/z;-><init>(LEk/H;Loh/s;Loh/s;LEk/k;)V

    return-object v0
.end method

.method public b(J)LEk/z$a;
    .locals 1

    new-instance v0, Loh/s;

    invoke-direct {v0, p1, p2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LEk/z$a;->c:Loh/s;

    return-object p0
.end method

.method public c(Ljava/math/BigInteger;)LEk/z$a;
    .locals 1

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, LEk/z$a;->c:Loh/s;

    return-object p0
.end method

.method public d(Loh/s;)LEk/z$a;
    .locals 0

    iput-object p1, p0, LEk/z$a;->c:Loh/s;

    return-object p0
.end method

.method public e(LEk/k;)LEk/z$a;
    .locals 0

    iput-object p1, p0, LEk/z$a;->d:LEk/k;

    return-object p0
.end method

.method public f(J)LEk/z$a;
    .locals 1

    new-instance v0, Loh/s;

    invoke-direct {v0, p1, p2}, Loh/s;-><init>(J)V

    iput-object v0, p0, LEk/z$a;->b:Loh/s;

    return-object p0
.end method

.method public g(Ljava/math/BigInteger;)LEk/z$a;
    .locals 1

    new-instance v0, Loh/s;

    invoke-direct {v0, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, LEk/z$a;->b:Loh/s;

    return-object p0
.end method

.method public h(Loh/s;)LEk/z$a;
    .locals 0

    iput-object p1, p0, LEk/z$a;->b:Loh/s;

    return-object p0
.end method

.method public i(LEk/H;)LEk/z$a;
    .locals 0

    iput-object p1, p0, LEk/z$a;->a:LEk/H;

    return-object p0
.end method
