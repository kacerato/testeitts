.class public Lyd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "v"

.field public static final e:Ljava/lang/String; = "vt"

.field public static final f:Ljava/lang/String; = "vn"

.field public static final g:Ljava/lang/String; = "o"

.field public static final h:Ljava/lang/String; = "f"

.field public static final i:Ljava/lang/String; = "usemtl"

.field public static final j:Ljava/lang/String; = "mtllib"


# instance fields
.field public final a:Lyd/d;

.field public final b:Lyd/m;

.field public final c:Lyd/j;


# direct methods
.method public constructor <init>(Lyd/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyd/m;

    invoke-direct {v0}, Lyd/m;-><init>()V

    iput-object v0, p0, Lyd/k;->b:Lyd/m;

    new-instance v0, Lyd/j;

    invoke-direct {v0}, Lyd/j;-><init>()V

    iput-object v0, p0, Lyd/k;->c:Lyd/j;

    iput-object p1, p0, Lyd/k;->a:Lyd/d;

    return-void
.end method


# virtual methods
.method public final a(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/k;->a:Lyd/d;

    invoke-virtual {p1}, Lyd/m;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lyd/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lyd/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    iget-object v0, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v0}, Lyd/d;->e()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyd/k;->c:Lyd/j;

    invoke-virtual {p1, v0}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyd/j;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lyd/k;->c:Lyd/j;

    invoke-virtual {v1}, Lyd/j;->c()Lwd/d;

    move-result-object v1

    iget-object v2, p0, Lyd/k;->c:Lyd/j;

    invoke-virtual {v2}, Lyd/j;->b()Lwd/d;

    move-result-object v2

    iget-object v3, p0, Lyd/k;->c:Lyd/j;

    invoke-virtual {v3}, Lyd/j;->a()Lwd/d;

    move-result-object v3

    iget-object v4, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v4, v1, v2, v3}, Lyd/d;->d(Lwd/d;Lwd/d;Lwd/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {p1}, Lyd/d;->h()V

    return-void
.end method

.method public final c(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v2, v1}, Lyd/d;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lyd/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v0, p1}, Lyd/d;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyd/k;->a:Lyd/d;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lyd/d;->f(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final e(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lyd/m;->b(I)Lwd/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iget-object v2, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v2, v0, v1, p1}, Lyd/d;->g(Lwd/c;Lwd/c;Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient normal data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
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

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v0, p1}, Lyd/d;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Missing object name."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lyd/m;->b(I)Lwd/c;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iget-object v2, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v2, v0, v1, p1}, Lyd/d;->b(Lwd/c;Lwd/c;Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient texture coordinate data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(Lyd/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lyd/m;->b(I)Lwd/c;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lyd/m;->b(I)Lwd/c;

    move-result-object v3

    invoke-virtual {p1, v1}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iget-object v1, p0, Lyd/k;->a:Lyd/d;

    invoke-interface {v1, v0, v2, v3, p1}, Lyd/d;->j(Lwd/c;Lwd/c;Lwd/c;Lwd/c;)V

    return-void

    :cond_0
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient vertex data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/io/BufferedReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFException;,
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {v0, p1}, Lyd/m;->j(Ljava/io/BufferedReader;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {v0}, Lyd/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {v0}, Lyd/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->a(Lyd/m;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "v"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->h(Lyd/m;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "vt"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->g(Lyd/m;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "vn"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->e(Lyd/m;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "o"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->f(Lyd/m;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->b(Lyd/m;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "mtllib"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->c(Lyd/m;)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    const-string v1, "usemtl"

    invoke-virtual {v0, v1}, Lyd/m;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/k;->b:Lyd/m;

    invoke-virtual {p0, v0}, Lyd/k;->d(Lyd/m;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
