.class public Lth/I;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/G;

.field public final c:Lth/C;

.field public final d:Loh/c;

.field public final e:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lth/G;->y(Ljava/lang/Object;)Lth/G;

    move-result-object v0

    iput-object v0, p0, Lth/I;->b:Lth/G;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lth/C;->w(Ljava/lang/Object;)Lth/C;

    move-result-object v0

    iput-object v0, p0, Lth/I;->c:Lth/C;

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/M;

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-static {v2, v4}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2, v4}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lth/I;->d:Loh/c;

    iput-object v1, p0, Lth/I;->e:Loh/E;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PKIMessage missing PKIBody structure"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lth/G;Lth/C;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lth/I;-><init>(Lth/G;Lth/C;Loh/c;[Lth/b;)V

    return-void
.end method

.method public constructor <init>(Lth/G;Lth/C;Loh/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lth/I;-><init>(Lth/G;Lth/C;Loh/c;[Lth/b;)V

    return-void
.end method

.method public constructor <init>(Lth/G;Lth/C;Loh/c;[Lth/b;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/I;->b:Lth/G;

    iput-object p2, p0, Lth/I;->c:Lth/C;

    iput-object p3, p0, Lth/I;->d:Loh/c;

    if-eqz p4, :cond_0

    new-instance p1, Loh/G0;

    invoke-direct {p1, p4}, Loh/G0;-><init>([Loh/g;)V

    :goto_0
    iput-object p1, p0, Lth/I;->e:Loh/E;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private u(Loh/h;ILoh/g;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Loh/K0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {p1, v0}, Loh/h;->a(Loh/g;)V

    :cond_0
    return-void
.end method

.method public static z(Ljava/lang/Object;)Lth/I;
    .locals 1

    instance-of v0, p0, Lth/I;

    if-eqz v0, :cond_0

    check-cast p0, Lth/I;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/I;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/I;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()Loh/c;
    .locals 1

    iget-object v0, p0, Lth/I;->d:Loh/c;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/I;->b:Lth/G;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/I;->c:Lth/C;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lth/I;->d:Loh/c;

    invoke-direct {p0, v0, v1, v2}, Lth/I;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lth/I;->e:Loh/E;

    invoke-direct {p0, v0, v1, v2}, Lth/I;->u(Loh/h;ILoh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lth/C;
    .locals 1

    iget-object v0, p0, Lth/I;->c:Lth/C;

    return-object v0
.end method

.method public x()[Lth/b;
    .locals 4

    iget-object v0, p0, Lth/I;->e:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lth/b;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lth/I;->e:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public y()Lth/G;
    .locals 1

    iget-object v0, p0, Lth/I;->b:Lth/G;

    return-object v0
.end method
