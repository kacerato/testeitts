.class public Lhi/K;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/F;

.field public c:Loh/s;

.field public d:Loh/c;


# direct methods
.method public constructor <init>(Lfi/d;Ljava/math/BigInteger;)V
    .locals 2

    .line 1
    new-instance v0, Lhi/F;

    new-instance v1, Lhi/E;

    invoke-direct {v1, p1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-direct {v0, v1}, Lhi/F;-><init>(Lhi/E;)V

    new-instance p1, Loh/s;

    invoke-direct {p1, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0, p1}, Lhi/K;-><init>(Lhi/F;Loh/s;)V

    return-void
.end method

.method public constructor <init>(Lhi/F;Ljava/math/BigInteger;)V
    .locals 1

    .line 2
    new-instance v0, Loh/s;

    invoke-direct {v0, p2}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Lhi/K;-><init>(Lhi/F;Loh/s;)V

    return-void
.end method

.method public constructor <init>(Lhi/F;Loh/s;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/K;->b:Lhi/F;

    iput-object p2, p0, Lhi/K;->c:Loh/s;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v0

    iput-object v0, p0, Lhi/K;->b:Lhi/F;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v0

    iput-object v0, p0, Lhi/K;->c:Loh/s;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/c;->H(Ljava/lang/Object;)Loh/c;

    move-result-object p1

    iput-object p1, p0, Lhi/K;->d:Loh/c;

    :cond_2
    return-void
.end method

.method public static u(Ljava/lang/Object;)Lhi/K;
    .locals 1

    instance-of v0, p0, Lhi/K;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/K;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/K;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/K;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Loh/M;Z)Lhi/K;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/K;->u(Ljava/lang/Object;)Lhi/K;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 2

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/K;->b:Lhi/F;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/K;->c:Loh/s;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lhi/K;->d:Loh/c;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public x()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/K;->b:Lhi/F;

    return-object v0
.end method

.method public y()Loh/c;
    .locals 1

    iget-object v0, p0, Lhi/K;->d:Loh/c;

    return-object v0
.end method

.method public z()Loh/s;
    .locals 1

    iget-object v0, p0, Lhi/K;->c:Loh/s;

    return-object v0
.end method
