.class public Lsh/w;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lsh/a;

.field public final c:Loh/E;


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lsh/a;->w(Ljava/lang/Object;)Lsh/a;

    move-result-object v0

    iput-object v0, p0, Lsh/w;->b:Lsh/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p1

    iput-object p1, p0, Lsh/w;->c:Loh/E;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lsh/a;Loh/E;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/w;->b:Lsh/a;

    iput-object p2, p0, Lsh/w;->c:Loh/E;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lsh/w;
    .locals 1

    instance-of v0, p0, Lsh/w;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/w;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lsh/w;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lsh/w;-><init>(Loh/E;)V

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

    iget-object v1, p0, Lsh/w;->b:Lsh/a;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lsh/w;->c:Loh/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[Lsh/a;
    .locals 3

    iget-object v0, p0, Lsh/w;->c:Loh/E;

    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [Lsh/a;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsh/w;->c:Loh/E;

    invoke-virtual {v2}, Loh/E;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lsh/w;->c:Loh/E;

    invoke-virtual {v2, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lsh/a;->w(Ljava/lang/Object;)Lsh/a;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public x()Lsh/a;
    .locals 1

    iget-object v0, p0, Lsh/w;->b:Lsh/a;

    return-object v0
.end method
