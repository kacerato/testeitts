.class public Lyd/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lwd/b;

.field public final b:Lwd/b;

.field public final c:Lwd/b;

.field public d:Z

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    iput-object v0, p0, Lyd/j;->a:Lwd/b;

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    iput-object v0, p0, Lyd/j;->b:Lwd/b;

    new-instance v0, Lwd/b;

    invoke-direct {v0}, Lwd/b;-><init>()V

    iput-object v0, p0, Lyd/j;->c:Lwd/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyd/j;->d:Z

    iput-boolean v0, p0, Lyd/j;->e:Z

    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFCorruptException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/mokiat/data/front/error/WFCorruptException;

    const-string v1, "Could not parse int value."

    invoke-direct {v0, v1, p0}, Lcom/mokiat/data/front/error/WFCorruptException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()Lwd/d;
    .locals 1

    iget-boolean v0, p0, Lyd/j;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/j;->c:Lwd/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b()Lwd/d;
    .locals 1

    iget-boolean v0, p0, Lyd/j;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyd/j;->b:Lwd/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()Lwd/d;
    .locals 1

    iget-object v0, p0, Lyd/j;->a:Lwd/b;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mokiat/data/front/error/WFCorruptException;
        }
    .end annotation

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lyd/j;->a:Lwd/b;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-static {v2}, Lyd/j;->e(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lwd/b;->a(I)V

    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lyd/j;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyd/j;->b:Lwd/b;

    aget-object v4, p1, v2

    invoke-static {v4}, Lyd/j;->e(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lwd/b;->a(I)V

    :cond_1
    array-length v0, p1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_2

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lyd/j;->e:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lyd/j;->c:Lwd/b;

    aget-object p1, p1, v3

    invoke-static {p1}, Lyd/j;->e(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lwd/b;->a(I)V

    :cond_3
    return-void
.end method
