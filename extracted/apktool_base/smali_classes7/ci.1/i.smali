.class public Lci/i;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/y;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object in constructor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object p1, p0, Lci/i;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    filled-new-array {p1}, [[B

    move-result-object p1

    invoke-direct {p0, p1}, Lci/i;-><init>([[B)V

    return-void
.end method

.method public constructor <init>([[B)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/h;

    array-length v1, p1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v2, Loh/C0;

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lci/i;->b:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lci/i;
    .locals 1

    instance-of v0, p0, Lci/i;

    if-eqz v0, :cond_0

    check-cast p0, Lci/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lci/i;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lci/i;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lci/i;->b:Loh/E;

    return-object v0
.end method

.method public u([B)Z
    .locals 2

    iget-object v0, p0, Lci/i;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lci/i;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    return v0
.end method

.method public y()[[B
    .locals 4

    iget-object v0, p0, Lci/i;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lci/i;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
