.class public abstract Lcom/android/tools/r8/internal/W;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/JH;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/tools/r8/internal/JH;)Z
    .locals 2

    .line 3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/JH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/W;->add(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(Lcom/android/tools/r8/internal/TH;)Z
    .locals 2

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/internal/JH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/W;->j(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a([I)[I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    new-array p1, p1, [I

    .line 2
    :cond_1
    invoke-interface {p0}, Lcom/android/tools/r8/internal/JH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/SH;->a(Lcom/android/tools/r8/internal/PH;[I)I

    return-object p1
.end method

.method public add(I)Z
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Integer;)Z
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W;->add(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W;->add(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/JH;->h(I)Z

    move-result p1

    return p1
.end method

.method public j(I)Z
    .locals 2

    invoke-interface {p0}, Lcom/android/tools/r8/internal/JH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/W;->j(I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/tools/r8/internal/JH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    :cond_0
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
