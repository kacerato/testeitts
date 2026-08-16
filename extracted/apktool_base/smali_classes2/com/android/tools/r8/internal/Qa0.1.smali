.class public abstract Lcom/android/tools/r8/internal/Qa0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/android/tools/r8/internal/Z90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/Z90;->d:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/tools/r8/internal/Z90;->g:Lcom/android/tools/r8/internal/M90;

    .line 10
    const-string p1, "getType(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 11
    iget p0, p0, Lcom/android/tools/r8/internal/Z90;->h:I

    .line 12
    iget-object p1, p1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/M90;

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    const-string p1, "No type in ProtoBuf.ValueParameter"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Lcom/android/tools/r8/internal/v90;Lcom/android/tools/r8/internal/Bu0;)Lcom/android/tools/r8/internal/M90;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/v90;->d:I

    and-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/v90;->h:Lcom/android/tools/r8/internal/M90;

    .line 3
    const-string p1, "getReturnType(...)"

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4
    iget p0, p0, Lcom/android/tools/r8/internal/v90;->i:I

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/Bu0;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/M90;

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    const-string p1, "No returnType in ProtoBuf.Property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
