.class public Lqh/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/g;

.field public final c:Lqh/k;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    instance-of v2, v0, Lqh/b;

    if-eqz v2, :cond_0

    :goto_0
    iput-object v0, p0, Lqh/i;->b:Loh/g;

    goto :goto_1

    :cond_0
    instance-of v2, v0, Lqh/j;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {v0}, Lqh/b;->w(Ljava/lang/Object;)Lqh/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lqh/j;->w(Ljava/lang/Object;)Lqh/j;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lqh/k;->u(Ljava/lang/Object;)Lqh/k;

    move-result-object p1

    iput-object p1, p0, Lqh/i;->c:Lqh/k;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lqh/b;Lqh/k;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/i;->b:Loh/g;

    iput-object p2, p0, Lqh/i;->c:Lqh/k;

    return-void
.end method

.method public constructor <init>(Lqh/j;Lqh/k;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/i;->b:Loh/g;

    iput-object p2, p0, Lqh/i;->c:Lqh/k;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lqh/i;
    .locals 1

    instance-of v0, p0, Lqh/i;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/i;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lqh/i;->b:Loh/g;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/i;->c:Lqh/k;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lqh/k;
    .locals 1

    iget-object v0, p0, Lqh/i;->c:Lqh/k;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lqh/i;->b:Loh/g;

    return-object v0
.end method
