.class public LDj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LEk/A;

.field public final b:LEk/i;


# direct methods
.method public constructor <init>(LEk/A;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDj/e;->a:LEk/A;

    const/4 p1, 0x0

    iput-object p1, p0, LDj/e;->b:LEk/i;

    return-void
.end method

.method public constructor <init>(LEk/i;LEk/A;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LDj/e;->a:LEk/A;

    iput-object p1, p0, LDj/e;->b:LEk/i;

    return-void
.end method


# virtual methods
.method public a(LGj/b;)[B
    .locals 4

    iget-object v0, p0, LDj/e;->b:LEk/i;

    invoke-virtual {v0}, LEk/i;->v()LEk/J;

    move-result-object v0

    invoke-virtual {v0}, LEk/J;->v()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LDj/e;->b:LEk/i;

    invoke-virtual {v0}, LEk/i;->v()LEk/J;

    move-result-object v0

    invoke-virtual {v0}, LEk/J;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/a;->w(Ljava/lang/Object;)LEk/a;

    move-result-object v0

    iget-object v1, p0, LDj/e;->a:LEk/A;

    invoke-virtual {v1}, LEk/A;->x()Loh/g;

    move-result-object v1

    invoke-static {v1}, LEk/w;->w(Ljava/lang/Object;)LEk/w;

    move-result-object v1

    invoke-virtual {v1}, LEk/w;->v()LEk/j;

    move-result-object v1

    invoke-virtual {v1}, LEk/j;->y()Loh/g;

    move-result-object v1

    invoke-static {v1}, LFk/o;->w(Ljava/lang/Object;)LFk/o;

    move-result-object v1

    invoke-virtual {v1}, LFk/o;->y()LFk/k;

    move-result-object v2

    invoke-static {v2}, LFk/k;->E(Ljava/lang/Object;)LFk/k;

    move-result-object v2

    invoke-virtual {v2}, LFk/k;->u()[B

    move-result-object v2

    invoke-virtual {v1}, LFk/o;->v()Loh/y;

    move-result-object v3

    invoke-virtual {v3}, Loh/y;->H()[B

    move-result-object v3

    invoke-virtual {v1}, LFk/o;->x()Loh/y;

    move-result-object v1

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object v1

    invoke-virtual {v0}, LEk/a;->v()LEk/v;

    move-result-object v2

    invoke-virtual {v2}, LEk/v;->v()[B

    move-result-object v2

    invoke-virtual {v0}, LEk/a;->x()Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, LGj/b;->a([B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encrypted data is no AES 128 CCM"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()LEk/i;
    .locals 1

    iget-object v0, p0, LDj/e;->b:LEk/i;

    return-object v0
.end method

.method public c()LEk/A;
    .locals 1

    iget-object v0, p0, LDj/e;->a:LEk/A;

    return-object v0
.end method
