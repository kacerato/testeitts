.class public Lhi/g0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:[B


# direct methods
.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lhi/g0;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lhi/g0;->b:[B

    return-void
.end method

.method public static u(Lhi/C;)Lhi/g0;
    .locals 1

    sget-object v0, Lhi/B;->f:Loh/x;

    invoke-static {p0, v0}, Lhi/C;->A(Lhi/C;Loh/x;)Loh/g;

    move-result-object p0

    invoke-static {p0}, Lhi/g0;->v(Ljava/lang/Object;)Lhi/g0;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lhi/g0;
    .locals 1

    instance-of v0, p0, Lhi/g0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/g0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/g0;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/g0;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/g0;
    .locals 0

    invoke-static {p0, p1}, Loh/y;->G(Loh/M;Z)Loh/y;

    move-result-object p0

    invoke-static {p0}, Lhi/g0;->v(Ljava/lang/Object;)Lhi/g0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/C0;

    invoke-virtual {p0}, Lhi/g0;->x()[B

    move-result-object v1

    invoke-direct {v0, v1}, Loh/C0;-><init>([B)V

    return-object v0
.end method

.method public x()[B
    .locals 1

    iget-object v0, p0, Lhi/g0;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
