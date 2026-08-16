.class public Lsh/G;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lsh/a;

.field public final c:Loh/x;

.field public final d:Loh/G;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lsh/a;->w(Ljava/lang/Object;)Lsh/a;

    move-result-object v0

    iput-object v0, p0, Lsh/G;->b:Lsh/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/x;->K(Ljava/lang/Object;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lsh/G;->c:Loh/x;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/G;->F(Ljava/lang/Object;)Loh/G;

    move-result-object p1

    iput-object p1, p0, Lsh/G;->d:Loh/G;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/a;Loh/x;Loh/G;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/G;->b:Lsh/a;

    iput-object p2, p0, Lsh/G;->c:Loh/x;

    iput-object p3, p0, Lsh/G;->d:Loh/G;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lsh/G;
    .locals 1

    instance-of v0, p0, Lsh/G;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/G;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/G;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/G;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lsh/G;->b:Lsh/a;

    iget-object v2, p0, Lsh/G;->c:Loh/x;

    iget-object v3, p0, Lsh/G;->d:Loh/G;

    const/4 v4, 0x3

    new-array v4, v4, [Loh/g;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public u()Loh/x;
    .locals 1

    iget-object v0, p0, Lsh/G;->c:Loh/x;

    return-object v0
.end method

.method public v()Loh/G;
    .locals 1

    iget-object v0, p0, Lsh/G;->d:Loh/G;

    return-object v0
.end method

.method public x()Lsh/a;
    .locals 1

    iget-object v0, p0, Lsh/G;->b:Lsh/a;

    return-object v0
.end method
