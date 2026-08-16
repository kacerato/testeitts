.class public final Lcom/google/common/collect/O1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/O1$a;
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final g:I = 0x10

.field public static final h:I = 0x4

.field public static final i:I = -0x1


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lcom/google/common/collect/P1$q;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public e:Lcom/google/common/collect/P1$q;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public f:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/O1;->b:I

    iput v0, p0, Lcom/google/common/collect/O1;->c:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/collect/O1;
    .locals 5
    .annotation build LI2/a;
    .end annotation

    iget v0, p0, Lcom/google/common/collect/O1;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v1, v4, v0}, Lw2/H;->n0(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lw2/H;->d(Z)V

    iput p1, p0, Lcom/google/common/collect/O1;->c:I

    return-object p0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/O1;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/O1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method public d()Lw2/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/O1;->f:Lw2/m;

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/P1$q;->b()Lw2/m;

    move-result-object v1

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/m;

    return-object v0
.end method

.method public e()Lcom/google/common/collect/P1$q;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/O1;->d:Lcom/google/common/collect/P1$q;

    sget-object v1, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/P1$q;

    return-object v0
.end method

.method public f()Lcom/google/common/collect/P1$q;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/O1;->e:Lcom/google/common/collect/P1$q;

    sget-object v1, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    invoke-static {v0, v1}, Lw2/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/P1$q;

    return-object v0
.end method

.method public g(I)Lcom/google/common/collect/O1;
    .locals 5
    .annotation build LI2/a;
    .end annotation

    iget v0, p0, Lcom/google/common/collect/O1;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v1, v4, v0}, Lw2/H;->n0(ZLjava/lang/String;I)V

    if-ltz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lw2/H;->d(Z)V

    iput p1, p0, Lcom/google/common/collect/O1;->b:I

    return-object p0
.end method

.method public h(Lw2/m;)Lcom/google/common/collect/O1;
    .locals 4
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/collect/O1;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/O1;->f:Lw2/m;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "key equivalence was already set to %s"

    invoke-static {v2, v3, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/m;

    iput-object p1, p0, Lcom/google/common/collect/O1;->f:Lw2/m;

    iput-boolean v1, p0, Lcom/google/common/collect/O1;->a:Z

    return-object p0
.end method

.method public i()Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/O1;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->c()I

    move-result v1

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/P1;->c(Lcom/google/common/collect/O1;)Lcom/google/common/collect/P1;

    move-result-object v0

    return-object v0
.end method

.method public j(Lcom/google/common/collect/P1$q;)Lcom/google/common/collect/O1;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/O1;->d:Lcom/google/common/collect/P1$q;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Key strength was already set to %s"

    invoke-static {v2, v3, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/P1$q;

    iput-object v0, p0, Lcom/google/common/collect/O1;->d:Lcom/google/common/collect/P1$q;

    sget-object v0, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    if-eq p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/google/common/collect/O1;->a:Z

    :cond_1
    return-object p0
.end method

.method public k(Lcom/google/common/collect/P1$q;)Lcom/google/common/collect/O1;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/O1;->e:Lcom/google/common/collect/P1$q;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Value strength was already set to %s"

    invoke-static {v2, v3, v0}, Lw2/H;->x0(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/P1$q;

    iput-object v0, p0, Lcom/google/common/collect/O1;->e:Lcom/google/common/collect/P1$q;

    sget-object v0, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    if-eq p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/google/common/collect/O1;->a:Z

    :cond_1
    return-object p0
.end method

.method public l()Lcom/google/common/collect/O1;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/O1;->j(Lcom/google/common/collect/P1$q;)Lcom/google/common/collect/O1;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/common/collect/O1;
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/O1;->k(Lcom/google/common/collect/P1$q;)Lcom/google/common/collect/O1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/O1;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    :cond_0
    iget v1, p0, Lcom/google/common/collect/O1;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/O1;->d:Lcom/google/common/collect/P1$q;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/O1;->e:Lcom/google/common/collect/P1$q;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw2/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/O1;->f:Lw2/m;

    if-eqz v1, :cond_4

    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lw2/z$b;->s(Ljava/lang/Object;)Lw2/z$b;

    :cond_4
    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
