.class public Luh/J;
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

    iput-object p1, p0, Luh/J;->b:Lhi/b;

    iput-object p2, p0, Luh/J;->c:Loh/c;

    return-void
.end method

.method public constructor <init>(Lhi/b;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/J;->b:Lhi/b;

    new-instance p1, Loh/r0;

    invoke-direct {p1, p2}, Loh/r0;-><init>([B)V

    iput-object p1, p0, Luh/J;->c:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Luh/J;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/r0;

    iput-object p1, p0, Luh/J;->c:Loh/c;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/J;
    .locals 1

    instance-of v0, p0, Luh/J;

    if-eqz v0, :cond_0

    check-cast p0, Luh/J;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/J;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/J;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/J;
    .locals 1

    new-instance v0, Luh/J;

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/J;-><init>(Loh/E;)V

    return-object v0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/J;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/J;->c:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Luh/J;->b:Lhi/b;

    return-object v0
.end method

.method public x()Loh/r0;
    .locals 1

    iget-object v0, p0, Luh/J;->c:Loh/c;

    invoke-static {v0}, Loh/r0;->N(Loh/c;)Loh/r0;

    move-result-object v0

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Luh/J;->c:Loh/c;

    return-object v0
.end method
