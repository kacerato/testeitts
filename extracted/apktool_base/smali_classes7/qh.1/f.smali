.class public Lqh/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public final b:Lhi/w;

.field public final c:Lhi/E;

.field public d:Lfi/d;

.field public e:Lhi/F;


# direct methods
.method public constructor <init>(Lhi/w;Lhi/E;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lqh/f;-><init>(Lhi/w;Lhi/E;Lfi/d;Lhi/F;)V

    return-void
.end method

.method public constructor <init>(Lhi/w;Lhi/E;Lfi/d;Lhi/F;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lqh/f;->b:Lhi/w;

    iput-object p2, p0, Lqh/f;->c:Lhi/E;

    iput-object p3, p0, Lqh/f;->d:Lfi/d;

    iput-object p4, p0, Lqh/f;->e:Lhi/F;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/w;->w(Ljava/lang/Object;)Lhi/w;

    move-result-object v1

    iput-object v1, p0, Lqh/f;->b:Lhi/w;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Lhi/E;->v(Ljava/lang/Object;)Lhi/E;

    move-result-object v2

    iput-object v2, p0, Lqh/f;->c:Lhi/E;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v2

    if-eq v3, v2, :cond_2

    invoke-virtual {p1, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v2

    invoke-virtual {v2}, Loh/M;->g()I

    move-result v4

    if-eqz v4, :cond_1

    if-ne v4, v1, :cond_0

    invoke-static {v2, v0}, Lhi/F;->x(Loh/M;Z)Lhi/F;

    move-result-object v2

    iput-object v2, p0, Lqh/f;->e:Lhi/F;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in tagged field"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Lfi/d;->y(Loh/M;Z)Lfi/d;

    move-result-object v2

    iput-object v2, p0, Lqh/f;->d:Lfi/d;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static z(Ljava/lang/Object;)Lqh/f;
    .locals 1

    instance-of v0, p0, Lqh/f;

    if-eqz v0, :cond_0

    check-cast p0, Lqh/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lqh/f;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lqh/f;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lqh/f;->b:Lhi/w;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/f;->c:Lhi/E;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Lqh/f;->d:Lfi/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lqh/f;->e:Lhi/F;

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/F;
    .locals 1

    iget-object v0, p0, Lqh/f;->e:Lhi/F;

    return-object v0
.end method

.method public v()Lfi/d;
    .locals 1

    iget-object v0, p0, Lqh/f;->d:Lfi/d;

    return-object v0
.end method

.method public x()Lhi/E;
    .locals 1

    iget-object v0, p0, Lqh/f;->c:Lhi/E;

    return-object v0
.end method

.method public y()Lhi/w;
    .locals 1

    iget-object v0, p0, Lqh/f;->b:Lhi/w;

    return-object v0
.end method
