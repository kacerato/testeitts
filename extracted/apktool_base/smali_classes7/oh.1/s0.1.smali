.class public Loh/s0;
.super Loh/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Loh/G0;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Loh/k;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 0

    .line 1
    invoke-static {p1}, Loh/u0;->a(Loh/h;)Loh/G0;

    move-result-object p1

    invoke-direct {p0, p1}, Loh/s0;-><init>(Loh/G0;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/s;Loh/B;ILoh/B;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Loh/k;-><init>(Loh/x;Loh/s;Loh/B;ILoh/B;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/s;Loh/B;Loh/K0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Loh/k;-><init>(Loh/x;Loh/s;Loh/B;Loh/K0;)V

    return-void
.end method


# virtual methods
.method public C()Loh/B;
    .locals 0

    return-object p0
.end method

.method public D()Loh/B;
    .locals 0

    return-object p0
.end method

.method public E()Loh/E;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Loh/k;->b:Loh/x;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Loh/k;->c:Loh/s;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Loh/k;->d:Loh/B;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Loh/B;->C()Loh/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/K0;

    iget v2, p0, Loh/k;->e:I

    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Loh/k;->f:Loh/B;

    invoke-direct {v1, v3, v2, v4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method
