.class public LXh/g;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements LXh/t;


# instance fields
.field public b:Loh/x;

.field public c:Loh/g;

.field public d:Z


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LXh/g;->d:Z

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loh/x;

    iput-object v1, p0, LXh/g;->b:Loh/x;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    iput-object v0, p0, LXh/g;->c:Loh/g;

    :cond_0
    instance-of p1, p1, Loh/g0;

    iput-boolean p1, p0, LXh/g;->d:Z

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LXh/g;->d:Z

    iput-object p1, p0, LXh/g;->b:Loh/x;

    iput-object p2, p0, LXh/g;->c:Loh/g;

    return-void
.end method

.method public static w(Ljava/lang/Object;)LXh/g;
    .locals 1

    instance-of v0, p0, LXh/g;

    if-eqz v0, :cond_0

    check-cast p0, LXh/g;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/g;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/g;-><init>(Loh/E;)V

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

    iget-object v1, p0, LXh/g;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/g;->c:Loh/g;

    if-eqz v1, :cond_0

    new-instance v2, Loh/l0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Loh/l0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-boolean v1, p0, LXh/g;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    return-object v1

    :cond_1
    new-instance v1, Loh/V0;

    invoke-direct {v1, v0}, Loh/V0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/g;
    .locals 1

    iget-object v0, p0, LXh/g;->c:Loh/g;

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, LXh/g;->b:Loh/x;

    return-object v0
.end method
