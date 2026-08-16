.class public abstract Loh/k;
.super Loh/B;
.source "SourceFile"


# static fields
.field public static final g:Loh/T;


# instance fields
.field public b:Loh/x;

.field public c:Loh/s;

.field public d:Loh/B;

.field public e:I

.field public f:Loh/B;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loh/k$a;

    const-class v1, Loh/k;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Loh/k$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Loh/k;->g:Loh/T;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Loh/B;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Loh/k;->Q(Loh/E;I)Loh/B;

    move-result-object v1

    instance-of v2, v1, Loh/x;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Loh/x;

    iput-object v1, p0, Loh/k;->b:Loh/x;

    invoke-static {p1, v3}, Loh/k;->Q(Loh/E;I)Loh/B;

    move-result-object v1

    move v0, v3

    :cond_0
    instance-of v2, v1, Loh/s;

    if-eqz v2, :cond_1

    check-cast v1, Loh/s;

    iput-object v1, p0, Loh/k;->c:Loh/s;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Loh/k;->Q(Loh/E;I)Loh/B;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Loh/M;

    if-nez v2, :cond_2

    iput-object v1, p0, Loh/k;->d:Loh/B;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Loh/k;->Q(Loh/E;I)Loh/B;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_4

    instance-of p1, v1, Loh/M;

    if-eqz p1, :cond_3

    check-cast v1, Loh/M;

    invoke-virtual {v1}, Loh/M;->g()I

    move-result p1

    invoke-static {p1}, Loh/k;->F(I)I

    move-result p1

    iput p1, p0, Loh/k;->e:I

    invoke-static {v1}, Loh/k;->M(Loh/M;)Loh/B;

    move-result-object p1

    iput-object p1, p0, Loh/k;->f:Loh/B;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "input sequence too large"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Loh/x;Loh/s;Loh/B;ILoh/B;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/B;-><init>()V

    iput-object p1, p0, Loh/k;->b:Loh/x;

    iput-object p2, p0, Loh/k;->c:Loh/s;

    iput-object p3, p0, Loh/k;->d:Loh/B;

    invoke-static {p4}, Loh/k;->F(I)I

    move-result p1

    iput p1, p0, Loh/k;->e:I

    invoke-static {p4, p5}, Loh/k;->G(ILoh/B;)Loh/B;

    move-result-object p1

    iput-object p1, p0, Loh/k;->f:Loh/B;

    return-void
.end method

