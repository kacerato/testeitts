.class public Luh/S;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/y;

.field public c:Loh/n;

.field public d:Luh/K;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    iput-object v0, p0, Luh/S;->b:Loh/y;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object v0

    iput-object v0, p0, Luh/S;->c:Loh/n;

    :cond_0
    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Luh/K;->u(Ljava/lang/Object;)Luh/K;

    move-result-object p1

    iput-object p1, p0, Luh/S;->d:Luh/K;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid RecipientKeyIdentifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/n;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/n;->J(Ljava/lang/Object;)Loh/n;

    move-result-object p1

    iput-object p1, p0, Luh/S;->c:Loh/n;

    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Loh/y;Loh/n;Luh/K;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/S;->b:Loh/y;

    iput-object p2, p0, Luh/S;->c:Loh/n;

    iput-object p3, p0, Luh/S;->d:Luh/K;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v0}, Luh/S;-><init>([BLoh/n;Luh/K;)V

    return-void
.end method

.method public constructor <init>([BLoh/n;Luh/K;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Luh/S;->b:Loh/y;

    iput-object p2, p0, Luh/S;->c:Loh/n;

    iput-object p3, p0, Luh/S;->d:Luh/K;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/S;
    .locals 1

    instance-of v0, p0, Luh/S;

    if-eqz v0, :cond_0

    check-cast p0, Luh/S;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/S;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/S;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/S;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/S;->v(Ljava/lang/Object;)Luh/S;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/S;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/S;->c:Loh/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/S;->d:Luh/K;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/n;
    .locals 1

    iget-object v0, p0, Luh/S;->c:Loh/n;

    return-object v0
.end method

.method public x()Luh/K;
    .locals 1

    iget-object v0, p0, Luh/S;->d:Luh/K;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/S;->b:Loh/y;

    return-object v0
.end method
