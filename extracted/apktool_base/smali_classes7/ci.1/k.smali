.class public Lci/k;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lci/h;

.field public d:Loh/x;

.field public e:Loh/s;

.field public f:Loh/e;

.field public g:Lhi/C;


# direct methods
.method public constructor <init>(Lci/h;Loh/x;Loh/s;Loh/e;Lhi/C;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lci/k;->b:Loh/s;

    iput-object p1, p0, Lci/k;->c:Lci/h;

    iput-object p2, p0, Lci/k;->d:Loh/x;

    iput-object p3, p0, Lci/k;->e:Loh/s;

    iput-object p4, p0, Lci/k;->f:Loh/e;

    iput-object p5, p0, Lci/k;->g:Lhi/C;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    iput-object v2, p0, Lci/k;->b:Loh/s;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lci/h;->w(Ljava/lang/Object;)Lci/h;

    move-result-object v2

    iput-object v2, p0, Lci/k;->c:Lci/h;

    const/4 v2, 0x2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v4, v4, Loh/x;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lci/k;->d:Loh/x;

    invoke-virtual {p0, v4, v3, v2}, Lci/k;->u(Ljava/lang/Object;II)V

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v4

    iput-object v4, p0, Lci/k;->d:Loh/x;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v4, v4, Loh/s;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lci/k;->e:Loh/s;

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5}, Lci/k;->u(Ljava/lang/Object;II)V

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v4

    iput-object v4, p0, Lci/k;->e:Loh/s;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v4, v4, Loh/e;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lci/k;->f:Loh/e;

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v3, v5}, Lci/k;->u(Ljava/lang/Object;II)V

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    invoke-static {v4}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v4

    iput-object v4, p0, Lci/k;->f:Loh/e;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    instance-of v4, v4, Loh/M;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lci/k;->g:Lhi/C;

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v3, v5}, Lci/k;->u(Ljava/lang/Object;II)V

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v4

    check-cast v4, Loh/M;

    invoke-virtual {v4}, Loh/M;->g()I

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4, v1}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object v4

    iput-object v4, p0, Lci/k;->g:Lhi/C;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unidentified structure in sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lci/k;
    .locals 1

    instance-of v0, p0, Lci/k;

    if-eqz v0, :cond_0

    check-cast p0, Lci/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/k;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/k;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/k;->e:Loh/s;

    return-object v0
.end method

.method public B()Loh/x;
    .locals 1

    iget-object v0, p0, Lci/k;->d:Loh/x;

    return-object v0
.end method

.method public C()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/k;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lci/k;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/k;->c:Lci/h;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/k;->d:Loh/x;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lci/k;->e:Loh/s;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lci/k;->f:Loh/e;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Loh/e;->J()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lci/k;->f:Loh/e;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lci/k;->g:Lhi/C;

    if-eqz v1, :cond_3

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_3
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public final u(Ljava/lang/Object;II)V
    .locals 0

    if-nez p1, :cond_0

    if-gt p2, p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "badly placed optional in sequence"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v()Loh/e;
    .locals 1

    iget-object v0, p0, Lci/k;->f:Loh/e;

    if-nez v0, :cond_0

    sget-object v0, Loh/e;->f:Loh/e;

    :cond_0
    return-object v0
.end method

.method public x()Lhi/C;
    .locals 1

    iget-object v0, p0, Lci/k;->g:Lhi/C;

    return-object v0
.end method

.method public z()Lci/h;
    .locals 1

    iget-object v0, p0, Lci/k;->c:Lci/h;

    return-object v0
.end method
