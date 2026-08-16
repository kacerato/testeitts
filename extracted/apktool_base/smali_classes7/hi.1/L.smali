.class public Lhi/L;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/z;

.field public c:Z

.field public d:Z

.field public e:Lhi/c0;

.field public f:Z

.field public g:Z

.field public h:Loh/E;


# direct methods
.method public constructor <init>(Lhi/z;ZZ)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lhi/L;-><init>(Lhi/z;ZZLhi/c0;ZZ)V

    return-void
.end method

.method public constructor <init>(Lhi/z;ZZLhi/c0;ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/L;->b:Lhi/z;

    iput-boolean p5, p0, Lhi/L;->f:Z

    iput-boolean p6, p0, Lhi/L;->g:Z

    iput-boolean p3, p0, Lhi/L;->d:Z

    iput-boolean p2, p0, Lhi/L;->c:Z

    iput-object p4, p0, Lhi/L;->e:Lhi/c0;

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v1, p1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p1, Loh/K0;

    invoke-static {v2}, Loh/e;->I(Z)Loh/e;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_1
    if-eqz p3, :cond_2

    new-instance p1, Loh/K0;

    const/4 p2, 0x2

    invoke-static {v2}, Loh/e;->I(Z)Loh/e;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance p1, Loh/K0;

    const/4 p2, 0x3

    invoke-direct {p1, v1, p2, p4}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_3
    if-eqz p5, :cond_4

    new-instance p1, Loh/K0;

    const/4 p2, 0x4

    invoke-static {v2}, Loh/e;->I(Z)Loh/e;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_4
    if-eqz p6, :cond_5

    new-instance p1, Loh/K0;

    const/4 p2, 0x5

    invoke-static {v2}, Loh/e;->I(Z)Loh/e;

    move-result-object p3

    invoke-direct {p1, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_5
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lhi/L;->h:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/L;->h:Loh/E;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object v2

    invoke-virtual {v2}, Loh/e;->J()Z

    move-result v2

    iput-boolean v2, p0, Lhi/L;->g:Z

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in IssuingDistributionPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object v2

    invoke-virtual {v2}, Loh/e;->J()Z

    move-result v2

    iput-boolean v2, p0, Lhi/L;->f:Z

    goto :goto_1

    :cond_2
    new-instance v3, Lhi/c0;

    invoke-static {v2, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v2

    invoke-direct {v3, v2}, Lhi/c0;-><init>(Loh/c;)V

    iput-object v3, p0, Lhi/L;->e:Lhi/c0;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object v2

    invoke-virtual {v2}, Loh/e;->J()Z

    move-result v2

    iput-boolean v2, p0, Lhi/L;->d:Z

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Loh/e;->H(Loh/M;Z)Loh/e;

    move-result-object v2

    invoke-virtual {v2}, Loh/e;->J()Z

    move-result v2

    iput-boolean v2, p0, Lhi/L;->c:Z

    goto :goto_1

    :cond_5
    invoke-static {v2, v4}, Lhi/z;->w(Loh/M;Z)Lhi/z;

    move-result-object v2

    iput-object v2, p0, Lhi/L;->b:Lhi/z;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lhi/L;
    .locals 1

    instance-of v0, p0, Lhi/L;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/L;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/L;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/L;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static z(Loh/M;Z)Lhi/L;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/L;->y(Ljava/lang/Object;)Lhi/L;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/c0;
    .locals 1

    iget-object v0, p0, Lhi/L;->e:Lhi/c0;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lhi/L;->f:Z

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lhi/L;->g:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lhi/L;->d:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lhi/L;->c:Z

    return v0
.end method

.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/L;->h:Loh/E;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "IssuingDistributionPoint: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lhi/L;->b:Lhi/z;

    if-eqz v2, :cond_0

    const-string v3, "distributionPoint"

    invoke-virtual {v2}, Lhi/z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lhi/L;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, p0, Lhi/L;->c:Z

    if-eqz v2, :cond_1

    const-string v3, "onlyContainsUserCerts"

    invoke-virtual {p0, v2}, Lhi/L;->v(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lhi/L;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v2, p0, Lhi/L;->d:Z

    if-eqz v2, :cond_2

    const-string v3, "onlyContainsCACerts"

    invoke-virtual {p0, v2}, Lhi/L;->v(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lhi/L;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lhi/L;->e:Lhi/c0;

    if-eqz v2, :cond_3

    const-string v3, "onlySomeReasons"

    invoke-virtual {v2}, Loh/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lhi/L;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v2, p0, Lhi/L;->g:Z

    if-eqz v2, :cond_4

    const-string v3, "onlyContainsAttributeCerts"

    invoke-virtual {p0, v2}, Lhi/L;->v(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lhi/L;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v2, p0, Lhi/L;->f:Z

    if-eqz v2, :cond_5

    const-string v3, "indirectCRL"

    invoke-virtual {p0, v2}, Lhi/L;->v(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v3, v2}, Lhi/L;->u(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    return-object p1
.end method

.method public x()Lhi/z;
    .locals 1

    iget-object v0, p0, Lhi/L;->b:Lhi/z;

    return-object v0
.end method
