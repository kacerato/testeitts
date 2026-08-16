.class public Lqh/n;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:Loh/E;

.field public final d:Loh/c;


# direct methods
.method public constructor <init>(Lhi/b;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/n;->b:Lhi/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lqh/n;->c:Loh/E;

    new-instance p1, Loh/r0;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/r0;-><init>([B)V

    iput-object p1, p0, Lqh/n;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(Lhi/b;[Lhi/q;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/n;->b:Lhi/b;

    new-instance p1, Loh/G0;

    invoke-direct {p1, p2}, Loh/G0;-><init>([Loh/g;)V

    iput-object p1, p0, Lqh/n;->c:Loh/E;

    new-instance p1, Loh/r0;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p2

    invoke-direct {p1, p2}, Loh/r0;-><init>([B)V

    iput-object p1, p0, Lqh/n;->d:Loh/c;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    iput-object v0, p0, Lqh/n;->b:Lhi/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Loh/M;->M(ZI)Loh/B;

    move-result-object v0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    iput-object v0, p0, Lqh/n;->c:Loh/E;

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lqh/n;->c:Loh/E;

    :goto_0
    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lqh/n;->d:Loh/c;

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lqh/n;
    .locals 1

    instance-of v0, p0, Lqh/n;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/n;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/n;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/n;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lqh/n;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/n;->c:Loh/E;

    if-eqz v1, :cond_0

    new-instance v2, Loh/K0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Loh/K0;-><init>(ILoh/g;)V

    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lqh/n;->d:Loh/c;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()[Lhi/q;
    .locals 4

    iget-object v0, p0, Lqh/n;->c:Loh/E;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lhi/q;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Lqh/n;->c:Loh/E;

    invoke-virtual {v3, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lhi/q;->v(Ljava/lang/Object;)Lhi/q;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public x()Loh/c;
    .locals 3

    new-instance v0, Loh/r0;

    iget-object v1, p0, Lqh/n;->d:Loh/c;

    invoke-virtual {v1}, Loh/c;->F()[B

    move-result-object v1

    iget-object v2, p0, Lqh/n;->d:Loh/c;

    invoke-virtual {v2}, Loh/c;->n()I

    move-result v2

    invoke-direct {v0, v1, v2}, Loh/r0;-><init>([BI)V

    return-object v0
.end method

.method public y()Lhi/b;
    .locals 1

    iget-object v0, p0, Lqh/n;->b:Lhi/b;

    return-object v0
.end method
