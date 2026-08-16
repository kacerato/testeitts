.class public final Lcom/jme3/shader/DefineList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final isSet:Ljava/util/BitSet;

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 2
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    .line 3
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "numValues must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/jme3/shader/DefineList;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    .line 7
    iget-object v0, p1, Lcom/jme3/shader/DefineList;->values:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    .line 8
    iget-object p1, p1, Lcom/jme3/shader/DefineList;->values:[I

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private rangeCheck(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public deepClone()Lcom/jme3/shader/DefineList;
    .locals 1

    new-instance v0, Lcom/jme3/shader/DefineList;

    invoke-direct {v0, p0}, Lcom/jme3/shader/DefineList;-><init>(Lcom/jme3/shader/DefineList;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/jme3/shader/DefineList;

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/jme3/shader/DefineList;

    iget-object v2, p0, Lcom/jme3/shader/DefineList;->values:[I

    array-length v2, v2

    iget-object v3, p1, Lcom/jme3/shader/DefineList;->values:[I

    array-length v3, v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    iget-object v3, p1, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/jme3/shader/DefineList;->values:[I

    array-length v4, v3

    if-ge v2, v4, :cond_5

    aget v3, v3, v2

    iget-object v4, p1, Lcom/jme3/shader/DefineList;->values:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public generateSource(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/jme3/shader/VarType;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {p0, v0, p1, p2}, Lcom/jme3/shader/DefineList;->generateSource(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateSource(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/jme3/shader/VarType;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/jme3/shader/DefineList;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/shader/DefineList;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    const-string v1, "#define "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    .line 4
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/jme3/shader/VarType;->Float:Lcom/jme3/shader/VarType;

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lcom/jme3/shader/DefineList;->values:[I

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 6
    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GLSL does not support NaN or Infinite float literals"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/jme3/shader/DefineList;->values:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v1, 0xa

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getBoolean(I)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    aget p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSet(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/jme3/shader/DefineList;->rangeCheck(I)V

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public set(IF)V
    .locals 0

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/DefineList;->set(II)V

    return-void
.end method

.method public set(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/shader/DefineList;->rangeCheck(I)V

    .line 2
    iget-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 3
    iget-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    aput p2, v0, p1

    return-void
.end method

.method public set(ILcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_3

    .line 7
    sget-object v0, Lcom/jme3/shader/DefineList$1;->$SwitchMap$com$jme3$shader$VarType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/jme3/shader/DefineList;->set(II)V

    goto :goto_0

    .line 9
    :cond_0
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/DefineList;->set(IZ)V

    goto :goto_0

    .line 10
    :cond_1
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/DefineList;->set(IF)V

    goto :goto_0

    .line 11
    :cond_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/DefineList;->set(II)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lcom/jme3/shader/DefineList;->unset(I)V

    :goto_0
    return-void
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/DefineList;->set(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/shader/DefineList;->unset(I)V

    :goto_0
    return-void
.end method

.method public setAll(Lcom/jme3/shader/DefineList;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/jme3/shader/DefineList;->values:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/jme3/shader/DefineList;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/shader/DefineList;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/jme3/shader/DefineList;->set(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unset(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jme3/shader/DefineList;->rangeCheck(I)V

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->isSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Lcom/jme3/shader/DefineList;->values:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    return-void
.end method
