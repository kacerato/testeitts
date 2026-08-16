.class public Lhi/m;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/m;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Lhi/y;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhi/m;->b:Loh/E;

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lhi/m;->b:Loh/E;

    return-void
.end method

.method public static u(Lhi/C;)Lhi/m;
    .locals 1

    sget-object v0, Lhi/B;->t:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object p0

    return-object p0
.end method

.method public static w(Ljava/lang/Object;)Lhi/m;
    .locals 1

    instance-of v0, p0, Lhi/m;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/m;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/m;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Lhi/m;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/m;->w(Ljava/lang/Object;)Lhi/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/m;->b:Loh/E;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/w;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CRLDistPoint:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lhi/m;->v()[Lhi/y;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-eq v3, v4, :cond_0

    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()[Lhi/y;
    .locals 3

    iget-object v0, p0, Lhi/m;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/y;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lhi/m;->b:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lhi/m;->b:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/y;->y(Ljava/lang/Object;)Lhi/y;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
