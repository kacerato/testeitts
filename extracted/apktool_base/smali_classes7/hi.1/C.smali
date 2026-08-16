.class public Lhi/C;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Ljava/util/Hashtable;

.field public c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lhi/B;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {p1}, Lhi/B;->x()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lhi/B;->x()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lhi/B;->z(Ljava/lang/Object;)Lhi/B;

    move-result-object v0

    iget-object v1, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lhi/B;->x()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "org.bouncycastle.x509.ignore_repeated_extensions"

    invoke-static {v1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "repeated extension found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lhi/B;->x()Loh/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    iget-object v1, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lhi/B;->x()Loh/x;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Lhi/B;->x()Loh/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>([Lhi/B;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lhi/C;->c:Ljava/util/Vector;

    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Lhi/B;->x()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lhi/B;->x()Loh/x;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension array cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static A(Lhi/C;Loh/x;)Loh/g;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lhi/C;->B(Loh/x;)Loh/g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static C(Ljava/lang/Object;)Lhi/C;
    .locals 1

    instance-of v0, p0, Lhi/C;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/C;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/C;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/C;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static D(Loh/M;Z)Lhi/C;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lhi/C;Loh/x;)Lhi/B;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public B(Loh/x;)Loh/g;
    .locals 0

    invoke-virtual {p0, p1}, Lhi/C;->x(Loh/x;)Lhi/B;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public E()[Loh/x;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lhi/C;->z(Z)[Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final G(Ljava/util/Vector;)[Loh/x;
    .locals 4

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Loh/x;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loh/x;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    iget-object v1, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Loh/x;

    iget-object v3, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhi/B;

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u(Lhi/C;)Z
    .locals 5

    iget-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v1, p1, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public v()[Loh/x;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhi/C;->z(Z)[Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public x(Loh/x;)Lhi/B;
    .locals 1

    iget-object v0, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhi/B;

    return-object p1
.end method

.method public y()[Loh/x;
    .locals 1

    iget-object v0, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Lhi/C;->G(Ljava/util/Vector;)[Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public final z(Z)[Loh/x;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lhi/C;->c:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lhi/C;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhi/B;

    invoke-virtual {v3}, Lhi/B;->B()Z

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lhi/C;->G(Ljava/util/Vector;)[Loh/x;

    move-result-object p1

    return-object p1
.end method
