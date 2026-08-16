.class public Lvh/a;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/b;

.field public final c:[B

.field public final d:[B


# direct methods
.method public constructor <init>(Lhi/b;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lvh/a;->b:Lhi/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lvh/a;->c:[B

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lvh/a;->d:[B

    return-void
.end method

.method public constructor <init>(Lhi/b;[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lvh/a;->b:Lhi/b;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lvh/a;->c:[B

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lvh/a;->d:[B

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

    iput-object v0, p0, Lvh/a;->b:Lhi/b;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lvh/a;->c:[B

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, Lvh/a;->d:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/M;

    invoke-static {v0, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    iput-object v0, p0, Lvh/a;->c:[B

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    check-cast p1, Loh/M;

    invoke-static {p1, v1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    iput-object p1, p0, Lvh/a;->d:[B

    :goto_0
    return-void
.end method

.method public static u(Ljava/lang/Object;)Lvh/a;
    .locals 1

    instance-of v0, p0, Lvh/a;

    if-eqz v0, :cond_0

    check-cast p0, Lvh/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lvh/a;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lvh/a;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lvh/a;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lvh/a;->u(Ljava/lang/Object;)Lvh/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lvh/a;->b:Lhi/b;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lvh/a;->c:[B

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Loh/K0;

    new-instance v3, Loh/C0;

    iget-object v4, p0, Lvh/a;->c:[B

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/K0;

    new-instance v3, Loh/C0;

    iget-object v4, p0, Lvh/a;->d:[B

    invoke-direct {v3, v4}, Loh/C0;-><init>([B)V

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4, v3}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method
