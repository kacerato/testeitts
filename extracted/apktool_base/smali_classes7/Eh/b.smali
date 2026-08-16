.class public LEh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:[LEh/a;


# direct methods
.method public constructor <init>(LEh/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    filled-new-array {p1}, [LEh/a;

    move-result-object p1

    iput-object p1, p0, LEh/b;->b:[LEh/a;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    new-array v0, v0, [LEh/a;

    iput-object v0, p0, LEh/b;->b:[LEh/a;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, LEh/b;->b:[LEh/a;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, LEh/a;->v(Ljava/lang/Object;)LEh/a;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([LEh/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, LEh/c;->a([LEh/a;)[LEh/a;

    move-result-object p1

    iput-object p1, p0, LEh/b;->b:[LEh/a;

    return-void
.end method

.method public static v(Ljava/lang/Object;)LEh/b;
    .locals 1

    instance-of v0, p0, LEh/b;

    if-eqz v0, :cond_0

    check-cast p0, LEh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LEh/b;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LEh/b;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)LEh/b;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, LEh/b;->v(Ljava/lang/Object;)LEh/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/G0;

    iget-object v1, p0, LEh/b;->b:[LEh/a;

    invoke-direct {v0, v1}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, LEh/b;->b:[LEh/a;

    array-length v0, v0

    return v0
.end method

.method public u()[LEh/a;
    .locals 1

    iget-object v0, p0, LEh/b;->b:[LEh/a;

    invoke-static {v0}, LEh/c;->a([LEh/a;)[LEh/a;

    move-result-object v0

    return-object v0
.end method
