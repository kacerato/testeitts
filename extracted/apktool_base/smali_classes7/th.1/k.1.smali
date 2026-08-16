.class public Lth/k;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lwh/g;

.field public final c:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 1 or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/g;->v(Ljava/lang/Object;)Lwh/g;

    move-result-object v0

    iput-object v0, p0, Lth/k;->b:Lwh/g;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lth/k;->c:Loh/E;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :goto_2
    return-void
.end method

.method public constructor <init>(Lwh/g;Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/k;->b:Lwh/g;

    iput-object p2, p0, Lth/k;->c:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lth/k;
    .locals 1

    instance-of v0, p0, Lth/k;

    if-eqz v0, :cond_0

    check-cast p0, Lth/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/k;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/k;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/k;->b:Lwh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/k;->c:Loh/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lwh/g;
    .locals 1

    iget-object v0, p0, Lth/k;->b:Lwh/g;

    return-object v0
.end method

.method public x()Loh/E;
    .locals 1

    iget-object v0, p0, Lth/k;->c:Loh/E;

    return-object v0
.end method
