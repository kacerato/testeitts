.class public Lci/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Loh/x;

.field public d:Lci/h;

.field public e:Loh/s;

.field public f:Loh/n;

.field public g:Lci/a;

.field public h:Loh/e;

.field public i:Loh/s;

.field public j:Lhi/E;

.field public k:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lci/j;->b:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lci/j;->c:Loh/x;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lci/h;->w(Ljava/lang/Object;)Lci/h;

    move-result-object v0

    iput-object v0, p0, Lci/j;->d:Lci/h;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lci/j;->e:Loh/s;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lci/j;->f:Loh/n;

    const/4 v0, 0x0

    invoke-static {v0}, Loh/e;->I(Z)Loh/e;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lci/j;->h:Loh/e;

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/v;

    instance-of v2, v1, Loh/M;

    if-eqz v2, :cond_3

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Lhi/C;->D(Loh/M;Z)Lhi/C;

    move-result-object v1

    iput-object v1, p0, Lci/j;->k:Lhi/C;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1, v3}, Lhi/E;->w(Loh/M;Z)Lhi/E;

    move-result-object v1

    iput-object v1, p0, Lci/j;->j:Lhi/E;

    goto :goto_1

    :cond_3
    instance-of v2, v1, Loh/E;

    if-nez v2, :cond_6

    instance-of v2, v1, Lci/a;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    instance-of v2, v1, Loh/e;

    if-eqz v2, :cond_5

    invoke-static {v1}, Loh/e;->G(Ljava/lang/Object;)Loh/e;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v2, v1, Loh/s;

    if-eqz v2, :cond_0

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Lci/j;->i:Loh/s;

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v1}, Lci/a;->u(Ljava/lang/Object;)Lci/a;

    move-result-object v1

    iput-object v1, p0, Lci/j;->g:Lci/a;

    goto :goto_1

    :cond_7
    return-void
.end method

.method public constructor <init>(Loh/x;Lci/h;Loh/s;Loh/n;Lci/a;Loh/e;Loh/s;Lhi/E;Lhi/C;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Lci/j;->b:Loh/s;

    iput-object p1, p0, Lci/j;->c:Loh/x;

    iput-object p2, p0, Lci/j;->d:Lci/h;

    iput-object p3, p0, Lci/j;->e:Loh/s;

    iput-object p4, p0, Lci/j;->f:Loh/n;

    iput-object p5, p0, Lci/j;->g:Lci/a;

    iput-object p6, p0, Lci/j;->h:Loh/e;

    iput-object p7, p0, Lci/j;->i:Loh/s;

    iput-object p8, p0, Lci/j;->j:Lhi/E;

    iput-object p9, p0, Lci/j;->k:Lhi/C;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lci/j;
    .locals 1

    instance-of v0, p0, Lci/j;

    if-eqz v0, :cond_0

    check-cast p0, Lci/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/j;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/j;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/j;->i:Loh/s;

    return-object v0
.end method

.method public B()Loh/e;
    .locals 1

    iget-object v0, p0, Lci/j;->h:Loh/e;

    return-object v0
.end method

.method public C()Loh/x;
    .locals 1

    iget-object v0, p0, Lci/j;->c:Loh/x;

    return-object v0
.end method

.method public D()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/j;->e:Loh/s;

    return-object v0
.end method

.method public E()Lhi/E;
    .locals 1

    iget-object v0, p0, Lci/j;->j:Lhi/E;

    return-object v0
.end method

.method public F()Loh/s;
    .locals 1

    iget-object v0, p0, Lci/j;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lci/j;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/j;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/j;->d:Lci/h;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/j;->e:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/j;->f:Loh/n;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/j;->g:Lci/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lci/j;->h:Loh/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Loh/e;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lci/j;->h:Loh/e;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lci/j;->i:Loh/s;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    iget-object v1, p0, Lci/j;->j:Lhi/E;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    new-instance v4, Loh/K0;

    invoke-direct {v4, v3, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_3
    iget-object v1, p0, Lci/j;->k:Lhi/C;

    if-eqz v1, :cond_4

    new-instance v4, Loh/K0;

    invoke-direct {v4, v2, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v4}, Loh/h;->a(Loh/g;)V

    :cond_4
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lci/a;
    .locals 1

    iget-object v0, p0, Lci/j;->g:Lci/a;

    return-object v0
.end method

.method public v()Lhi/C;
    .locals 1

    iget-object v0, p0, Lci/j;->k:Lhi/C;

    return-object v0
.end method

.method public x()Loh/n;
    .locals 1

    iget-object v0, p0, Lci/j;->f:Loh/n;

    return-object v0
.end method

.method public z()Lci/h;
    .locals 1

    iget-object v0, p0, Lci/j;->d:Lci/h;

    return-object v0
.end method
