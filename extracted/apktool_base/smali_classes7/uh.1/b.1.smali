.class public Luh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Luh/b;->c(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object p1

    iput-object p1, p0, Luh/b;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Loh/G;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/G;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Loh/G;->H(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v1

    invoke-virtual {v1}, Luh/a;->u()Loh/x;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Luh/b;->b(Loh/x;Luh/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/h;->i()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Loh/h;->g(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v1

    invoke-virtual {v1}, Luh/a;->u()Loh/x;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Luh/b;->b(Loh/x;Luh/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Luh/a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Luh/a;->u()Loh/x;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Luh/b;->b(Loh/x;Luh/a;)V

    return-void
.end method

.method public constructor <init>(Luh/c;)V
    .locals 0

    .line 5
    invoke-virtual {p1}, Luh/c;->r()Loh/B;

    move-result-object p1

    invoke-static {p1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    invoke-direct {p0, p1}, Luh/b;-><init>(Loh/G;)V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)Luh/b;
    .locals 3

    new-instance v0, Luh/b;

    iget-object v1, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Luh/b;-><init>(Ljava/util/Hashtable;)V

    new-instance v1, Luh/a;

    new-instance v2, Loh/I0;

    invoke-direct {v2, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v1, p1, v2}, Luh/a;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v0, p1, v1}, Luh/b;->b(Loh/x;Luh/a;)V

    return-object v0
.end method

.method public final b(Loh/x;Luh/a;)V
    .locals 2

    iget-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    instance-of v1, v0, Luh/a;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Vector;

    goto :goto_0

    :goto_1
    iget-object p2, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {p2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public final c(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public d(Loh/x;)Luh/a;
    .locals 1

    iget-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luh/a;

    return-object p1

    :cond_0
    check-cast p1, Luh/a;

    return-object p1
.end method

.method public e(Loh/x;)Loh/h;
    .locals 2

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Ljava/util/Vector;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luh/a;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Luh/a;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    :cond_1
    return-object v0
.end method

.method public f(Loh/x;)Luh/b;
    .locals 2

    new-instance v0, Luh/b;

    iget-object v1, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Luh/b;-><init>(Ljava/util/Hashtable;)V

    iget-object v1, v0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public g()I
    .locals 4

    iget-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public h()Loh/h;
    .locals 4

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public i()Luh/c;
    .locals 2

    new-instance v0, Luh/c;

    invoke-virtual {p0}, Luh/b;->h()Loh/h;

    move-result-object v1

    invoke-direct {v0, v1}, Luh/c;-><init>(Loh/h;)V

    return-object v0
.end method

.method public j()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Luh/b;->a:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Luh/b;->c(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
