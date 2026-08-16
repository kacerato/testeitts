.class public Luh/N;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Lhi/b;

.field public d:Lhi/b;

.field public e:Loh/y;


# direct methods
.method public constructor <init>(Lhi/b;Lhi/b;Loh/y;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/N;->b:Loh/s;

    iput-object p1, p0, Luh/N;->c:Lhi/b;

    iput-object p2, p0, Luh/N;->d:Lhi/b;

    iput-object p3, p0, Luh/N;->e:Loh/y;

    return-void
.end method

.method public constructor <init>(Lhi/b;Loh/y;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    iput-object v0, p0, Luh/N;->b:Loh/s;

    iput-object p1, p0, Luh/N;->d:Lhi/b;

    iput-object p2, p0, Luh/N;->e:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/s;

    iput-object v1, p0, Luh/N;->b:Loh/s;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    instance-of v2, v2, Loh/M;

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    check-cast v1, Loh/M;

    invoke-static {v1, v0}, Lhi/b;->w(Loh/M;Z)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/N;->c:Lhi/b;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/N;->d:Lhi/b;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    check-cast p1, Loh/y;

    iput-object p1, p0, Luh/N;->e:Loh/y;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/N;->d:Lhi/b;

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/N;
    .locals 1

    instance-of v0, p0, Luh/N;

    if-eqz v0, :cond_0

    check-cast p0, Luh/N;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/N;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/N;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/N;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/N;->v(Ljava/lang/Object;)Luh/N;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/N;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/N;->c:Lhi/b;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Luh/N;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/N;->e:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/N;->e:Loh/y;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/N;->c:Lhi/b;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/N;->d:Lhi/b;

    return-object v0
.end method

.method public z()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/N;->b:Loh/s;

    return-object v0
.end method
