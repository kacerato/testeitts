.class public Luh/F;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/s;

.field public c:Luh/P;

.field public d:Lhi/b;

.field public e:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/s;

    iput-object v0, p0, Luh/F;->b:Loh/s;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/P;->v(Ljava/lang/Object;)Luh/P;

    move-result-object v0

    iput-object v0, p0, Luh/F;->c:Luh/P;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/F;->d:Lhi/b;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/y;

    iput-object p1, p0, Luh/F;->e:Loh/y;

    return-void
.end method

.method public constructor <init>(Luh/P;Lhi/b;Loh/y;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Luh/P;->r()Loh/B;

    move-result-object v0

    instance-of v0, v0, Loh/M;

    if-eqz v0, :cond_0

    new-instance v0, Loh/s;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    :goto_0
    iput-object v0, p0, Luh/F;->b:Loh/s;

    goto :goto_1

    :cond_0
    new-instance v0, Loh/s;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Loh/s;-><init>(J)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Luh/F;->c:Luh/P;

    iput-object p2, p0, Luh/F;->d:Lhi/b;

    iput-object p3, p0, Luh/F;->e:Loh/y;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/F;
    .locals 1

    instance-of v0, p0, Luh/F;

    if-eqz v0, :cond_0

    check-cast p0, Luh/F;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/F;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/F;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/F;->b:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/F;->c:Luh/P;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/F;->d:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/F;->e:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/y;
    .locals 1

    iget-object v0, p0, Luh/F;->e:Loh/y;

    return-object v0
.end method

.method public x()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/F;->d:Lhi/b;

    return-object v0
.end method

.method public y()Luh/P;
    .locals 1

    iget-object v0, p0, Luh/F;->c:Luh/P;

    return-object v0
.end method

.method public z()Loh/s;
    .locals 1

    iget-object v0, p0, Luh/F;->b:Loh/s;

    return-object v0
.end method
