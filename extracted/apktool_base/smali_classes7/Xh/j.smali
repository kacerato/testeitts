.class public LXh/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Loh/y;


# direct methods
.method public constructor <init>(Lhi/b;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/j;->b:Lhi/b;

    new-instance p1, Loh/C0;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/C0;-><init>([B)V

    iput-object p1, p0, LXh/j;->c:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LXh/j;->b:Lhi/b;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    iput-object p1, p0, LXh/j;->c:Loh/y;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LXh/j;
    .locals 1

    instance-of v0, p0, LXh/j;

    if-eqz v0, :cond_0

    check-cast p0, LXh/j;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/j;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/j;-><init>(Loh/E;)V

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

    iget-object v1, p0, LXh/j;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/j;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, LXh/j;->c:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/j;->b:Lhi/b;

    return-object v0
.end method
