.class public final Lcom/android/tools/r8/internal/WO;
.super Lcom/android/tools/r8/internal/OO;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/x40;

.field public final c:Lcom/android/tools/r8/internal/QO;

.field public final d:Lcom/android/tools/r8/internal/RO;

.field public final e:Lcom/android/tools/r8/internal/ZO;

.field public final f:Lcom/android/tools/r8/internal/UO;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/QO;Lcom/android/tools/r8/internal/RO;Lcom/android/tools/r8/internal/ZO;Lcom/android/tools/r8/internal/UO;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/OO;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/WO;->g:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_2
    if-nez v0, :cond_7

    if-eqz p5, :cond_6

    goto :goto_3

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    iput-object p2, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    iput-object p3, p0, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    iput-object p4, p0, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    iput-object p5, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;)Lcom/android/tools/r8/internal/WO;
    .locals 12

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/v40;->b:Lcom/android/tools/r8/internal/v40;

    .line 2
    sget-object v1, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    .line 3
    sget-object v2, Lcom/android/tools/r8/internal/RO;->b:Lcom/android/tools/r8/internal/RO;

    .line 4
    sget-object v3, Lcom/android/tools/r8/internal/XO;->b:Lcom/android/tools/r8/internal/XO;

    .line 5
    sget-object v4, Lcom/android/tools/r8/internal/SO;->a:Lcom/android/tools/r8/internal/SO;

    .line 6
    sget-boolean v5, Lcom/android/tools/r8/internal/VO;->f:Z

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasName()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/vP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern;)Lcom/android/tools/r8/internal/vP;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/RO;->a(Lcom/android/tools/r8/internal/vP;)Lcom/android/tools/r8/internal/RO;

    move-result-object v2

    :cond_1
    move-object v9, v2

    if-nez v5, :cond_3

    .line 9
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasReturnType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getReturnType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->hasVoidType()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 13
    sget-object v3, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->hasSomeType()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 15
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->getSomeType()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/DP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/internal/DP;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v5, v2, Lcom/android/tools/r8/internal/zP;

    if-eqz v5, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    new-instance v3, Lcom/android/tools/r8/internal/XO;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/XO;-><init>(Lcom/android/tools/r8/internal/DP;)V

    .line 19
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasParameterTypes()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getParameterTypes()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;

    move-result-object v2

    .line 21
    sget v4, Lcom/android/tools/r8/internal/hC;->c:I

    const/4 v4, 0x4

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern;->getTypesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;

    .line 24
    invoke-static {v6}, Lcom/android/tools/r8/internal/DP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern;)Lcom/android/tools/r8/internal/DP;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v7, v5, 0x1

    .line 26
    array-length v8, v4

    if-ge v8, v7, :cond_7

    .line 27
    array-length v8, v4

    invoke-static {v8, v7}, Lcom/android/tools/r8/internal/WB;->a(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 28
    :cond_7
    aput-object v6, v4, v5

    move v5, v7

    goto :goto_2

    .line 29
    :cond_8
    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/hC;->b(I[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 31
    sget-object v4, Lcom/android/tools/r8/internal/TO;->b:Lcom/android/tools/r8/internal/TO;

    :cond_9
    :goto_3
    move-object v11, v4

    goto :goto_4

    .line 32
    :cond_a
    new-instance v4, Lcom/android/tools/r8/internal/TO;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/TO;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 33
    :goto_4
    sget-boolean v2, Lcom/android/tools/r8/internal/VO;->f:Z

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QO;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 34
    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasAccess()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/QO;->k:Lcom/android/tools/r8/internal/QO;

    .line 36
    new-instance v2, Lcom/android/tools/r8/internal/PO;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/PO;-><init>()V

    .line 37
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->hasGeneralAccess()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getGeneralAccess()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/HO;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessGeneral;)Lcom/android/tools/r8/internal/HO;

    .line 39
    :cond_d
    sget-boolean v4, Lcom/android/tools/r8/internal/PO;->l:Z

    if-nez v4, :cond_f

    iget-object v5, v2, Lcom/android/tools/r8/internal/PO;->g:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    instance-of v5, v5, Lcom/android/tools/r8/internal/IX;

    if-eqz v5, :cond_e

    goto :goto_6

    .line 41
    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 42
    :cond_f
    :goto_6
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->hasSynchronizedPattern()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getSynchronizedPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 44
    sget-object v5, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_7

    :cond_10
    sget-object v5, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 45
    :goto_7
    iput-object v5, v2, Lcom/android/tools/r8/internal/PO;->g:Lcom/android/tools/r8/internal/LX;

    :cond_11
    if-nez v4, :cond_13

    .line 46
    iget-object v5, v2, Lcom/android/tools/r8/internal/PO;->h:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    instance-of v5, v5, Lcom/android/tools/r8/internal/IX;

    if-eqz v5, :cond_12

    goto :goto_8

    .line 48
    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 49
    :cond_13
    :goto_8
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->hasBridgePattern()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 50
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getBridgePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 51
    sget-object v5, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_9

    :cond_14
    sget-object v5, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 52
    :goto_9
    iput-object v5, v2, Lcom/android/tools/r8/internal/PO;->h:Lcom/android/tools/r8/internal/LX;

    :cond_15
    if-nez v4, :cond_17

    .line 53
    iget-object v5, v2, Lcom/android/tools/r8/internal/PO;->i:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    instance-of v5, v5, Lcom/android/tools/r8/internal/IX;

    if-eqz v5, :cond_16

    goto :goto_a

    .line 55
    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 56
    :cond_17
    :goto_a
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->hasNativePattern()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getNativePattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 58
    sget-object v5, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_b

    :cond_18
    sget-object v5, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 59
    :goto_b
    iput-object v5, v2, Lcom/android/tools/r8/internal/PO;->i:Lcom/android/tools/r8/internal/LX;

    :cond_19
    if-nez v4, :cond_1b

    .line 60
    iget-object v5, v2, Lcom/android/tools/r8/internal/PO;->j:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    instance-of v5, v5, Lcom/android/tools/r8/internal/IX;

    if-eqz v5, :cond_1a

    goto :goto_c

    .line 62
    :cond_1a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 63
    :cond_1b
    :goto_c
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->hasAbstractPattern()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 64
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getAbstractPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 65
    sget-object v5, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_d

    :cond_1c
    sget-object v5, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 66
    :goto_d
    iput-object v5, v2, Lcom/android/tools/r8/internal/PO;->j:Lcom/android/tools/r8/internal/LX;

    :cond_1d
    if-nez v4, :cond_1f

    .line 67
    iget-object v4, v2, Lcom/android/tools/r8/internal/PO;->k:Lcom/android/tools/r8/internal/LX;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    instance-of v4, v4, Lcom/android/tools/r8/internal/IX;

    if-eqz v4, :cond_1e

    goto :goto_e

    .line 69
    :cond_1e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 70
    :cond_1f
    :goto_e
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->hasStrictFpPattern()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 71
    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberAccessMethod;->getStrictFpPattern()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ModifierPattern;->getValue()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 72
    sget-object v1, Lcom/android/tools/r8/internal/LX;->b:Lcom/android/tools/r8/internal/JX;

    goto :goto_f

    :cond_20
    sget-object v1, Lcom/android/tools/r8/internal/LX;->c:Lcom/android/tools/r8/internal/KX;

    .line 73
    :goto_f
    iput-object v1, v2, Lcom/android/tools/r8/internal/PO;->k:Lcom/android/tools/r8/internal/LX;

    .line 74
    :cond_21
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/PO;->c()Lcom/android/tools/r8/internal/QO;

    move-result-object v1

    :cond_22
    move-object v8, v1

    .line 75
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->hasAnnotatedBy()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->getAnnotatedBy()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->hasName()Z

    move-result v0

    if-nez v0, :cond_24

    .line 78
    invoke-static {}, Lcom/android/tools/r8/internal/mP;->a()Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v0

    :cond_23
    :goto_10
    move-object v7, v0

    goto :goto_11

    .line 79
    :cond_24
    invoke-virtual {p0}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$AnnotatedByPattern;->getName()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/mP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ClassNamePattern;)Lcom/android/tools/r8/internal/mP;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/x40;->a(Lcom/android/tools/r8/internal/mP;)Lcom/android/tools/r8/internal/w40;

    move-result-object v0

    goto :goto_10

    .line 80
    :goto_11
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    sget-object p0, Lcom/android/tools/r8/internal/RO;->c:Lcom/android/tools/r8/internal/RO;

    if-ne p0, v9, :cond_25

    goto :goto_12

    .line 82
    :cond_25
    sget-object p0, Lcom/android/tools/r8/internal/RO;->d:Lcom/android/tools/r8/internal/RO;

    if-ne p0, v9, :cond_28

    .line 83
    :goto_12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result p0

    if-nez p0, :cond_27

    .line 84
    instance-of p0, v3, Lcom/android/tools/r8/internal/YO;

    if-eqz p0, :cond_26

    goto :goto_13

    .line 85
    :cond_26
    new-instance p0, Lcom/android/tools/r8/internal/FN;

    const-string v0, "Method constructor pattern must match \'void\' type."

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_27
    :goto_13
    sget-object p0, Lcom/android/tools/r8/internal/YO;->a:Lcom/android/tools/r8/internal/YO;

    move-object v10, p0

    goto :goto_14

    :cond_28
    move-object v10, v3

    .line 87
    :goto_14
    new-instance p0, Lcom/android/tools/r8/internal/WO;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/tools/r8/internal/WO;-><init>(Lcom/android/tools/r8/internal/x40;Lcom/android/tools/r8/internal/QO;Lcom/android/tools/r8/internal/RO;Lcom/android/tools/r8/internal/ZO;Lcom/android/tools/r8/internal/UO;)V

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/mP;)Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/WO;
    .locals 0

    return-object p0
