.class public LXh/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:LXh/f;

.field public c:Lhi/b;

.field public d:Loh/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/e;->b:LXh/f;

    iput-object v0, p0, LXh/e;->c:Lhi/b;

    iput-object v0, p0, LXh/e;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(LXh/f;Lhi/b;Loh/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LXh/e;->b:LXh/f;

    iput-object p2, p0, LXh/e;->c:Lhi/b;

    iput-object p3, p0, LXh/e;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LXh/e;->b:LXh/f;

    iput-object v0, p0, LXh/e;->c:Lhi/b;

    iput-object v0, p0, LXh/e;->d:Loh/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LXh/f;->v(Ljava/lang/Object;)LXh/f;

    move-result-object v0

    iput-object v0, p0, LXh/e;->b:LXh/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LXh/e;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/r0;

    iput-object p1, p0, LXh/e;->d:Loh/c;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LXh/e;
    .locals 1

    instance-of v0, p0, LXh/e;

    if-eqz v0, :cond_0

    check-cast p0, LXh/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LXh/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LXh/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LXh/e;->b:LXh/f;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/e;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LXh/e;->d:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()LXh/f;
    .locals 1

    iget-object v0, p0, LXh/e;->b:LXh/f;

    return-object v0
.end method

.method public x()Loh/c;
    .locals 1

    iget-object v0, p0, LXh/e;->d:Loh/c;

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, LXh/e;->c:Lhi/b;

    return-object v0
.end method
