.class public Lci/d;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Lci/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lci/d;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/h;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lci/c;->w(Ljava/lang/Object;)Lci/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lci/d;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Lci/c;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lci/d;->b:Loh/E;

    return-void
.end method

.method public static w(Ljava/lang/Object;)Lci/d;
    .locals 1

    instance-of v0, p0, Lci/d;

    if-eqz v0, :cond_0

    check-cast p0, Lci/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/d;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/d;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lci/d;->b:Loh/E;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lci/d;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    return v0
.end method

.method public u(Lci/c;)Lci/d;
    .locals 3

    new-instance v0, Loh/h;

    iget-object v1, p0, Lci/d;->b:Loh/E;

    invoke-virtual {v1}, Loh/E;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lci/d;->b:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lci/d;->b:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Lci/d;

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-direct {p1, v1}, Lci/d;-><init>(Loh/E;)V

    return-object p1
.end method

.method public v()[Lci/c;
    .locals 4

    iget-object v0, p0, Lci/d;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lci/c;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lci/d;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lci/c;->w(Ljava/lang/Object;)Lci/c;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
