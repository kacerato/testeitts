.class public Lhi/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lhi/I;

.field public d:Lhi/e;

.field public e:Lhi/b;

.field public f:Loh/s;

.field public g:Lhi/f;

.field public h:Loh/E;

.field public i:Loh/c;

.field public j:Lhi/C;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 5

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/s;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lhi/i;->b:Loh/s;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Loh/s;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    iput-object v2, p0, Lhi/i;->b:Loh/s;

    :goto_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/I;->w(Ljava/lang/Object;)Lhi/I;

    move-result-object v2

    iput-object v2, p0, Lhi/i;->c:Lhi/I;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/e;->u(Ljava/lang/Object;)Lhi/e;

    move-result-object v2

    iput-object v2, p0, Lhi/i;->d:Lhi/e;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lhi/i;->e:Lhi/b;

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v2

    iput-object v2, p0, Lhi/i;->f:Loh/s;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/f;->u(Ljava/lang/Object;)Lhi/f;

    move-result-object v2

    iput-object v2, p0, Lhi/i;->g:Lhi/f;

    add-int/lit8 v2, v0, 0x5

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v2

    iput-object v2, p0, Lhi/i;->h:Loh/E;

    add-int/2addr v0, v1

    :goto_1
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v2, v1, Loh/c;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v1

    iput-object v1, p0, Lhi/i;->i:Loh/c;

    goto :goto_2

    :cond_1
    instance-of v2, v1, Loh/E;

    if-nez v2, :cond_2

    instance-of v1, v1, Lhi/C;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object v1

    iput-object v1, p0, Lhi/i;->j:Lhi/C;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A(Loh/M;Z)Lhi/i;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/i;->z(Ljava/lang/Object;)Lhi/i;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)Lhi/i;
    .locals 1

    instance-of v0, p0, Lhi/i;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Lhi/e;
    .locals 1

    iget-object v0, p0, Lhi/i;->d:Lhi/e;

    return-object v0
.end method

.method public C()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/i;->i:Loh/c;

    return-object v0
.end method

.method public D()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/i;->f:Loh/s;

    return-object v0
.end method

.method public E()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/i;->e:Lhi/b;

    return-object v0
.end method

.method public F()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/i;->b:Loh/s;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/i;->b:Loh/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Loh/s;->J(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lhi/i;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/i;->c:Lhi/I;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i;->d:Lhi/e;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i;->e:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i;->f:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i;->g:Lhi/f;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i;->h:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/i;->i:Loh/c;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/i;->j:Lhi/C;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/f;
    .locals 1

    iget-object v0, p0, Lhi/i;->g:Lhi/f;

    return-object v0
.end method

.method public v()Loh/E;
    .locals 1

    iget-object v0, p0, Lhi/i;->h:Loh/E;

    return-object v0
.end method

.method public x()Lhi/C;
    .locals 1

    iget-object v0, p0, Lhi/i;->j:Lhi/C;

    return-object v0
.end method

.method public y()Lhi/I;
    .locals 1

    iget-object v0, p0, Lhi/i;->c:Lhi/I;

    return-object v0
.end method
