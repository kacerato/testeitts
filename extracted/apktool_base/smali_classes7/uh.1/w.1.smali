.class public Luh/w;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# instance fields
.field public b:Luh/b0;

.field public c:Lci/g;

.field public d:Loh/E;


# direct methods
.method public constructor <init>(Lci/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/w;->c:Lci/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Luh/b0;->w(Loh/M;Z)Luh/b0;

    move-result-object p1

    iput-object p1, p0, Luh/w;->b:Luh/b0;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {p1, v1}, Lci/g;->z(Loh/M;Z)Lci/g;

    move-result-object p1

    iput-object p1, p0, Luh/w;->c:Lci/g;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-static {p1, v1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p1

    iput-object p1, p0, Luh/w;->d:Loh/E;

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in Evidence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Luh/b0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/w;->b:Luh/b0;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/w;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Luh/w;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Luh/w;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/w;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast p0, Luh/w;

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/w;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-static {p0}, Luh/w;->v(Ljava/lang/Object;)Luh/w;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Luh/w;->b:Luh/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Loh/K0;

    invoke-direct {v2, v1, v1, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Luh/w;->c:Lci/g;

    if-eqz v0, :cond_1

    new-instance v2, Loh/K0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v0}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v2

    :cond_1
    new-instance v0, Loh/K0;

    const/4 v2, 0x2

    iget-object v3, p0, Luh/w;->d:Loh/E;

    invoke-direct {v0, v1, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0
.end method

.method public u()Lci/g;
    .locals 1

    iget-object v0, p0, Luh/w;->c:Lci/g;

    return-object v0
.end method

.method public x()Luh/b0;
    .locals 1

    iget-object v0, p0, Luh/w;->b:Luh/b0;

    return-object v0
.end method
