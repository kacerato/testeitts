.class public Luh/o;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Luh/l;


# instance fields
.field public final b:Loh/x;

.field public final c:Loh/g;

.field public final d:Z


# direct methods
.method public constructor <init>(Loh/E;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    check-cast v0, Loh/x;

    iput-object v0, p0, Luh/o;->b:Loh/x;

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    const/16 v2, 0x80

    invoke-static {v0, v2}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object v0

    invoke-virtual {v0}, Loh/M;->X()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Loh/M;->g()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Loh/M;->O()Loh/v;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Luh/o;->c:Loh/g;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad tag for \'content\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    instance-of p1, p1, Loh/g0;

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Luh/o;->d:Z

    return-void

    :cond_2
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

.method public constructor <init>(Loh/x;Loh/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Luh/o;->b:Loh/x;

    iput-object p2, p0, Luh/o;->c:Loh/g;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Loh/g;->r()Loh/B;

    move-result-object p2

    instance-of v0, p2, Loh/C0;

    if-nez v0, :cond_1

    instance-of v0, p2, Loh/V0;

    if-nez v0, :cond_1

    instance-of p2, p2, Loh/G0;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Luh/o;->d:Z

    return-void
.end method

.method public static w(Ljava/lang/Object;)Luh/o;
    .locals 1

    instance-of v0, p0, Luh/o;

    if-eqz v0, :cond_0

    check-cast p0, Luh/o;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Luh/o;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, Luh/o;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Loh/M;Z)Luh/o;
    .locals 0

    invoke-static {p0, p1}, Loh/E;->H(Loh/M;Z)Loh/E;

    move-result-object p0

    invoke-static {p0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 4

    new-instance v0, Loh/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Loh/h;-><init>(I)V

    iget-object v1, p0, Luh/o;->b:Loh/x;

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    iget-object v1, p0, Luh/o;->c:Loh/g;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Luh/o;->d:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Loh/Z0;

    invoke-direct {v2, v3, v1}, Loh/Z0;-><init>(ILoh/g;)V

    :goto_0
    invoke-virtual {v0, v2}, Loh/h;->a(Loh/g;)V

    goto :goto_1

    :cond_0
    new-instance v2, Loh/l0;

    invoke-direct {v2, v3, v1}, Loh/l0;-><init>(ILoh/g;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v1, p0, Luh/o;->d:Z

    if-eqz v1, :cond_2

    new-instance v1, Loh/V0;

    invoke-direct {v1, v0}, Loh/V0;-><init>(Loh/h;)V

    goto :goto_2

    :cond_2
    new-instance v1, Loh/g0;

    invoke-direct {v1, v0}, Loh/g0;-><init>(Loh/h;)V

    :goto_2
    return-object v1
.end method

.method public u()Loh/g;
    .locals 1

    iget-object v0, p0, Luh/o;->c:Loh/g;

    return-object v0
.end method

.method public v()Loh/x;
    .locals 1

    iget-object v0, p0, Luh/o;->b:Loh/x;

    return-object v0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Luh/o;->d:Z

    return v0
.end method
