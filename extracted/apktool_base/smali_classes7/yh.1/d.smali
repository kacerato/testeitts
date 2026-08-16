.class public Lyh/d;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/y;

.field public c:Loh/x;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/y;

    iput-object v0, p0, Lyh/d;->b:Loh/y;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/x;

    iput-object p1, p0, Lyh/d;->c:Loh/x;

    return-void
.end method

.method public constructor <init>([BLoh/x;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Lyh/d;->b:Loh/y;

    iput-object p2, p0, Lyh/d;->c:Loh/x;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lyh/d;
    .locals 1

    instance-of v0, p0, Lyh/d;

    if-eqz v0, :cond_0

    check-cast p0, Lyh/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lyh/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lyh/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lyh/d;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lyh/d;->w(Ljava/lang/Object;)Lyh/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lyh/d;->b:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lyh/d;->c:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lyh/d;->c:Loh/x;

    return-object v0
.end method

.method public v()[B
    .locals 1

    iget-object v0, p0, Lyh/d;->b:Loh/y;

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
