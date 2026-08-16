.class public abstract Lcom/android/tools/r8/internal/DP;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/internal/DP;
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->hasPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getPrimitive()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    move-result-object p0

    sget-object v0, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->getNumber()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    move-object p0, v0

    goto :goto_0

    .line 23
    :pswitch_0
    sget-object p0, Lcom/android/tools/r8/internal/kP;->j:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object p0, Lcom/android/tools/r8/internal/kP;->i:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object p0, Lcom/android/tools/r8/internal/kP;->h:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 26
    :pswitch_3
    sget-object p0, Lcom/android/tools/r8/internal/kP;->g:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 27
    :pswitch_4
    sget-object p0, Lcom/android/tools/r8/internal/kP;->f:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 28
    :pswitch_5
    sget-object p0, Lcom/android/tools/r8/internal/kP;->e:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 29
    :pswitch_6
    sget-object p0, Lcom/android/tools/r8/internal/kP;->d:Lcom/android/tools/r8/internal/kP;

    goto :goto_0

    .line 30
    :pswitch_7
    sget-object p0, Lcom/android/tools/r8/internal/kP;->c:Lcom/android/tools/r8/internal/kP;

    :goto_0
    if-ne p0, v0, :cond_0

    .line 31
    sget-object p0, Lcom/android/tools/r8/internal/CP;->b:Lcom/android/tools/r8/internal/CP;

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/CP;->c:Lcom/android/tools/r8/internal/nC;

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kP;->a()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/DP;

    return-object p0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getArray()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;

    move-result-object p0

    sget-object v0, Lcom/android/tools/r8/internal/JM;->c:Lcom/android/tools/r8/internal/JM;

    .line 36
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->hasBaseType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getBaseType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/DP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/internal/DP;

    move-result-object v0

    goto :goto_1

    .line 38
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/zP;->a:Lcom/android/tools/r8/internal/zP;

    .line 39
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->getDimensions()I

    move-result p0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 40
    new-instance v1, Lcom/android/tools/r8/internal/JM;

    invoke-direct {v1, v0, p0}, Lcom/android/tools/r8/internal/JM;-><init>(Lcom/android/tools/r8/internal/DP;I)V

    .line 41
    new-instance p0, Lcom/android/tools/r8/internal/AP;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/AP;-><init>(Lcom/android/tools/r8/internal/JM;)V

    return-object p0

    .line 42
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->hasClassPattern()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->getClassPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/YM;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern;)Lcom/android/tools/r8/internal/YM;

    move-result-object p0

    .line 44
    new-instance v0, Lcom/android/tools/r8/internal/BP;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/BP;-><init>(Lcom/android/tools/r8/internal/YM;)V

    return-object v0

    .line 45
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/zP;->a:Lcom/android/tools/r8/internal/zP;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/internal/DP;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    const-string v2, "Invalid type descriptor: "

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/YM;->c:Lcom/android/tools/r8/internal/YM;

    .line 5
    invoke-static {p0}, Lcom/android/tools/r8/internal/mP;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/CO;->c:Lcom/android/tools/r8/internal/CO;

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    iget-object v2, v1, Lcom/android/tools/r8/internal/CO;->a:Lcom/android/tools/r8/internal/mP;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/mP;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/YM;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/YM;-><init>(Lcom/android/tools/r8/internal/mP;Lcom/android/tools/r8/internal/DO;)V

    .line 12
    :goto_0
    new-instance p0, Lcom/android/tools/r8/internal/BP;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/BP;-><init>(Lcom/android/tools/r8/internal/YM;)V

    return-object p0

    .line 13
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 14
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/DP;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/DP;

    move-result-object p0

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/JM;

    invoke-direct {v0, p0, v3}, Lcom/android/tools/r8/internal/JM;-><init>(Lcom/android/tools/r8/internal/DP;I)V

    .line 17
    new-instance p0, Lcom/android/tools/r8/internal/AP;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/AP;-><init>(Lcom/android/tools/r8/internal/JM;)V

    return-object p0

    .line 18
    :cond_4
    sget-object v0, Lcom/android/tools/r8/internal/CP;->c:Lcom/android/tools/r8/internal/nC;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/CP;

    if-eqz v0, :cond_5

    return-object v0

    .line 19
    :cond_5
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;Lcom/android/tools/r8/internal/JM;)V
    .locals 2

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    iget v1, p1, Lcom/android/tools/r8/internal/JM;->b:I

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setDimensions(I)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/android/tools/r8/internal/JM;->a:Lcom/android/tools/r8/internal/DP;

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/DP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;->setBaseType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;

    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setArray(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternArray$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;Lcom/android/tools/r8/internal/YM;)V
    .locals 0

    .line 80
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/YM;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setClassPattern(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;Lcom/android/tools/r8/internal/kP;)V
    .locals 1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    sget-object v0, Lcom/android/tools/r8/internal/kP;->c:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_0

    .line 55
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_BOOLEAN:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 56
    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/kP;->d:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_1

    .line 57
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_BYTE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 58
    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/kP;->e:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_2

    .line 59
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_CHAR:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 60
    :cond_2
    sget-object v0, Lcom/android/tools/r8/internal/kP;->f:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_3

    .line 61
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_SHORT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 62
    :cond_3
    sget-object v0, Lcom/android/tools/r8/internal/kP;->g:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_4

    .line 63
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_INT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 64
    :cond_4
    sget-object v0, Lcom/android/tools/r8/internal/kP;->h:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_5

    .line 65
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_LONG:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 66
    :cond_5
    sget-object v0, Lcom/android/tools/r8/internal/kP;->i:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_6

    .line 67
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_FLOAT:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 68
    :cond_6
    sget-object v0, Lcom/android/tools/r8/internal/kP;->j:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_7

    .line 69
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_DOUBLE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    goto :goto_1

    .line 70
    :cond_7
    sget-boolean v0, Lcom/android/tools/r8/internal/kP;->l:Z

    if-nez v0, :cond_9

    .line 71
    sget-object v0, Lcom/android/tools/r8/internal/kP;->b:Lcom/android/tools/r8/internal/kP;

    if-ne p1, v0, :cond_8

    goto :goto_0

    .line 72
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 73
    :cond_9
    :goto_0
    sget-object p1, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;->PRIMITIVE_UNSPECIFIED:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;

    .line 74
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;->setPrimitive(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePatternPrimitive;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;
    .locals 5

    .line 46
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/android/tools/r8/internal/IC0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/IC0;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/JC0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/JC0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)V

    new-instance v3, Lcom/android/tools/r8/internal/KC0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/KC0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)V

    new-instance v4, Lcom/android/tools/r8/internal/LC0;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/LC0;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)V

    .line 48
    invoke-static {v1}, Lcom/android/tools/r8/internal/H4;->b(Ljava/lang/Runnable;)Ljava/util/function/Supplier;

    move-result-object v1

    .line 49
    invoke-static {v2}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v2

    .line 50
    invoke-static {v3}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v3

    .line 51
    invoke-static {v4}, Lcom/android/tools/r8/internal/H4;->a(Ljava/util/function/Consumer;)Ljava/util/function/Function;

    move-result-object v4

    .line 52
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/DP;->a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;

    return-object v0
.end method

.method public abstract a(Ljava/util/function/Supplier;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/lang/Object;
.end method
