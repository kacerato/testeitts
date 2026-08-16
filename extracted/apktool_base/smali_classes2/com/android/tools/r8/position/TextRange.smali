.class public Lcom/android/tools/r8/position/TextRange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/position/Position;


# instance fields
.field private final a:Lcom/android/tools/r8/position/TextPosition;

.field private final b:Lcom/android/tools/r8/position/TextPosition;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/position/TextPosition;Lcom/android/tools/r8/position/TextPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/position/TextRange;->a:Lcom/android/tools/r8/position/TextPosition;

    iput-object p2, p0, Lcom/android/tools/r8/position/TextRange;->b:Lcom/android/tools/r8/position/TextPosition;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast p1, Lcom/android/tools/r8/position/TextRange;

    iget-object v2, p0, Lcom/android/tools/r8/position/TextRange;->a:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextRange;->getStart()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/position/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/position/TextRange;->b:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {p1}, Lcom/android/tools/r8/position/TextRange;->getEnd()Lcom/android/tools/r8/position/TextPosition;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/position/TextPosition;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/TextRange;->a:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v0}, Lcom/android/tools/r8/position/TextPosition;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Lcom/android/tools/r8/position/TextPosition;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/TextRange;->b:Lcom/android/tools/r8/position/TextPosition;

    return-object v0
.end method

.method public getStart()Lcom/android/tools/r8/position/TextPosition;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/position/TextRange;->a:Lcom/android/tools/r8/position/TextPosition;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/position/TextRange;->a:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v0}, Lcom/android/tools/r8/position/TextPosition;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/position/TextRange;->b:Lcom/android/tools/r8/position/TextPosition;

    invoke-virtual {v1}, Lcom/android/tools/r8/position/TextPosition;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextRange;->getStart()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextRange;->getEnd()Lcom/android/tools/r8/position/TextPosition;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text range from: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\', to: \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
