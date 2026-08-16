.class public Lhi/A;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/Hashtable;

.field public c:Loh/E;


# direct methods
.method public constructor <init>(Lhi/M;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lhi/A;->c:Loh/E;

    iget-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    new-instance v0, Loh/h;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lhi/M;->v(Ljava/lang/Object;)Lhi/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v2, p0, Lhi/A;->b:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lhi/A;->c:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    iput-object p1, p0, Lhi/A;->c:Loh/E;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v1

    instance-of v1, v1, Loh/x;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lhi/A;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public constructor <init>([Lhi/M;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    new-instance v0, Loh/h;

    array-length v1, p1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    iget-object v2, p0, Lhi/A;->b:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lhi/A;->c:Loh/E;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/A;
    .locals 1

    sget-object v0, Lhi/B;->y:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/A;->v(Ljava/lang/Object;)Lhi/A;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lhi/A;
    .locals 1

    instance-of v0, p0, Lhi/A;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/A;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/A;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/A;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/A;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/A;->v(Ljava/lang/Object;)Lhi/A;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/A;->c:Loh/E;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public x()[Lhi/M;
    .locals 5

    iget-object v0, p0, Lhi/A;->c:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/M;

    iget-object v1, p0, Lhi/A;->c:Loh/E;

    invoke-virtual {v1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lhi/M;->v(Ljava/lang/Object;)Lhi/M;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public y(Lhi/M;)Z
    .locals 1

    iget-object v0, p0, Lhi/A;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
