.class public Lsh/s;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[Lhi/B;


# direct methods
.method public constructor <init>(Lhi/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    filled-new-array {p1}, [Lhi/B;

    move-result-object p1

    iput-object p1, p0, Lsh/s;->b:[Lhi/B;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lhi/B;

    iput-object v0, p0, Lsh/s;->b:[Lhi/B;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lsh/s;->b:[Lhi/B;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/B;->z(Ljava/lang/Object;)Lhi/B;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lhi/B;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lsh/K;->a([Lhi/B;)[Lhi/B;

    move-result-object p1

    iput-object p1, p0, Lsh/s;->b:[Lhi/B;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lsh/s;
    .locals 1

    instance-of v0, p0, Lsh/s;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/s;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/s;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/s;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lsh/s;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lsh/s;->v(Ljava/lang/Object;)Lsh/s;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lsh/s;->b:[Lhi/B;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public u()[Lhi/B;
    .locals 1

    iget-object v0, p0, Lsh/s;->b:[Lhi/B;

    invoke-static {v0}, Lsh/K;->a([Lhi/B;)[Lhi/B;

    move-result-object v0

    return-object v0
.end method
