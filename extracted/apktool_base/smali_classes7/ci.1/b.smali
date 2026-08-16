.class public Lci/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:Luh/c;

.field public final d:Loh/E;

.field public final e:Luh/o;


# direct methods
.method public constructor <init>(Lhi/b;Luh/c;[Lci/i;Luh/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lci/b;->b:Lhi/b;

    iput-object p2, p0, Lci/b;->c:Luh/c;

    if-eqz p3, :cond_0

    new-instance p1, Loh/G0;

    invoke-direct {p1, p3}, Loh/G0;-><init>([Loh/g;)V

    :goto_0
    iput-object p1, p0, Lci/b;->d:Loh/E;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iput-object p4, p0, Lci/b;->e:Luh/o;

    return-void
.end method

.method public constructor <init>(Lhi/b;[Lci/i;Luh/o;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lci/b;-><init>(Lhi/b;Luh/c;[Lci/i;Luh/o;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v3

    move v5, v2

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v6

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_4

    invoke-virtual {p1, v5}, Loh/E;->I(I)Loh/g;

    move-result-object v6

    instance-of v7, v6, Loh/M;

    if-eqz v7, :cond_3

    invoke-static {v6}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v6

    invoke-virtual {v6}, Loh/M;->g()I

    move-result v7

    if-eqz v7, :cond_2

    if-eq v7, v1, :cond_1

    const/4 v4, 0x2

    if-ne v7, v4, :cond_0

    invoke-static {v6, v2}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid tag no in constructor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v6, v2}, Luh/c;->w(Loh/M;Z)Luh/c;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v6, v2}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v0

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lci/b;->b:Lhi/b;

    iput-object v3, p0, Lci/b;->c:Luh/c;

    iput-object v4, p0, Lci/b;->d:Loh/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    iput-object p1, p0, Lci/b;->e:Luh/o;

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong sequence size in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Luh/o;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0, v0, p1}, Lci/b;-><init>(Lhi/b;Luh/c;[Lci/i;Luh/o;)V

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lci/b;
    .locals 1

    instance-of v0, p0, Lci/b;

    if-eqz v0, :cond_0

    check-cast p0, Lci/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Luh/o;
    .locals 1

    iget-object v0, p0, Lci/b;->e:Luh/o;

    return-object v0
.end method

.method public B()[B
    .locals 1

    invoke-virtual {p0}, Lci/b;->C()Lci/j;

    move-result-object v0

    invoke-virtual {v0}, Lci/j;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->v()[B

    move-result-object v0

    return-object v0
.end method

.method public final C()Lci/j;
    .locals 3

    iget-object v0, p0, Lci/b;->e:Luh/o;

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    sget-object v1, Luh/l;->n8:Loh/x;

    invoke-virtual {v0, v1}, Loh/B;->A(Loh/B;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lci/b;->e:Luh/o;

    invoke-virtual {v0}, Luh/o;->u()Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/V;->B(Ljava/lang/Object;)Luh/V;

    move-result-object v0

    invoke-virtual {v0}, Luh/V;->A()Luh/o;

    move-result-object v1

    invoke-virtual {v1}, Luh/o;->v()Loh/x;

    move-result-object v1

    sget-object v2, LXh/t;->z2:Loh/x;

    invoke-virtual {v1, v2}, Loh/B;->A(Loh/B;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Luh/V;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->u()Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lci/j;->y(Ljava/lang/Object;)Lci/j;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot parse time stamp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot identify algorithm identifier for digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lci/b;->b:Lhi/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lci/b;->c:Luh/c;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lci/b;->d:Loh/E;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lci/b;->e:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Lci/b;->b:Lhi/b;

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lci/b;->b:Lhi/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lci/b;->C()Lci/j;

    move-result-object v0

    invoke-virtual {v0}, Lci/j;->z()Lci/h;

    move-result-object v0

    invoke-virtual {v0}, Lci/h;->u()Lhi/b;

    move-result-object v0

    return-object v0
.end method

.method public x()Lci/i;
    .locals 2

    iget-object v0, p0, Lci/b;->d:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lci/i;->v(Ljava/lang/Object;)Lci/i;

    move-result-object v0

    return-object v0
.end method

.method public z()[Lci/i;
    .locals 4

    iget-object v0, p0, Lci/b;->d:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lci/i;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lci/b;->d:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lci/i;->v(Ljava/lang/Object;)Lci/i;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
