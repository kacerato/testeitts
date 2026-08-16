.class public Lhi/s0;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Lhi/F;

.field public c:Lhi/K;

.field public d:Lhi/S;


# direct methods
.method public constructor <init>(Lhi/F;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lhi/s0;-><init>(Lhi/F;Lhi/K;Lhi/S;)V

    return-void
.end method

.method public constructor <init>(Lhi/F;Lhi/K;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lhi/s0;-><init>(Lhi/F;Lhi/K;Lhi/S;)V

    return-void
.end method

.method public constructor <init>(Lhi/F;Lhi/K;Lhi/S;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lhi/s0;->b:Lhi/F;

    iput-object p2, p0, Lhi/s0;->c:Lhi/K;

    iput-object p3, p0, Lhi/s0;->d:Lhi/S;

    return-void
.end method

.method public constructor <init>(Lhi/F;Lhi/S;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lhi/s0;-><init>(Lhi/F;Lhi/K;Lhi/S;)V

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    instance-of v1, v1, Loh/M;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v1

    invoke-static {v1}, Lhi/F;->w(Ljava/lang/Object;)Lhi/F;

    move-result-object v1

    iput-object v1, p0, Lhi/s0;->b:Lhi/F;

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Loh/E;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Loh/M;->R(Ljava/lang/Object;)Loh/M;

    move-result-object v3

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v0}, Lhi/K;->v(Loh/M;Z)Lhi/K;

    move-result-object v3

    iput-object v3, p0, Lhi/s0;->c:Lhi/K;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Loh/M;->g()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Lhi/S;->x(Loh/M;Z)Lhi/S;

    move-result-object v3

    iput-object v3, p0, Lhi/s0;->d:Lhi/S;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Loh/M;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    :cond_4
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
.end method

.method public static v(Ljava/lang/Object;)Lhi/s0;
    .locals 1

    instance-of v0, p0, Lhi/s0;

    if-eqz v0, :cond_0

    check-cast p0, Lhi/s0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lhi/s0;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Lhi/s0;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static w(Loh/M;Z)Lhi/s0;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Lhi/s0;->v(Ljava/lang/Object;)Lhi/s0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 5

    new-instance v0, Loh/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Lhi/s0;->b:Lhi/F;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    :cond_0
    iget-object v1, p0, Lhi/s0;->c:Lhi/K;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Loh/K0;

    invoke-direct {v3, v2, v2, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_1
    iget-object v1, p0, Lhi/s0;->d:Lhi/S;

    if-eqz v1, :cond_2

    new-instance v3, Loh/K0;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Loh/K0;-><init>(ZILoh/g;)V

    invoke-virtual {v0, v3}, Loh/h;->a(Loh/g;)V

    :cond_2
    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    return-object v1
.end method

.method public u()Lhi/K;
    .locals 1

    iget-object v0, p0, Lhi/s0;->c:Lhi/K;

    return-object v0
.end method

.method public x()Lhi/F;
    .locals 1

    iget-object v0, p0, Lhi/s0;->b:Lhi/F;

    return-object v0
.end method

.method public y()Lhi/S;
    .locals 1

    iget-object v0, p0, Lhi/s0;->d:Lhi/S;

    return-object v0
.end method
