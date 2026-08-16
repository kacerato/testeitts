.class public Lki/g;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lki/f;

.field public c:Loh/y;

.field public d:Loh/y;


# direct methods
.method public constructor <init>(Lki/f;Loh/y;Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lki/g;->b:Lki/f;

    iput-object p2, p0, Lki/g;->c:Loh/y;

    iput-object p3, p0, Lki/g;->d:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lki/f;->w(Ljava/lang/Object;)Lki/f;

    move-result-object v0

    iput-object v0, p0, Lki/g;->b:Lki/f;

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/M;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Loh/M;->p(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, Lki/g;->c:Loh/y;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Loh/M;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, Lki/g;->d:Loh/y;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static u(Ljava/lang/Object;)Lki/g;
    .locals 1

    instance-of v0, p0, Lki/g;

    if-eqz v0, :cond_0

    check-cast p0, Lki/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lki/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lki/g;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lki/g;->b:Lki/f;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/g;->c:Loh/y;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/K0;

    const/4 v2, 0x2

    iget-object v3, p0, Lki/g;->d:Loh/y;

    invoke-direct {v1, v2, v3}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lki/f;
    .locals 1

    iget-object v0, p0, Lki/g;->b:Lki/f;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, Lki/g;->c:Loh/y;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, Lki/g;->d:Loh/y;

    return-object v0
.end method
