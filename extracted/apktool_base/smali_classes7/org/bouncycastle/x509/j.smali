.class public Lorg/bouncycastle/x509/j;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;Loh/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/g;

    new-instance v1, Loh/x;

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance p1, Loh/I0;

    invoke-direct {p1, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v0, v1, p1}, Lhi/g;-><init>(Loh/x;Loh/G;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/j;->b:Lhi/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Loh/h;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/g;

    new-instance v1, Loh/x;

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    new-instance p1, Loh/I0;

    invoke-direct {p1, p2}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v0, v1, p1}, Lhi/g;-><init>(Loh/x;Loh/G;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/j;->b:Lhi/g;

    return-void
.end method

.method public constructor <init>(Loh/g;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lhi/g;->y(Ljava/lang/Object;)Lhi/g;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/j;->b:Lhi/g;

    return-void
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/j;->b:Lhi/g;

    invoke-virtual {v0}, Lhi/g;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/j;->b:Lhi/g;

    invoke-virtual {v0}, Lhi/g;->u()Loh/x;

    move-result-object v0

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()[Loh/g;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/x509/j;->b:Lhi/g;

    invoke-virtual {v0}, Lhi/g;->v()Loh/G;

    move-result-object v0

    invoke-virtual {v0}, Loh/G;->size()I

    move-result v1

    new-array v1, v1, [Loh/g;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Loh/G;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Loh/G;->H(I)Loh/g;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