.method public constructor <init>(Loh/x;Loh/s;Loh/B;Loh/K0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/B;-><init>()V

    iput-object p1, p0, Loh/k;->b:Loh/x;

    iput-object p2, p0, Loh/k;->c:Loh/s;

    iput-object p3, p0, Loh/k;->d:Loh/B;

    invoke-virtual {p4}, Loh/M;->g()I

    move-result p1

    invoke-static {p1}, Loh/k;->F(I)I

    move-result p1

    iput p1, p0, Loh/k;->e:I

    invoke-static {p4}, Loh/k;->M(Loh/M;)Loh/B;

    move-result-object p1

    iput-object p1, p0, Loh/k;->f:Loh/B;

    return-void
.end method

.method public static F(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static G(ILoh/B;)Loh/B;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p0, Loh/c;->c:Loh/T;

    :goto_0
    invoke-virtual {p0, p1}, Loh/T;->b(Loh/B;)Loh/B;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Loh/y;->c:Loh/T;

    goto :goto_0
.end method

.method public static M(Loh/M;)Loh/B;
    .locals 3

    invoke-static {p0}, Loh/V;->c(Loh/M;)Loh/M;

    invoke-virtual {p0}, Loh/M;->g()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0, v2}, Loh/c;->I(Loh/M;Z)Loh/c;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Loh/V;->y(Loh/M;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v2}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Loh/M;->O()Loh/v;

    move-result-object p0

    invoke-virtual {p0}, Loh/v;->r()Loh/B;

    move-result-object p0

    return-object p0
.end method

.method public static O(Ljava/lang/Object;)Loh/k;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Loh/k;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Loh/g;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Loh/g;

    invoke-interface {v0}, Loh/g;->r()Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/k;

    if-eqz v1, :cond_2

    check-cast v0, Loh/k;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Loh/k;->g:Loh/T;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Loh/T;->c([B)Loh/B;

    move-result-object p0

    check-cast p0, Loh/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct external from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Loh/k;

    return-object p0
.end method

.method public static P(Loh/M;Z)Loh/k;
    .locals 1

    sget-object v0, Loh/k;->g:Loh/T;

    invoke-virtual {v0, p0, p1}, Loh/T;->f(Loh/M;Z)Loh/B;

    move-result-object p0

    check-cast p0, Loh/k;

    return-object p0
.end method

.method public static Q(Loh/E;I)Loh/B;
    .locals 1

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Loh/E;->I(I)Loh/g;

    move-result-object p0

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public C()Loh/B;
    .locals 7

    new-instance v6, Loh/s0;

    iget-object v1, p0, Loh/k;->b:Loh/x;

    iget-object v2, p0, Loh/k;->c:Loh/s;

    iget-object v3, p0, Loh/k;->d:Loh/B;

    iget v4, p0, Loh/k;->e:I

    iget-object v5, p0, Loh/k;->f:Loh/B;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Loh/s0;-><init>(Loh/x;Loh/s;Loh/B;ILoh/B;)V

    return-object v6
.end method

.method public D()Loh/B;
    .locals 7

    new-instance v6, Loh/S0;

    iget-object v1, p0, Loh/k;->b:Loh/x;

    iget-object v2, p0, Loh/k;->c:Loh/s;

    iget-object v3, p0, Loh/k;->d:Loh/B;

    iget v4, p0, Loh/k;->e:I

    iget-object v5, p0, Loh/k;->f:Loh/B;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Loh/S0;-><init>(Loh/x;Loh/s;Loh/B;ILoh/B;)V

    return-object v6
.end method

.method public abstract E()Loh/E;
.end method

.method public H()Loh/B;
    .locals 1

    iget-object v0, p0, Loh/k;->d:Loh/B;

    return-object v0
.end method

.method public I()Loh/x;
    .locals 1

    iget-object v0, p0, Loh/k;->b:Loh/x;

    return-object v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Loh/k;->e:I

    return v0
.end method

.method public L()Loh/B;
    .locals 1

    iget-object v0, p0, Loh/k;->f:Loh/B;

    return-object v0
.end method

.method public N()Loh/s;
    .locals 1

    iget-object v0, p0, Loh/k;->c:Loh/s;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Loh/k;->b:Loh/x;

    invoke-static {v0}, Lorg/bouncycastle/util/o;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Loh/k;->c:Loh/s;

    invoke-static {v1}, Lorg/bouncycastle/util/o;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Loh/k;->d:Loh/B;

    invoke-static {v1}, Lorg/bouncycastle/util/o;->b(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Loh/k;->e:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Loh/k;->f:Loh/B;

    invoke-virtual {v1}, Loh/B;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public u(Loh/B;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Loh/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Loh/k;

    iget-object v1, p0, Loh/k;->b:Loh/x;

    iget-object v3, p1, Loh/k;->b:Loh/x;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Loh/k;->c:Loh/s;

    iget-object v3, p1, Loh/k;->c:Loh/s;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Loh/k;->d:Loh/B;

    iget-object v3, p1, Loh/k;->d:Loh/B;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Loh/k;->e:I

    iget v3, p1, Loh/k;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Loh/k;->f:Loh/B;

    iget-object p1, p1, Loh/k;->f:Loh/B;

    invoke-virtual {v1, p1}, Loh/B;->A(Loh/B;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public v(Loh/A;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x28

    invoke-virtual {p1, p2, v0}, Loh/A;->v(ZI)V

    invoke-virtual {p0}, Loh/k;->E()Loh/E;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Loh/B;->v(Loh/A;Z)V

    return-void
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Loh/k;->E()Loh/E;

    move-result-object v0

    invoke-virtual {v0, p1}, Loh/B;->y(Z)I

    move-result p1

    return p1
.end method
