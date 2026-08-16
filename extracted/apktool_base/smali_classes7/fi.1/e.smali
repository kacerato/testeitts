.class public Lfi/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfi/f;

.field public b:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lgi/c;->T:Lfi/f;

    invoke-direct {p0, v0}, Lfi/e;-><init>(Lfi/f;)V

    return-void
.end method

.method public constructor <init>(Lfi/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lfi/e;->b:Ljava/util/Vector;

    iput-object p1, p0, Lfi/e;->a:Lfi/f;

    return-void
.end method


# virtual methods
.method public a([Lfi/a;)Lfi/e;
    .locals 2

    iget-object v0, p0, Lfi/e;->b:Ljava/util/Vector;

    new-instance v1, Lfi/c;

    invoke-direct {v1, p1}, Lfi/c;-><init>([Lfi/a;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public b([Loh/x;[Ljava/lang/String;)Lfi/e;
    .locals 6

    array-length v0, p2

    new-array v1, v0, [Loh/g;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lfi/e;->a:Lfi/f;

    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-interface {v3, v4, v5}, Lfi/f;->a(Loh/x;Ljava/lang/String;)Loh/g;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lfi/e;->c([Loh/x;[Loh/g;)Lfi/e;

    move-result-object p1

    return-object p1
.end method

.method public c([Loh/x;[Loh/g;)Lfi/e;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Lfi/a;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v2, Lfi/a;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Lfi/a;-><init>(Loh/x;Loh/g;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lfi/e;->a([Lfi/a;)Lfi/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Lfi/a;)Lfi/e;
    .locals 2

    iget-object v0, p0, Lfi/e;->b:Ljava/util/Vector;

    new-instance v1, Lfi/c;

    invoke-direct {v1, p1}, Lfi/c;-><init>(Lfi/a;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public e(Loh/x;Ljava/lang/String;)Lfi/e;
    .locals 1

    iget-object v0, p0, Lfi/e;->a:Lfi/f;

    invoke-interface {v0, p1, p2}, Lfi/f;->a(Loh/x;Ljava/lang/String;)Loh/g;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfi/e;->f(Loh/x;Loh/g;)Lfi/e;

    return-object p0
.end method

.method public f(Loh/x;Loh/g;)Lfi/e;
    .locals 2

    iget-object v0, p0, Lfi/e;->b:Ljava/util/Vector;

    new-instance v1, Lfi/c;

    invoke-direct {v1, p1, p2}, Lfi/c;-><init>(Loh/x;Loh/g;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public g()Lfi/d;
    .locals 4

    iget-object v0, p0, Lfi/e;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Lfi/c;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lfi/e;->b:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfi/c;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lfi/d;

    iget-object v2, p0, Lfi/e;->a:Lfi/f;

    invoke-direct {v0, v2, v1}, Lfi/d;-><init>(Lfi/f;[Lfi/c;)V

    return-object v0
.end method
