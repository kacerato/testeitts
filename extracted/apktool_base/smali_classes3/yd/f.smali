.class public Lyd/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "spectral"

.field public static final e:Ljava/lang/String; = "xyz"


# instance fields
.field public a:Lwd/c;

.field public b:Lwd/c;

.field public c:Lwd/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lwd/c;
    .locals 1

    iget-object v0, p0, Lyd/f;->c:Lwd/c;

    return-object v0
.end method

.method public b()Lwd/c;
    .locals 1

    iget-object v0, p0, Lyd/f;->b:Lwd/c;

    return-object v0
.end method

.method public c()Lwd/c;
    .locals 1

    iget-object v0, p0, Lyd/f;->a:Lwd/c;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lyd/f;->a:Lwd/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/f;->b:Lwd/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/f;->c:Lwd/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Lyd/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFCorruptException;
        }
    .end annotation

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "spectral"

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "xyz"

    invoke-virtual {p1, v1}, Lyd/m;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lyd/m;->b(I)Lwd/c;

    move-result-object v0

    iput-object v0, p0, Lyd/f;->a:Lwd/c;

    invoke-virtual {p1}, Lyd/m;->e()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v1}, Lyd/m;->b(I)Lwd/c;

    move-result-object v0

    iput-object v0, p0, Lyd/f;->b:Lwd/c;

    invoke-virtual {p1, v1}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iput-object p1, p0, Lyd/f;->c:Lwd/c;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object v0

    iput-object v0, p0, Lyd/f;->b:Lwd/c;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lyd/m;->b(I)Lwd/c;

    move-result-object p1

    iput-object p1, p0, Lyd/f;->c:Lwd/c;

    :goto_0
    return-void

    :cond_3
    new-instance p1, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v0, "Insufficient color data."

    invoke-direct {p1, v0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
