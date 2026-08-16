.class public Luh/c;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/G;


# direct methods
.method public constructor <init>(Loh/G;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/c;->b:Loh/G;

    return-void
.end method

.method public constructor <init>(Loh/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/X0;

    invoke-direct {v0, p1}, Loh/X0;-><init>(Loh/h;)V

    iput-object v0, p0, Luh/c;->b:Loh/G;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Luh/c;
    .locals 1

    instance-of v0, p0, Luh/c;

    if-eqz v0, :cond_0

    check-cast p0, Luh/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/c;

    invoke-static {p0}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/c;-><init>(Loh/G;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Luh/c;
    .locals 0

    invoke-static {p0, p1}, Loh/G;->G(Loh/M;Z)Loh/G;

    move-result-object p0

    invoke-static {p0}, Luh/c;->v(Ljava/lang/Object;)Luh/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Luh/c;->b:Loh/G;

    return-object v0
.end method

.method public u()[Luh/a;
    .locals 4

    iget-object v0, p0, Luh/c;->b:Loh/G;

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v0

    new-array v1, v0, [Luh/a;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Luh/c;->b:Loh/G;

    invoke-virtual {v3, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Luh/a;->y(Ljava/lang/Object;)Luh/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
