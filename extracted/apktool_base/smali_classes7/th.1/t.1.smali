.class public Lth/t;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/x;

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lth/t;->b:Loh/x;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lth/t;->c:Loh/g;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lth/t;-><init>(Loh/x;Loh/g;)V

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lth/t;->b:Loh/x;

    iput-object p2, p0, Lth/t;->c:Loh/g;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'infoType\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Object;)Lth/t;
    .locals 1

    instance-of v0, p0, Lth/t;

    if-eqz v0, :cond_0

    check-cast p0, Lth/t;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lth/t;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lth/t;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lth/t;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lth/t;->c:Loh/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lth/t;->b:Loh/x;

    return-object v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, Lth/t;->c:Loh/g;

    return-object v0
.end method
