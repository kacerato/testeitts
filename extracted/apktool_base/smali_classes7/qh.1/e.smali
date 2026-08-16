.class public Lqh/e;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/F;

.field public final c:Lhi/b;

.field public final d:[B


# direct methods
.method public constructor <init>(Lhi/E;Lhi/b;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Lhi/F;

    invoke-direct {v0, p1}, Lhi/F;-><init>(Lhi/E;)V

    iput-object v0, p0, Lqh/e;->b:Lhi/F;

    iput-object p2, p0, Lqh/e;->c:Lhi/b;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lqh/e;->d:[B

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v0

    iput-object v0, p0, Lqh/e;->b:Lhi/F;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lqh/e;->c:Lhi/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/c;

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    invoke-virtual {p1}, Loh/c;->J()[B

    move-result-object p1

    iput-object p1, p0, Lqh/e;->d:[B

    goto :goto_0

    :cond_0
    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, Lqh/e;->d:[B

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Ljava/lang/Object;)Lqh/e;
    .locals 1

    instance-of v0, p0, Lqh/e;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()[Lhi/E;
    .locals 1

    iget-object v0, p0, Lqh/e;->b:Lhi/F;

    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v0

    return-object v0
.end method

.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iget-object v1, p0, Lqh/e;->b:Lhi/F;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/e;->c:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/C0;

    iget-object v2, p0, Lqh/e;->d:[B

    invoke-direct {v1, v2}, Loh/C0;-><init>([B)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/b;
    .locals 1

    iget-object v0, p0, Lqh/e;->c:Lhi/b;

    return-object v0
.end method

.method public v()Loh/c;
    .locals 2

    new-instance v0, Loh/r0;

    iget-object v1, p0, Lqh/e;->d:[B

    invoke-direct {v0, v1}, Loh/r0;-><init>([B)V

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lqh/e;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public z()Lhi/E;
    .locals 2

    iget-object v0, p0, Lqh/e;->b:Lhi/F;

    invoke-virtual {v0}, Lhi/F;->y()[Lhi/E;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
