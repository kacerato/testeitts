.class public Lth/F;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Loh/M0;

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lth/F;-><init>(Loh/Q;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->J()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Loh/Q;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to insert non UTF8 STRING into PKIFreeText"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-object p1, p0, Lth/F;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/Q;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lth/F;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/h;

    array-length v1, p1

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    new-instance v2, Loh/M0;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Loh/M0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Loh/G0;

    invoke-direct {p1, v0}, Loh/G0;-><init>(Loh/h;)V

    iput-object p1, p0, Lth/F;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Loh/Q;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lth/F;->b:Loh/E;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lth/F;
    .locals 1

    instance-of v0, p0, Lth/F;

    if-eqz v0, :cond_0

    check-cast p0, Lth/F;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/F;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/F;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lth/F;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lth/F;->u(Ljava/lang/Object;)Lth/F;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lth/F;->b:Loh/E;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lth/F;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    return v0
.end method

.method public w(I)Loh/M0;
    .locals 1

    invoke-virtual {p0, p1}, Lth/F;->x(I)Loh/Q;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v0, p1, Loh/M0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Loh/M0;

    invoke-virtual {p1}, Loh/Q;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Loh/M0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Loh/M0;

    :goto_1
    return-object v0
.end method

.method public x(I)Loh/Q;
    .locals 1

    iget-object v0, p0, Lth/F;->b:Loh/E;

    invoke-virtual {v0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/Q;

    return-object p1
.end method
