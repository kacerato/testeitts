.class public Lli/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/i0$b;

.field public b:Lhi/F;


# direct methods
.method public constructor <init>(Lhi/i0$b;ZLhi/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli/f;->a:Lhi/i0$b;

    iput-object p3, p0, Lli/f;->b:Lhi/F;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lhi/i0$b;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lhi/i0$b;->u()Lhi/C;

    move-result-object p1

    sget-object p2, Lhi/B;->r:Loh/x;

    invoke-virtual {p1, p2}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object p1

    iput-object p1, p0, Lli/f;->b:Lhi/F;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lhi/F;
    .locals 1

    iget-object v0, p0, Lli/f;->b:Lhi/F;

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    invoke-static {v0}, Lli/c;->l(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    invoke-static {v0}, Lli/c;->m(Lhi/C;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Lhi/C;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->u()Lhi/C;

    move-result-object v0

    invoke-static {v0}, Lli/c;->n(Lhi/C;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->x()Lhi/o0;

    move-result-object v0

    invoke-virtual {v0}, Lhi/o0;->u()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->y()Loh/s;

    move-result-object v0

    invoke-virtual {v0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lli/f;->a:Lhi/i0$b;

    invoke-virtual {v0}, Lhi/i0$b;->z()Z

    move-result v0

    return v0
.end method
