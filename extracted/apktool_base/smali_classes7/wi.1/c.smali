.class public Lwi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, v0}, Lwi/c;-><init>(IZZZ)V

    return-void
.end method

.method public constructor <init>(IZZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput v0, p0, Lwi/c;->a:I

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lwi/c;->a:I

    :goto_0
    if-eqz p3, :cond_1

    iput v0, p0, Lwi/c;->c:I

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lwi/c;->c:I

    :goto_1
    if-eqz p4, :cond_2

    iput v0, p0, Lwi/c;->b:I

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lwi/c;->b:I

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public copy()Lorg/bouncycastle/util/n;
    .locals 2

    new-instance v0, Lwi/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwi/c;-><init>(I)V

    iget v1, p0, Lwi/c;->a:I

    iput v1, v0, Lwi/c;->a:I

    iget v1, p0, Lwi/c;->b:I

    iput v1, v0, Lwi/c;->b:I

    iget v1, p0, Lwi/c;->c:I

    iput v1, v0, Lwi/c;->c:I

    return-object v0
.end method

.method public g(Lvi/d;Lli/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    sget-object v0, Lhi/B;->x:Loh/x;

    invoke-virtual {p1, v0}, Lvi/d;->a(Loh/x;)V

    sget-object v0, Lhi/B;->A:Loh/x;

    invoke-virtual {p1, v0}, Lvi/d;->a(Loh/x;)V

    invoke-virtual {p1}, Lvi/d;->c()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lwi/g;->a(Lli/h;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Lwi/c;->a:I

    invoke-virtual {p0, p1}, Lwi/c;->a(I)I

    move-result p1

    iput p1, p0, Lwi/c;->a:I

    iget p1, p0, Lwi/c;->b:I

    invoke-virtual {p0, p1}, Lwi/c;->a(I)I

    move-result p1

    iput p1, p0, Lwi/c;->b:I

    iget p1, p0, Lwi/c;->c:I

    invoke-virtual {p0, p1}, Lwi/c;->a(I)I

    move-result p1

    iput p1, p0, Lwi/c;->c:I

    invoke-virtual {p2}, Lli/h;->d()Lhi/C;

    move-result-object p1

    invoke-static {p1}, Lhi/V;->u(Lhi/C;)Lhi/V;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lhi/V;->x()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget v3, p0, Lwi/c;->a:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lwi/c;->a:I

    :cond_0
    invoke-virtual {p1}, Lhi/V;->v()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iget v2, p0, Lwi/c;->b:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lwi/c;->b:I

    :cond_1
    invoke-virtual {p2, v0}, Lli/h;->b(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p1

    invoke-virtual {p1}, Loh/s;->O()I

    move-result p1

    iget p2, p0, Lwi/c;->c:I

    if-ge p1, p2, :cond_2

    iput p1, p0, Lwi/c;->c:I

    :cond_2
    return-void
.end method

.method public j(Lorg/bouncycastle/util/n;)V
    .locals 1

    check-cast p1, Lwi/c;

    iget v0, p1, Lwi/c;->a:I

    iput v0, p0, Lwi/c;->a:I

    iget v0, p1, Lwi/c;->b:I

    iput v0, p0, Lwi/c;->b:I

    iget p1, p1, Lwi/c;->c:I

    iput p1, p0, Lwi/c;->c:I

    return-void
.end method
