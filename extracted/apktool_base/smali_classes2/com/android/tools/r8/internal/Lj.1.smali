.class public final Lcom/android/tools/r8/internal/Lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/android/tools/r8/internal/mI;

.field public f:I

.field public final synthetic g:Lcom/android/tools/r8/internal/Mj;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Mj;)V
    .locals 3

    iput-object p1, p0, Lcom/android/tools/r8/internal/Lj;->g:Lcom/android/tools/r8/internal/Mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Mj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ltz p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/tools/r8/internal/Lj;->c:I

    iput p1, p0, Lcom/android/tools/r8/internal/Lj;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot coerce value to an empty range: maximum "

    const-string v2, " is less than minimum 0."

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget v0, p0, Lcom/android/tools/r8/internal/Lj;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lj;->e:Lcom/android/tools/r8/internal/mI;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Lj;->g:Lcom/android/tools/r8/internal/Mj;

    iget v3, v2, Lcom/android/tools/r8/internal/Mj;->b:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget v6, p0, Lcom/android/tools/r8/internal/Lj;->f:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/tools/r8/internal/Lj;->f:I

    if-ge v6, v3, :cond_2

    :cond_1
    iget-object v2, v2, Lcom/android/tools/r8/internal/Mj;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/mI;

    iget v1, p0, Lcom/android/tools/r8/internal/Lj;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lj;->g:Lcom/android/tools/r8/internal/Mj;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Mj;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/mI;-><init>(II)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lj;->e:Lcom/android/tools/r8/internal/mI;

    iput v4, p0, Lcom/android/tools/r8/internal/Lj;->d:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Lj;->g:Lcom/android/tools/r8/internal/Mj;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Mj;->c:Lcom/android/tools/r8/internal/By;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Mj;->a:Ljava/lang/String;

    iget v3, p0, Lcom/android/tools/r8/internal/Lj;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/android/tools/r8/internal/By;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/p50;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/tools/r8/internal/mI;

    iget v1, p0, Lcom/android/tools/r8/internal/Lj;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/Lj;->g:Lcom/android/tools/r8/internal/Mj;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Mj;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/tools/r8/internal/Iq0;->a(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/mI;-><init>(II)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Lj;->e:Lcom/android/tools/r8/internal/mI;

    iput v4, p0, Lcom/android/tools/r8/internal/Lj;->d:I

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lcom/android/tools/r8/internal/Lj;->c:I

    const/high16 v4, -0x80000000

    if-gt v2, v4, :cond_5

    sget-object v3, Lcom/android/tools/r8/internal/mI;->e:Lcom/android/tools/r8/internal/mI;

    goto :goto_0

    :cond_5
    new-instance v4, Lcom/android/tools/r8/internal/mI;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v3, v6}, Lcom/android/tools/r8/internal/mI;-><init>(II)V

    move-object v3, v4

    :goto_0
    iput-object v3, p0, Lcom/android/tools/r8/internal/Lj;->e:Lcom/android/tools/r8/internal/mI;

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/r8/internal/Lj;->c:I

    if-nez v0, :cond_6

    move v1, v5

    :cond_6
    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/tools/r8/internal/Lj;->d:I

    :goto_1
    iput v5, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lj;->a()V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Lj;->a()V

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Lj;->e:Lcom/android/tools/r8/internal/mI;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/tools/r8/internal/Lj;->e:Lcom/android/tools/r8/internal/mI;

    iput v1, p0, Lcom/android/tools/r8/internal/Lj;->b:I

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
