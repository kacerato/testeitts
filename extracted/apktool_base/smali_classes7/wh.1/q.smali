.class public Lwh/q;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/b;

.field public c:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;Loh/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lwh/q;->b:Lhi/b;

    iput-object p2, p0, Lwh/q;->c:Loh/c;

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

    iput-object v0, p0, Lwh/q;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lwh/q;->c:Loh/c;

    return-void
.end method

.method public constructor <init>(Lth/B;Loh/r0;)V
    .locals 2

    .line 3
    new-instance v0, Lhi/b;

    sget-object v1, Lth/c;->a:Loh/x;

    invoke-direct {v0, v1, p1}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    invoke-direct {p0, v0, p2}, Lwh/q;-><init>(Lhi/b;Loh/r0;)V

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lwh/q;
    .locals 1

    instance-of v0, p0, Lwh/q;

    if-eqz v0, :cond_0

    check-cast p0, Lwh/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lwh/q;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lwh/q;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lwh/q;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lwh/q;->v(Ljava/lang/Object;)Lwh/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lwh/q;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lwh/q;->c:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Lwh/q;->b:Lhi/b;

    return-object v0
.end method

.method public x()Loh/c;
    .locals 1

    iget-object v0, p0, Lwh/q;->c:Loh/c;

    return-object v0
.end method
