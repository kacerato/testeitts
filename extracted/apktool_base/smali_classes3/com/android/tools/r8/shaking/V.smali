.class public final Lcom/android/tools/r8/shaking/V;
.super Lcom/android/tools/r8/shaking/W;
.source "SourceFile"


# instance fields
.field public final c:Lcom/android/tools/r8/graph/A2;

.field public final d:Lcom/android/tools/r8/graph/A2;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/graph/A2;

.field public final g:Lcom/android/tools/r8/graph/A2;

.field public final h:Lcom/android/tools/r8/graph/A2;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/shaking/W;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    const-string p2, "Landroid/content/Intent;"

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    const-string v0, "Landroid/os/Parcel;"

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "getSerializableExtra"

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/shaking/V;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/V;->d:Lcom/android/tools/r8/graph/A2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->f4:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v2, "getSerializable"

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/V;->e:Lcom/android/tools/r8/graph/A2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->f4:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    iget-object v4, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v3, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/V;->f:Lcom/android/tools/r8/graph/A2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1, p2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    const-string v1, "readSerializable"

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p2

    iput-object p2, p0, Lcom/android/tools/r8/shaking/V;->g:Lcom/android/tools/r8/graph/A2;

    iget-object p2, p1, Lcom/android/tools/r8/graph/u1;->d6:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p1, Lcom/android/tools/r8/graph/u1;->y2:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p1, Lcom/android/tools/r8/graph/u1;->w2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object p2

    invoke-virtual {p1, v0, p2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/lang/String;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/shaking/V;->h:Lcom/android/tools/r8/graph/A2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/shaking/V;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/shaking/V;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v0, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v0, v2}, Lcom/android/tools/r8/shaking/W;->a(Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/tools/r8/shaking/W;->b:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    new-instance v5, Lcom/android/tools/r8/shaking/M1;

    invoke-direct {v5, v3, v4}, Lcom/android/tools/r8/shaking/M1;-><init>(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/j1;)V

    invoke-virtual {v1, v0, v5}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/shaking/X1;)V

    goto :goto_1

    :cond_6
    :goto_2
    return v2

    :cond_7
    :goto_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/tools/r8/shaking/W;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/VJ;I)V

    return v2
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/Z4;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V;->g:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V;->h:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/shaking/V;->d:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/shaking/W;->b:Lcom/android/tools/r8/shaking/N;

    iget-object p1, p1, Lcom/android/tools/r8/shaking/N;->U:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void
.end method
