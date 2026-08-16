.class public Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod:[I


# instance fields
.field public final dangerousMethod:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

.field public final expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public final typeToCheck:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public final typeToReport:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->values()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Contains:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsKey:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->ContainsValue:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Get:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->IndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->LastIndexOf:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Remove:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->RemoveAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->RetainAll:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod:[I

    return-object v0
.end method

.method private constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->dangerousMethod:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->typeToCheck:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->typeToReport:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    return-void
.end method

.method public static determineCheckForNonStaticSingleArgumentMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;
    .locals 7

    array-length p1, p4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    aget-object p4, p4, p1

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 v2, 0x3b

    if-eq p4, v1, :cond_1

    if-eq p4, v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->detectSelector([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    move-result-object p2

    if-nez p2, :cond_2

    return-object v0

    :cond_2
    const/16 v3, 0x100

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_5

    if-ne p4, v1, :cond_5

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[I

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/16 v5, 0x5b

    if-eq v3, v4, :cond_4

    const/4 v6, 0x6

    if-eq v3, v6, :cond_4

    const/4 v6, 0x7

    if-eq v3, v6, :cond_4

    const/16 v6, 0x8

    if-eq v3, v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-object p3, v3

    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    aget-object p3, p3, v1

    invoke-direct {p1, p2, p0, p3, v3}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p1

    :cond_4
    invoke-virtual {p3, v5, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-object p4, v3

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    aget-object p1, p4, p1

    invoke-direct {p3, p2, p0, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p3

    :cond_5
    :goto_0
    const/16 v3, 0x200

    invoke-virtual {p3, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-ne p4, v1, :cond_7

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[I

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v1, :cond_6

    if-eq v3, v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-object p4, v2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    aget-object p1, p4, p1

    invoke-direct {p3, p2, p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p3

    :cond_7
    if-ne p4, v2, :cond_9

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[I

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    const/4 v4, 0x5

    if-eq v3, v4, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {p3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v3, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedTypeWithActualArguments()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    aget-object p3, p3, p1

    move-object p4, v3

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    aget-object p1, p4, p1

    invoke-direct {p0, p2, p3, p1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p0

    :cond_9
    :goto_1
    const/16 v2, 0x400

    invoke-virtual {p3, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeBit(I)Z

    move-result v2

    if-eqz v2, :cond_b

    if-ne p4, v1, :cond_b

    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$DangerousMethod()[I

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/16 v3, 0x9

    if-eq v2, v3, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    goto :goto_2

    :cond_a
    const/16 v2, 0x5c

    invoke-virtual {p3, v2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->findSuperTypeOriginatingFrom(IZ)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance p3, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    move-object p4, v2

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;->typeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    aget-object p1, p4, p1

    invoke-direct {p3, p2, p0, p1, v2}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p3

    :cond_b
    :goto_2
    if-ne p4, v1, :cond_c

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    if-ne p2, p1, :cond_c

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    invoke-direct {p1, p2, p0, p3, p3}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p1

    :cond_c
    return-object v0
.end method

.method public static determineCheckForStaticTwoArgumentMethod(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;
    .locals 2

    array-length p1, p4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    aget-object p1, p4, p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/4 v0, 0x1

    aget-object p4, p4, v0

    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->original()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    iget p4, p4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    if-ne p1, v0, :cond_3

    if-eq p4, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->detectSelector([C)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    iget p2, p5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->id:I

    const/16 p4, 0x4a

    if-ne p2, p4, :cond_3

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    if-ne p1, p2, :cond_3

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;

    invoke-direct {p2, p1, p0, p3, p3}, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    return-object p2

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public isDangerous(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->typeToCheck:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->boxing(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/ast/UnlikelyArgumentCheck;->dangerousMethod:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;->Equals:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$DangerousMethod;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v2

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->reportUnlikelyCollectionMethodArgumentTypeStrict:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    xor-int/2addr p1, v4

    return p1

    :cond_2
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCapture()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    :cond_4
    invoke-virtual {v0, v1, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Z

    move-result p1

    if-nez p1, :cond_5

    return v4

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
