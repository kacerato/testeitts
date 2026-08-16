.class public Lsh/o;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lsh/o;->b:Loh/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>(Loh/g;)V

    iput-object v0, p0, Lsh/o;->b:Loh/E;

    return-void
.end method

.method public constructor <init>([Lsh/d;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/G0;

    invoke-direct {v0, p1}, Loh/G0;-><init>([Loh/g;)V

    iput-object v0, p0, Lsh/o;->b:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lsh/o;
    .locals 1

    instance-of v0, p0, Lsh/o;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/o;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, Lsh/o;->b:Loh/E;

    invoke-direct {v0, v1}, Loh/G0;-><init>(Loh/g;)V

    return-object v0
.end method

.method public u()[Lsh/d;
    .locals 3

    iget-object v0, p0, Lsh/o;->b:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lsh/d;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsh/o;->b:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lsh/o;->b:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lsh/d;->w(Ljava/lang/Object;)Lsh/d;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
