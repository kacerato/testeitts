.class public Lwh/k;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:LXh/v;

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/k;->b:LXh/v;

    const/4 p1, 0x0

    iput-object p1, p0, Lwh/k;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(LXh/v;Lhi/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/k;->b:LXh/v;

    iput-object p2, p0, Lwh/k;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(LXh/v;Loh/Q;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/k;->b:LXh/v;

    iput-object p2, p0, Lwh/k;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object v0

    iput-object v0, p0, Lwh/k;->b:LXh/v;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v0, v0, Loh/Q;

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    if-nez v0, :cond_0

    invoke-static {p1}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object p1

    :cond_0
    :goto_0
    iput-object p1, p0, Lwh/k;->c:Loh/g;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static v(Ljava/lang/Object;)Lwh/k;
    .locals 1

    instance-of v0, p0, Lwh/k;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/k;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/k;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/k;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lwh/k;->b:LXh/v;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/k;->c:Loh/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/g;
    .locals 1

    iget-object v0, p0, Lwh/k;->c:Loh/g;

    return-object v0
.end method

.method public x()LXh/v;
    .locals 1

    iget-object v0, p0, Lwh/k;->b:LXh/v;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-object v0, p0, Lwh/k;->c:Loh/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lwh/k;->c:Loh/g;

    instance-of v0, v0, Loh/Q;

    return v0
.end method
