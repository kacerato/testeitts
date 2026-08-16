.class public final Lcom/android/tools/r8/internal/Ck0;
.super Lcom/android/tools/r8/internal/D40;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/D40;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/D40;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/D40;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/D40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    return-object v0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/internal/Ck0;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/tools/r8/internal/Ck0;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ck0;->b:Lcom/android/tools/r8/internal/D40;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".reverse()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
