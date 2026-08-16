.class public Lth/s;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lth/s;->b:Loh/E;

    return-void
.end method

.method public constructor <init>(Lth/t;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lth/s;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Lth/t;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lth/s;->b:Loh/E;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lth/s;
    .locals 1

    instance-of v0, p0, Lth/s;

    if-eqz v0, :cond_0

    check-cast p0, Lth/s;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/s;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/s;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lth/s;->b:Loh/E;

    return-object v0
.end method

.method public v()[Lth/t;
    .locals 4

    iget-object v0, p0, Lth/s;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lth/t;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lth/s;->b:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lth/t;->w(Ljava/lang/Object;)Lth/t;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
