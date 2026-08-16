.class public Lci/l;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lth/L;

.field public c:Luh/o;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lth/L;->v(Ljava/lang/Object;)Lth/L;

    move-result-object v0

    iput-object v0, p0, Lci/l;->b:Lth/L;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    iput-object p1, p0, Lci/l;->c:Luh/o;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lth/L;Luh/o;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lci/l;->b:Lth/L;

    iput-object p2, p0, Lci/l;->c:Luh/o;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lci/l;
    .locals 1

    instance-of v0, p0, Lci/l;

    if-eqz v0, :cond_0

    check-cast p0, Lci/l;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/l;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/l;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lci/l;->b:Lth/L;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lci/l;->c:Luh/o;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public v()Lth/L;
    .locals 1

    iget-object v0, p0, Lci/l;->b:Lth/L;

    return-object v0
.end method

.method public x()Luh/o;
    .locals 1

    iget-object v0, p0, Lci/l;->c:Luh/o;

    return-object v0
.end method
