.class public Lhi/e0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;Loh/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/e0;->b:Lhi/b;

    iput-object p2, p0, Lhi/e0;->c:Loh/c;

    return-void
.end method

.method public constructor <init>(Lhi/h0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lhi/e0;->b:Lhi/b;

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/e0;->c:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lhi/e0;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/e0;->c:Loh/c;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension should contain only 2 elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u(Lhi/C;)Lhi/e0;
    .locals 1

    sget-object v0, Lhi/B;->K:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/e0;->w(Ljava/lang/Object;)Lhi/e0;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/e0;
    .locals 1

    instance-of v0, p0, Lhi/e0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/e0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/e0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/e0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/e0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/e0;->w(Ljava/lang/Object;)Lhi/e0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Lhi/e0;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/e0;->c:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, Lhi/e0;->b:Lhi/b;

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/e0;->c:Loh/c;

    return-object v0
.end method
