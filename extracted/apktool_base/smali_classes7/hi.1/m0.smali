.class public Lhi/m0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/E;


# direct methods
.method public constructor <init>(Lhi/n0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lhi/m0;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/m0;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Lhi/l0;)V
    .locals 1

    .line 3
    new-instance v0, Lhi/n0;

    invoke-direct {v0, p1}, Lhi/n0;-><init>([Lhi/l0;)V

    invoke-direct {p0, v0}, Lhi/m0;-><init>(Lhi/n0;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/m0;
    .locals 1

    instance-of v0, p0, Lhi/m0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/m0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/m0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/m0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lhi/m0;->b:Loh/E;

    return-object v0
.end method

.method public v()[Lhi/n0;
    .locals 5

    iget-object v0, p0, Lhi/m0;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/n0;

    iget-object v1, p0, Lhi/m0;->b:Loh/E;

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

    invoke-static {v4}, Lhi/n0;->u(Ljava/lang/Object;)Lhi/n0;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
