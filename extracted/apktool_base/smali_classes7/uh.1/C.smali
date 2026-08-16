.class public Luh/C;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/s;

.field public final c:Luh/P;

.field public final d:Lhi/b;

.field public final e:Loh/y;

.field public final f:Lhi/b;

.field public final g:Loh/s;

.field public final h:Loh/y;

.field public final i:Lhi/b;

.field public final j:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Luh/C;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Luh/P;->v(Ljava/lang/Object;)Luh/P;

    move-result-object v2

    iput-object v2, p0, Luh/C;->c:Luh/P;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Luh/C;->d:Lhi/b;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    iput-object v1, p0, Luh/C;->e:Loh/y;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Luh/C;->f:Lhi/b;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    iput-object v1, p0, Luh/C;->g:Loh/s;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/M;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    invoke-static {v1, v0}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    iput-object v0, p0, Luh/C;->h:Loh/y;

    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Luh/C;->h:Loh/y;

    :goto_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v1

    iput-object v1, p0, Luh/C;->i:Lhi/b;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, Luh/C;->j:Loh/y;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence must consist of 3 elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Luh/P;Lhi/b;Loh/y;Lhi/b;Loh/s;Loh/y;Lhi/b;Loh/y;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p7, :cond_0

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/C;->b:Loh/s;

    iput-object p1, p0, Luh/C;->c:Luh/P;

    iput-object p2, p0, Luh/C;->d:Lhi/b;

    iput-object p3, p0, Luh/C;->e:Loh/y;

    iput-object p4, p0, Luh/C;->f:Lhi/b;

    iput-object p5, p0, Luh/C;->g:Loh/s;

    iput-object p6, p0, Luh/C;->h:Loh/y;

    iput-object p7, p0, Luh/C;->i:Lhi/b;

    iput-object p8, p0, Luh/C;->j:Loh/y;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "wrap cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "kem cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Luh/C;
    .locals 1

    instance-of v0, p0, Luh/C;

    if-eqz v0, :cond_0

    check-cast p0, Luh/C;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/C;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/C;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Luh/P;
    .locals 1

    iget-object v0, p0, Luh/C;->c:Luh/P;

    return-object v0
.end method

.method public B()[B
    .locals 1

    iget-object v0, p0, Luh/C;->h:Loh/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    return-object v0
.end method

.method public C()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/C;->i:Lhi/b;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Luh/C;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->c:Luh/P;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->e:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->f:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->g:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->h:Loh/y;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/C;->i:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/C;->j:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/C;->j:Loh/y;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/C;->f:Lhi/b;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/C;->d:Lhi/b;

    return-object v0
.end method

.method public z()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/C;->e:Loh/y;

    return-object v0
.end method
