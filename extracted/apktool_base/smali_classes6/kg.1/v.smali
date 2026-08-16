.class public final Lkg/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkg/t;Lyf/j;)V
    .locals 3
    .param p0    # Lkg/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "checkContext"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/t<",
            "*>;",
            "Lyf/j;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lkg/v$a;

    invoke-direct {v1, p0}, Lkg/v$a;-><init>(Lkg/t;)V

    invoke-interface {p1, v0, v1}, Lyf/j;->fold(Ljava/lang/Object;LMf/p;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lkg/t;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkg/t;->c:Lyf/j;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Leg/K0;Leg/K0;)Leg/K0;
    .locals 1
    .param p0    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Leg/K0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :goto_0
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Lmg/O;

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-interface {p0}, Leg/K0;->getParent()Leg/K0;

    move-result-object p0

    goto :goto_0
.end method

.method public static final c(LMf/p;)Ljg/i;
    .locals 1
    .param p0    # LMf/p;
        .annotation build Lnf/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LMf/p<",
            "-",
            "Ljg/j<",
            "-TT;>;-",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkg/v$b;

    invoke-direct {v0, p0}, Lkg/v$b;-><init>(LMf/p;)V

    return-object v0
.end method
