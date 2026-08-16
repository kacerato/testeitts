.class public Lwh/m;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Lhi/b;

.field public d:Loh/c;

.field public e:Lhi/b;

.field public f:Loh/y;

.field public g:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;Lhi/b;Loh/c;Lhi/b;Loh/y;Loh/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p6, :cond_0

    iput-object p1, p0, Lwh/m;->b:Lhi/b;

    iput-object p2, p0, Lwh/m;->c:Lhi/b;

    iput-object p3, p0, Lwh/m;->d:Loh/c;

    iput-object p4, p0, Lwh/m;->e:Lhi/b;

    iput-object p5, p0, Lwh/m;->f:Loh/y;

    iput-object p6, p0, Lwh/m;->g:Loh/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'encValue\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/M;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    check-cast v2, Loh/M;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v2

    iput-object v2, p0, Lwh/m;->f:Loh/y;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lwh/m;->e:Lhi/b;

    goto :goto_1

    :cond_2
    invoke-static {v2, v0}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v2

    iput-object v2, p0, Lwh/m;->d:Loh/c;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lwh/m;->c:Lhi/b;

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v2

    iput-object v2, p0, Lwh/m;->b:Lhi/b;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lwh/m;->g:Loh/c;

    return-void
.end method

.method private u(Loh/h;ILoh/g;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lwh/m;
    .locals 1

    instance-of v0, p0, Lwh/m;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/m;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/m;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Lhi/b;
    .locals 1

    iget-object v0, p0, Lwh/m;->e:Lhi/b;

    return-object v0
.end method

.method public B()Lhi/b;
    .locals 1

    iget-object v0, p0, Lwh/m;->c:Lhi/b;

    return-object v0
.end method

.method public C()Loh/y;
    .locals 1

    iget-object v0, p0, Lwh/m;->f:Loh/y;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lwh/m;->b:Lhi/b;

    invoke-direct {p0, v0, v1, v2}, Lwh/m;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lwh/m;->c:Lhi/b;

    invoke-direct {p0, v0, v1, v2}, Lwh/m;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lwh/m;->d:Loh/c;

    invoke-direct {p0, v0, v1, v2}, Lwh/m;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lwh/m;->e:Lhi/b;

    invoke-direct {p0, v0, v1, v2}, Lwh/m;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lwh/m;->f:Loh/y;

    invoke-direct {p0, v0, v1, v2}, Lwh/m;->u(Loh/h;ILoh/g;)V

    iget-object v1, p0, Lwh/m;->g:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/c;
    .locals 1

    iget-object v0, p0, Lwh/m;->d:Loh/c;

    return-object v0
.end method

.method public x()Loh/c;
    .locals 1

    iget-object v0, p0, Lwh/m;->g:Loh/c;

    return-object v0
.end method

.method public z()Lhi/b;
    .locals 1

    iget-object v0, p0, Lwh/m;->b:Lhi/b;

    return-object v0
.end method
