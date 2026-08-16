.class public final Lcom/android/tools/r8/internal/Bu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/W90;)V
    .locals 6

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/tools/r8/internal/W90;->d:Ljava/util/List;

    iget v1, p1, Lcom/android/tools/r8/internal/W90;->c:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    iget p1, p1, Lcom/android/tools/r8/internal/W90;->e:I

    const-string v1, "getTypeList(...)"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/tools/r8/internal/cf;->a(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_1

    check-cast v4, Lcom/android/tools/r8/internal/M90;

    if-lt v3, p1, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/tools/r8/internal/M90;->a(Lcom/android/tools/r8/internal/M90;)Lcom/android/tools/r8/internal/L90;

    move-result-object v3

    iget v4, v3, Lcom/android/tools/r8/internal/L90;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/tools/r8/internal/L90;->e:I

    iput-boolean v2, v3, Lcom/android/tools/r8/internal/L90;->g:Z

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/L90;->c()Lcom/android/tools/r8/internal/M90;

    move-result-object v4

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    move-object v0, v1

    :cond_3
    const-string p1, "run(...)"

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    return-void
.end method
