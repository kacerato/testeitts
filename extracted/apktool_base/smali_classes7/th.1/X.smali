.class public Lth/X;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/b;

.field public final c:Lth/b;

.field public final d:Lth/b;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_3

    invoke-virtual {p1}, Loh/E;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lth/b;->u(Ljava/lang/Object;)Lth/b;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Loh/M;->p(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4, v1}, Lth/b;->v(Loh/M;Z)Lth/b;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Loh/M;->p(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4, v1}, Lth/b;->v(Loh/M;Z)Lth/b;

    move-result-object v3

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lth/X;->b:Lth/b;

    iput-object v2, p0, Lth/X;->c:Lth/b;

    iput-object v3, p0, Lth/X;->d:Lth/b;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence of 1 to 3 elements only"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lth/b;Lth/b;Lth/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lth/X;->b:Lth/b;

    iput-object p2, p0, Lth/X;->c:Lth/b;

    iput-object p3, p0, Lth/X;->d:Lth/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'newWithNew\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Ljava/lang/Object;)Lth/X;
    .locals 1

    instance-of v0, p0, Lth/X;

    if-eqz v0, :cond_0

    check-cast p0, Lth/X;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/X;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/X;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/X;->b:Lth/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/X;->c:Lth/b;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/X;->d:Lth/b;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/X;->b:Lth/b;

    return-object v0
.end method

.method public x()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/X;->c:Lth/b;

    return-object v0
.end method

.method public y()Lth/b;
    .locals 1

    iget-object v0, p0, Lth/X;->d:Lth/b;

    return-object v0
.end method
