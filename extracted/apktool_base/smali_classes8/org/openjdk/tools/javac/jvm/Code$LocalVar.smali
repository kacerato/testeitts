.class Lorg/openjdk/tools/javac/jvm/Code$LocalVar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;
    }
.end annotation


# instance fields
.field aliveRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;",
            ">;"
        }
    .end annotation
.end field

.field final reg:C

.field final sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget p1, p1, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->adr:I

    int-to-char p1, p1

    iput-char p1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->reg:C

    return-void
.end method


# virtual methods
.method public closeRange(C)V
    .locals 3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->isLastRangeInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-char v1, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    const v2, 0xffff

    if-ne v1, v2, :cond_1

    iput-char p1, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->removeLastRange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dup()Lorg/openjdk/tools/javac/jvm/Code$LocalVar;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;-><init>(Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    return-object v0
.end method

.method public firstRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    :goto_0
    return-object v0
.end method

.method public getWidestRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;-><init>(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->firstRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v1

    iget-char v2, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    iget-char v1, v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    iget-char v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    sub-int/2addr v1, v0

    add-int/2addr v2, v1

    int-to-char v1, v2

    new-instance v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    invoke-direct {v2, p0, v0, v1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;-><init>(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;CC)V

    return-object v2
.end method

.method public hasOpenRange()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v0

    iget-char v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    const v2, 0xffff

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isLastRangeInitialized()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v0

    iget-char v0, v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    const v2, 0xffff

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    :goto_0
    return-object v0
.end method

.method public openRange(C)V
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->hasOpenRange()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    new-instance v1, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;-><init>(Lorg/openjdk/tools/javac/jvm/Code$LocalVar;C)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeLastRange()V
    .locals 2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->lastRange()Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, "empty local var"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->reg:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/jvm/Code$LocalVar;->aliveRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;

    const-string v3, " starts at pc="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v3, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->start_pc:C

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, v2, Lorg/openjdk/tools/javac/jvm/Code$LocalVar$Range;->length:C

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
