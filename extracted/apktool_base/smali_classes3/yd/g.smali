.class public Lyd/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "newmtl"

.field public static final e:Ljava/lang/String; = "Ka"

.field public static final f:Ljava/lang/String; = "Kd"

.field public static final g:Ljava/lang/String; = "Ks"

.field public static final h:Ljava/lang/String; = "Tf"

.field public static final i:Ljava/lang/String; = "d"

.field public static final j:Ljava/lang/String; = "Ns"

.field public static final k:Ljava/lang/String; = "map_Ka"

.field public static final l:Ljava/lang/String; = "map_Kd"

.field public static final m:Ljava/lang/String; = "map_Ks"

.field public static final n:Ljava/lang/String; = "map_Ns"

.field public static final o:Ljava/lang/String; = "map_d"


# instance fields
.field public final a:Lyd/b;

.field public final b:Lyd/m;

.field public final c:Lyd/f;


# direct methods
.method public constructor <init>(Lyd/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyd/m;

    invoke-direct {v0}, Lyd/m;-><init>()V

    iput-object v0, p0, Lyd/g;->b:Lyd/m;

    new-instance v0, Lyd/f;

    invoke-direct {v0}, Lyd/f;-><init>()V

    iput-object v0, p0, Lyd/g;->c:Lyd/f;

    iput-object p1, p0, Lyd/g;->a:Lyd/b;

    return-void
.end method


# virtual methods
.method public final a(Lyd/m;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lyd/m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0, p1}, Lyd/f;->e(Lyd/m;)V

    iget-object p1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {p1}, Lyd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyd/g;->a:Lyd/b;

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0}, Lyd/f;->c()Lwd/c;

    move-result-object v0

    iget-object v1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v1}, Lyd/f;->b()Lwd/c;

    move-result-object v1

    iget-object v2, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v2}, Lyd/f;->a()Lwd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lyd/b;->i(Lwd/c;Lwd/c;Lwd/c;)V

    :cond_0
    return-void
.end method

.method public final c(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyd/g;->a(Lyd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing ambient texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-virtual {p1}, Lyd/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lyd/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0, p1}, Lyd/f;->e(Lyd/m;)V

    iget-object p1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {p1}, Lyd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyd/g;->a:Lyd/b;

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0}, Lyd/f;->c()Lwd/c;

    move-result-object v0

    iget-object v1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v1}, Lyd/f;->b()Lwd/c;

    move-result-object v1

    iget-object v2, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v2}, Lyd/f;->a()Lwd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lyd/b;->d(Lwd/c;Lwd/c;Lwd/c;)V

    :cond_0
    return-void
.end method

.method public final f(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyd/g;->a(Lyd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->m(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing diffuse texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lyd/m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->g(Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing dissolve factor."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyd/g;->a(Lyd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing dissolve texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lyd/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lyd/b;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing material name."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0, p1}, Lyd/f;->e(Lyd/m;)V

    iget-object p1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {p1}, Lyd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyd/g;->a:Lyd/b;

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0}, Lyd/f;->c()Lwd/c;

    move-result-object v0

    iget-object v1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v1}, Lyd/f;->b()Lwd/c;

    move-result-object v1

    iget-object v2, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v2}, Lyd/f;->a()Lwd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lyd/b;->l(Lwd/c;Lwd/c;Lwd/c;)V

    :cond_0
    return-void
.end method

.method public final k(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lyd/m;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->j(Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing specular exponent amount."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyd/g;->a(Lyd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing specular exponent texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lyd/g;->a(Lyd/m;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/g;->a:Lyd/b;

    invoke-interface {v0, p1}, Lyd/b;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing specular texture filename."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0, p1}, Lyd/f;->e(Lyd/m;)V

    iget-object p1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {p1}, Lyd/f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyd/g;->a:Lyd/b;

    iget-object v0, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v0}, Lyd/f;->c()Lwd/c;

    move-result-object v0

    iget-object v1, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v1}, Lyd/f;->b()Lwd/c;

    move-result-object v1

    iget-object v2, p0, Lyd/g;->c:Lyd/f;

    invoke-virtual {v2}, Lyd/f;->a()Lwd/c;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lyd/b;->e(Lwd/c;Lwd/c;Lwd/c;)V

    :cond_0
    return-void
.end method

.method public o(Ljava/io/BufferedReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {v0, p1}, Lyd/m;->j(Ljava/io/BufferedReader;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {v0}, Lyd/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {v0}, Lyd/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->d(Lyd/m;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "newmtl"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->i(Lyd/m;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "Ka"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->b(Lyd/m;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "Kd"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->e(Lyd/m;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "Ks"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->j(Lyd/m;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "Tf"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->n(Lyd/m;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->g(Lyd/m;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "Ns"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->k(Lyd/m;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "map_Ka"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->c(Lyd/m;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "map_Kd"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->f(Lyd/m;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "map_Ks"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->m(Lyd/m;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "map_Ns"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->l(Lyd/m;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    const-string v1, "map_d"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/g;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/g;->h(Lyd/m;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method
