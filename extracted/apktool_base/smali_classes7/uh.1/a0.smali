.class public Luh/a0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Luh/o;

.field public c:Lhi/r;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v0

    iput-object v0, p0, Luh/a0;->b:Luh/o;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p1

    iput-object p1, p0, Luh/a0;->c:Lhi/r;

    :cond_0
    return-void
.end method

.method public constructor <init>(Luh/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/a0;->b:Luh/o;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/a0;
    .locals 1

    instance-of v0, p0, Luh/a0;

    if-eqz v0, :cond_0

    check-cast p0, Luh/a0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/a0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/a0;-><init>(Loh/E;)V

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

    iget-object v1, p0, Luh/a0;->b:Luh/o;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/a0;->c:Lhi/r;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/r;
    .locals 1

    iget-object v0, p0, Luh/a0;->c:Lhi/r;

    return-object v0
.end method

.method public v()Lhi/r;
    .locals 1

    iget-object v0, p0, Luh/a0;->c:Lhi/r;

    return-object v0
.end method

.method public x()Luh/o;
    .locals 1

    iget-object v0, p0, Luh/a0;->b:Luh/o;

    return-object v0
.end method
