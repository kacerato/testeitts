.class public LVh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Loh/y;

.field public d:Loh/y;

.field public e:Loh/s;


# direct methods
.method public constructor <init>(Lhi/b;Loh/y;Loh/y;Loh/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LVh/b;->b:Lhi/b;

    iput-object p2, p0, LVh/b;->c:Loh/y;

    iput-object p3, p0, LVh/b;->d:Loh/y;

    iput-object p4, p0, LVh/b;->e:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, LVh/b;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, LVh/b;->c:Loh/y;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, LVh/b;->d:Loh/y;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/s;

    iput-object p1, p0, LVh/b;->e:Loh/s;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LVh/b;
    .locals 1

    instance-of v0, p0, LVh/b;

    if-eqz v0, :cond_0

    check-cast p0, LVh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LVh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LVh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)LVh/b;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LVh/b;->v(Ljava/lang/Object;)LVh/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LVh/b;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/b;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/b;->d:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, LVh/b;->e:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, LVh/b;->b:Lhi/b;

    return-object v0
.end method

.method public x()Loh/y;
    .locals 1

    iget-object v0, p0, LVh/b;->d:Loh/y;

    return-object v0
.end method

.method public y()Loh/y;
    .locals 1

    iget-object v0, p0, LVh/b;->c:Loh/y;

    return-object v0
.end method

.method public z()Loh/s;
    .locals 1

    iget-object v0, p0, LVh/b;->e:Loh/s;

    return-object v0
.end method
