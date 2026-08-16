.class public Lhi/a0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/n;

.field public c:Loh/n;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {v0, v2}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lhi/a0;->b:Loh/n;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Loh/M;->g()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Loh/n;->K(Loh/M;Z)Loh/n;

    move-result-object v0

    iput-object v0, p0, Lhi/a0;->c:Loh/n;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/a0;
    .locals 1

    instance-of v0, p0, Lhi/a0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/a0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/a0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/a0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/a0;->b:Loh/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/a0;->c:Loh/n;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Loh/n;
    .locals 1

    iget-object v0, p0, Lhi/a0;->c:Loh/n;

    return-object v0
.end method

.method public x()Loh/n;
    .locals 1

    iget-object v0, p0, Lhi/a0;->b:Loh/n;

    return-object v0
.end method
