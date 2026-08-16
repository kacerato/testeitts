.class public Lki/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/x;

.field public c:Loh/y;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, Lki/f;->b:Loh/x;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loh/y;

    iput-object p1, p0, Lki/f;->c:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lki/f;->b:Loh/x;

    iput-object p2, p0, Lki/f;->c:Loh/y;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lki/f;
    .locals 1

    instance-of v0, p0, Lki/f;

    if-eqz v0, :cond_0

    check-cast p0, Lki/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lki/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lki/f;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lki/f;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lki/f;->c:Loh/y;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lki/f;->b:Loh/x;

    return-object v0
.end method

.method public v()Loh/y;
    .locals 1

    iget-object v0, p0, Lki/f;->c:Loh/y;

    return-object v0
.end method
