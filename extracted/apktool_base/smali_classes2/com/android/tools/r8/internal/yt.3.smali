.class public Lcom/android/tools/r8/internal/yt;
.super Lcom/android/tools/r8/internal/zt;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final g:Lcom/android/tools/r8/internal/de;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/zt;-><init>(Lcom/android/tools/r8/internal/pu0;)V

    sget-boolean v0, Lcom/android/tools/r8/internal/yt;->h:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/de;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object v0, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    iput-object p2, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)Lcom/android/tools/r8/internal/yt;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/yt;->h:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 3
    iget-object v1, p1, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    iget-object v2, p2, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/graph/j;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    .line 8
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 9
    :cond_7
    :goto_3
    new-instance p0, Lcom/android/tools/r8/internal/yt;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/yt;-><init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/xt;
    .locals 3

    .line 10
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/yt;

    .line 13
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    .line 16
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/yt;-><init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)V

    return-object v0
.end method

.method public final b()Lcom/android/tools/r8/internal/de;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/zt;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/ae0;->b:Lcom/android/tools/r8/internal/p10;

    if-ne v0, p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/yt;

    .line 4
    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    .line 7
    invoke-virtual {v2, p1}, Lcom/android/tools/r8/internal/de;->c(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/yt;-><init>(Lcom/android/tools/r8/internal/de;Lcom/android/tools/r8/internal/de;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/yt;

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-super {p1}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/de;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    iget-object p1, p1, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/de;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final n()Lcom/android/tools/r8/internal/pu0;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-super {p0}, Lcom/android/tools/r8/internal/zt;->n()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/yt;->g:Lcom/android/tools/r8/internal/de;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DynamicTypeWithLowerBound(upperBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lowerBound="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
