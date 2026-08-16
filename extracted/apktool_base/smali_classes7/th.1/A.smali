.class public Lth/A;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:Lwh/c;

.field public final d:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;Lwh/c;Loh/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/A;->b:Lhi/b;

    iput-object p2, p0, Lth/A;->c:Lwh/c;

    iput-object p3, p0, Lth/A;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(Lhi/b;Lwh/c;[B)V
    .locals 1

    .line 2
    new-instance v0, Loh/r0;

    invoke-direct {v0, p3}, Loh/r0;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Lth/A;-><init>(Lhi/b;Lwh/c;Loh/r0;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object v1

    iput-object v1, p0, Lth/A;->d:Loh/c;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    check-cast v3, Loh/M;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Loh/M;->p(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-static {v3, v5}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5}, Loh/M;->p(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3, v5}, Lwh/c;->v(Loh/M;Z)Lwh/c;

    move-result-object v2

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iput-object v1, p0, Lth/A;->b:Lhi/b;

    iput-object v2, p0, Lth/A;->c:Lwh/c;

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

.method public static z(Ljava/lang/Object;)Lth/A;
    .locals 1

    instance-of v0, p0, Lth/A;

    if-eqz v0, :cond_0

    check-cast p0, Lth/A;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/A;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/A;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    iget-object v2, p0, Lth/A;->b:Lhi/b;

    invoke-direct {p0, v0, v1, v2}, Lth/A;->u(Loh/h;ILoh/g;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lth/A;->c:Lwh/c;

    invoke-direct {p0, v0, v1, v2}, Lth/A;->u(Loh/h;ILoh/g;)V

    iget-object v1, p0, Lth/A;->d:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lwh/c;
    .locals 1

    iget-object v0, p0, Lth/A;->c:Lwh/c;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Lth/A;->b:Lhi/b;

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Lth/A;->d:Loh/c;

    return-object v0
.end method