.end method

.method public final d()Lcom/android/tools/r8/internal/IO;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    return-object v0
.end method

.method public final e()Lcom/android/tools/r8/internal/x40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/WO;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/WO;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    iget-object v3, p1, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    iget-object v3, p1, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    iget-object v3, p1, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/RO;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    iget-object v3, p1, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    iget-object p1, p1, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    iget-object v3, p0, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    iget-object v4, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;
    .locals 4

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    iget-object v1, v1, Lcom/android/tools/r8/internal/RO;->a:Lcom/android/tools/r8/internal/vP;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/vP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setName(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$StringPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ZO;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    instance-of v3, v1, Lcom/android/tools/r8/internal/YO;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeVoid;->getDefaultInstance()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeVoid;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;->setVoidType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypeVoid;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ZO;->a()Lcom/android/tools/r8/internal/DP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/DP;->a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;->setSomeType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$TypePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setReturnType(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodReturnTypePattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v1, Lcom/android/tools/r8/internal/SO;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/UO;->b()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;->setParameterTypes(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MethodParameterTypesPattern$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/u01;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/u01;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/QO;->b(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    new-instance v2, Lcom/android/tools/r8/internal/v01;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/v01;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$MemberPatternMethod$Builder;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/sP;->a(Lcom/android/tools/r8/internal/x40;Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/WO;->b:Lcom/android/tools/r8/internal/x40;

    new-instance v1, Lcom/android/tools/r8/internal/t01;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/t01;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/x40;->a(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WO;->c:Lcom/android/tools/r8/internal/QO;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WO;->d:Lcom/android/tools/r8/internal/RO;

    iget-object v3, p0, Lcom/android/tools/r8/internal/WO;->e:Lcom/android/tools/r8/internal/ZO;

    iget-object v4, p0, Lcom/android/tools/r8/internal/WO;->f:Lcom/android/tools/r8/internal/UO;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeepMethodPattern{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "access="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", returnType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", parameters="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
