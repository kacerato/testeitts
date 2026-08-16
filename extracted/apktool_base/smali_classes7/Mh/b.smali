.class public LMh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/E;

.field public c:Loh/E;


# direct methods
.method public constructor <init>(Lhi/E;Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LMh/b;->b:Lhi/E;

    iput-object p2, p0, LMh/b;->c:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v0

    iput-object v0, p0, LMh/b;->b:Lhi/E;

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, LMh/b;->c:Loh/E;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static w(Ljava/lang/Object;)LMh/b;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, LMh/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/E;

    if-eqz v0, :cond_1

    new-instance v0, LMh/b;

    check-cast p0, Loh/E;

    invoke-direct {v0, p0}, LMh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, LMh/b;

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, LMh/b;->b:Lhi/E;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, LMh/b;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/E;
    .locals 1

    iget-object v0, p0, LMh/b;->b:Lhi/E;

    return-object v0
.end method

.method public v()[LMh/c;
    .locals 5

    iget-object v0, p0, LMh/b;->c:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [LMh/c;

    iget-object v1, p0, LMh/b;->c:Loh/E;

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

    invoke-static {v4}, LMh/c;->v(Ljava/lang/Object;)LMh/c;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
