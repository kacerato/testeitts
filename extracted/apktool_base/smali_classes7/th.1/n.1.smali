.class public Lth/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lth/i;

.field public c:Lwh/l;

.field public d:Lwh/p;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lth/i;->w(Ljava/lang/Object;)Lth/i;

    move-result-object v0

    iput-object v0, p0, Lth/n;->b:Lth/i;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1, v3}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    if-nez v0, :cond_1

    invoke-static {p1}, Lwh/l;->u(Ljava/lang/Object;)Lwh/l;

    move-result-object p1

    iput-object p1, p0, Lth/n;->c:Lwh/l;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0, v3}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    invoke-static {v0}, Lwh/l;->u(Ljava/lang/Object;)Lwh/l;

    move-result-object v0

    iput-object v0, p0, Lth/n;->c:Lwh/l;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1, v3}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p1

    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lwh/p;->v(Ljava/lang/Object;)Lwh/p;

    move-result-object p1

    iput-object p1, p0, Lth/n;->d:Lwh/p;

    :cond_2
    :goto_0
    return-void
.end method

.method public constructor <init>(Lth/i;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Lth/n;-><init>(Lth/i;Lwh/l;Lwh/p;)V

    return-void
.end method

.method public constructor <init>(Lth/i;Lwh/l;Lwh/p;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lth/n;->b:Lth/i;

    iput-object p2, p0, Lth/n;->c:Lwh/l;

    iput-object p3, p0, Lth/n;->d:Lwh/p;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certOrEncCert\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lth/i;Lwh/m;Lwh/p;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lth/n;->b:Lth/i;

    if-eqz p2, :cond_0

    new-instance p1, Lwh/l;

    invoke-direct {p1, p2}, Lwh/l;-><init>(Lwh/m;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lth/n;->c:Lwh/l;

    iput-object p3, p0, Lth/n;->d:Lwh/p;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certOrEncCert\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Ljava/lang/Object;)Lth/n;
    .locals 1

    instance-of v0, p0, Lth/n;

    if-eqz v0, :cond_0

    check-cast p0, Lth/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/n;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lth/n;->b:Lth/i;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/n;->c:Lwh/l;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lth/n;->d:Lwh/p;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lth/i;
    .locals 1

    iget-object v0, p0, Lth/n;->b:Lth/i;

    return-object v0
.end method

.method public x()Lwh/l;
    .locals 1

    iget-object v0, p0, Lth/n;->c:Lwh/l;

    return-object v0
.end method

.method public y()Lwh/p;
    .locals 1

    iget-object v0, p0, Lth/n;->d:Lwh/p;

    return-object v0
.end method
