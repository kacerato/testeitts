.class public Luh/A;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/y;

.field public c:Loh/n;

.field public d:Luh/K;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, Luh/A;->b:Loh/y;

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

    check-cast v0, Loh/n;

    iput-object v0, p0, Luh/A;->c:Loh/n;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Luh/K;->u(Ljava/lang/Object;)Luh/K;

    move-result-object p1

    iput-object p1, p0, Luh/A;->d:Luh/K;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid KEKIdentifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/n;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    if-eqz v0, :cond_0

    check-cast p1, Loh/n;

    iput-object p1, p0, Luh/A;->c:Loh/n;

    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>([BLoh/n;Luh/K;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Luh/A;->b:Loh/y;

    iput-object p2, p0, Luh/A;->c:Loh/n;

    iput-object p3, p0, Luh/A;->d:Luh/K;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/A;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Luh/A;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, Luh/A;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, Luh/A;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KEKIdentifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Luh/A;

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/A;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/A;->v(Ljava/lang/Object;)Luh/A;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/A;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/A;->c:Loh/n;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/A;->d:Luh/K;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/n;
    .locals 1

    iget-object v0, p0, Luh/A;->c:Loh/n;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/A;->b:Loh/y;

    return-object v0
.end method

.method public y()Luh/K;
    .locals 1

    iget-object v0, p0, Luh/A;->d:Luh/K;

    return-object v0
.end method
