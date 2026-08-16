.class public Lbl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lbl/k;

.field public b:Lbl/a;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Requires Parameter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lbl/a;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl/m;->b:Lbl/a;

    invoke-virtual {p1}, Lbl/a;->m()I

    move-result v0

    iput v0, p0, Lbl/m;->c:I

    invoke-virtual {p1}, Lbl/a;->l()I

    move-result v0

    iput v0, p0, Lbl/m;->e:I

    invoke-virtual {p1}, Lbl/a;->k()I

    move-result v0

    iput v0, p0, Lbl/m;->f:I

    iget v0, p0, Lbl/m;->e:I

    new-array v0, v0, [Lbl/k;

    iput-object v0, p0, Lbl/m;->a:[Lbl/k;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbl/m;->a:[Lbl/k;

    new-instance v2, Lbl/k;

    invoke-direct {v2, p1}, Lbl/k;-><init>(Lbl/a;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbl/m;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v1

    invoke-virtual {p1, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbl/k;->a(Lbl/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lbl/m;->e:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lbl/m;->e(I)Lbl/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbl/k;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c(Lbl/m;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lbl/m;->e:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v1}, Lbl/m;->e(I)Lbl/k;

    move-result-object v3

    invoke-virtual {p0, v1}, Lbl/m;->e(I)Lbl/k;

    move-result-object v4

    invoke-virtual {v4, v2}, Lbl/k;->f(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lbl/k;->x(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d([BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbl/m;->a:[Lbl/k;

    aget-object v1, v1, v0

    shl-int/lit8 v2, p2, 0x8

    add-int/2addr v2, v0

    int-to-short v2, v2

    invoke-virtual {v1, p1, v2}, Lbl/k;->B([BS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(I)Lbl/k;
    .locals 1

    iget-object v0, p0, Lbl/m;->a:[Lbl/k;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v1

    invoke-virtual {v1}, Lbl/k;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Lbl/k;Lbl/m;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v1

    invoke-virtual {p2, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lbl/k;->j(Lbl/k;Lbl/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbl/m;->a:[Lbl/k;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lbl/k;->n()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v1

    invoke-virtual {v1}, Lbl/k;->u()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbl/m;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k([BS)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    int-to-short v2, v2

    invoke-virtual {v1, p1, p2}, Lbl/k;->C([BS)V

    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l([BS)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lbl/m;->e:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbl/m;->e(I)Lbl/k;

    move-result-object v1

    iget v2, p0, Lbl/m;->e:I

    mul-int/2addr v2, p2

    add-int/2addr v2, v0

    int-to-short v2, v2

    invoke-virtual {v1, p1, v2}, Lbl/k;->D([BS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "\n["

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lbl/m;->e:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Inner Matrix "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lbl/m;->e(I)Lbl/k;

    move-result-object v0

    invoke-virtual {v0}, Lbl/k;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lbl/m;->e:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
