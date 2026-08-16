.class public Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus:[I


# instance fields
.field protected environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public inferredReturnType:Z

.field public inferredWithUncheckedConversion:Z

.field public isRaw:Z

.field public targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field private tiebreakMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public wasInferred:Z


# direct methods
.method public static synthetic $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[I
    .locals 3

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->values()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->MISMATCH:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->NULL_PROBLEM:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->OK:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;->UNCHECKED:Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus:[I

    return-object v0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/RawTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;-><init>()V

    .line 2
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 3
    array-length v1, v0

    .line 4
    new-array v2, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_6

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    .line 6
    iget-wide v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 7
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 8
    iget p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 9
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    if-nez p2, :cond_0

    .line 10
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_1

    :cond_0
    move-object p3, p2

    :goto_1
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 11
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 12
    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 13
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result p3

    if-nez p3, :cond_1

    move v0, v3

    :cond_1
    if-eqz v0, :cond_2

    .line 15
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_2

    .line 16
    :cond_2
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    .line 17
    :goto_2
    invoke-static {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz v0, :cond_3

    .line 18
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    goto :goto_3

    .line 19
    :cond_3
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    .line 20
    :goto_3
    invoke-static {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p3, :cond_4

    .line 21
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_4
    if-eqz v0, :cond_5

    .line 22
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_4

    .line 23
    :cond_5
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    .line 24
    :goto_4
    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 25
    iput-boolean v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->wasInferred:Z

    .line 26
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    .line 27
    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    return-void

    .line 28
    :cond_6
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    invoke-virtual {p3, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 6

    .line 29
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;-><init>()V

    .line 30
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 31
    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredWithUncheckedConversion:Z

    .line 32
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->targetType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 33
    iget p6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 34
    iget-object p6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 35
    iget-object p6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    .line 36
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isParameterizedType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {p3, v0, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 38
    :cond_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 39
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 40
    iput-boolean p6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    .line 41
    iget-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 42
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 43
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p4, :cond_2

    .line 44
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p0, p2, p3, p5}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->getErasure18_5_2(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 45
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length p2, p2

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move p2, p6

    .line 46
    :goto_0
    iget-object p4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length p5, p4

    if-lt p2, p5, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    iget-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object p4, p4, p2

    invoke-virtual {p0, p4, p3, p6}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->getErasure18_5_2(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p4

    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object p4, p5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 48
    :cond_2
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 49
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {p0, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 50
    :goto_1
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez p2, :cond_3

    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 51
    :cond_3
    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 p4, 0x80

    and-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    goto :goto_4

    .line 52
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    or-long/2addr p2, p4

    .line 53
    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_4

    .line 54
    :cond_5
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    move p3, p6

    :goto_2
    if-lt p3, p2, :cond_8

    .line 55
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v0, p2

    move p2, p6

    :goto_3
    if-lt p2, v0, :cond_6

    goto :goto_4

    .line 56
    :cond_6
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object p3, p3, p2

    iget-wide v4, p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v4, p4

    cmp-long p3, v4, v2

    if-eqz p3, :cond_7

    .line 57
    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr p2, p4

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_4

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 58
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v0, v0, p3

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v0, p4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    .line 59
    iget-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr p2, p4

    iput-wide p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_4
    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->wasInferred:Z

    .line 61
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    .line 62
    iget p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->defaultNullness:I

    .line 63
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, p2

    :goto_5
    if-lt p6, v0, :cond_9

    return-void

    .line 64
    :cond_9
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p2, p2, p6

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne p2, p3, :cond_b

    .line 65
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object p2, p2, p6

    iget-wide p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    const-wide/high16 p4, 0x180000000000000L

    and-long/2addr p2, p4

    const-wide/high16 p4, 0x100000000000000L

    cmp-long p2, p2, p4

    if-nez p2, :cond_b

    .line 66
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    if-nez p2, :cond_a

    .line 67
    new-array p2, v0, [Ljava/lang/Boolean;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    .line 68
    :cond_a
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameterNonNullness:[Ljava/lang/Boolean;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p3, p2, p6

    :cond_b
    add-int/lit8 p6, p6, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method

.method public static computeCompatibleMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v4, :cond_0

    invoke-static {v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;->ensureNullnessIsKnown(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    :cond_0
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->genericTypeArguments()[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    array-length v9, v5

    array-length v10, v4

    if-eq v9, v10, :cond_1

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v3, 0xb

    invoke-direct {v1, v0, v2, v5, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v1

    :cond_1
    invoke-virtual {v3, v0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v3

    move-object v9, v8

    move-object v11, v9

    goto/16 :goto_2

    :cond_2
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v5

    iget-wide v9, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v11, 0x340000

    cmp-long v9, v9, v11

    if-ltz v9, :cond_3

    invoke-static/range {p0 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->computeCompatibleMethod18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v9, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;

    invoke-direct {v9, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    invoke-static {v2, v0, v1, v3, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferFromArgumentTypes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v10

    if-nez v10, :cond_4

    return-object v8

    :cond_4
    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->hasUnresolvedTypeArgument()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-boolean v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->isUnchecked:Z

    if-eqz v3, :cond_5

    iget-object v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v3

    new-array v11, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v7, v11, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    move-object v11, v8

    :goto_0
    iget-object v3, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v3, v5, :cond_7

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-eqz v3, :cond_6

    iput-boolean v6, v9, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->hasExplicitExpectedType:Z

    goto :goto_1

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v3

    :goto_1
    iput-object v3, v9, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :cond_7
    invoke-direct {v10, v2, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferFromExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v3

    if-nez v3, :cond_a

    return-object v8

    :cond_8
    iget-wide v11, v5, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->sourceLevel:J

    const-wide/32 v13, 0x330000

    cmp-long v5, v11, v13

    if-nez v5, :cond_9

    iget-object v5, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sget-object v11, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v5, v11, :cond_9

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->mentionsAny([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v11, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->uncapture(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v11

    iget-object v12, v10, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v12, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v5, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v11, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;

    invoke-direct {v11, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    iget-object v12, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v12, v2, v5, v11, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    invoke-static {v2, v0, v1, v3, v11}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferFromArgumentTypes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v12, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v12, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isCompatibleWith(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v2, v3, v1, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->parameterCompatibilityLevel(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)I

    move-result v5

    if-le v5, v13, :cond_9

    move-object v9, v11

    move-object v11, v8

    goto :goto_2

    :cond_9
    move-object v11, v8

    move-object v3, v10

    :cond_a
    :goto_2
    if-eqz v9, :cond_b

    new-instance v5, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;

    iget-object v9, v9, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-direct {v5, v4, v9, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    goto :goto_3

    :cond_b
    move-object v5, v3

    :goto_3
    array-length v9, v4

    move v10, v7

    :goto_4
    if-lt v10, v9, :cond_c

    return-object v3

    :cond_c
    aget-object v12, v4, v10

    iget-object v13, v3, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v13, v13, v10

    instance-of v14, v13, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz v14, :cond_d

    move-object v14, v13

    goto :goto_5

    :cond_d
    new-instance v14, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;

    invoke-direct {v14, v4, v8, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding$LingeringTypeVariableEliminator;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)V

    invoke-static {v14, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v14

    :goto_5
    if-eqz v11, :cond_e

    aget-object v15, v11, v10

    if-nez v15, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[I

    move-result-object v15

    invoke-virtual {v12, v5, v14, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v15, v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_10

    const/4 v15, 0x4

    if-eq v14, v15, :cond_f

    goto :goto_6

    :cond_f
    array-length v2, v1

    add-int/lit8 v4, v2, 0x2

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v1, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v13, v4, v2

    add-int/2addr v2, v6

    aput-object v12, v4, v2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v2, 0xa

    invoke-direct {v1, v3, v0, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object v1

    :cond_10
    iget-wide v12, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v14, 0x100

    or-long/2addr v12, v14

    iput-wide v12, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4
.end method

.method public static computeCompatibleMethod18(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->checkingPotentialCompatibility()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    iget-object v4, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->compilerOptions()Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    move-result-object v9

    array-length v5, v1

    new-array v10, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v1

    array-length v11, v4

    const/4 v13, 0x1

    move v15, v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_0
    if-lt v14, v6, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v11

    iget-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    if-nez v14, :cond_2

    iput-object v3, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    :cond_2
    const/16 v17, 0x0

    :try_start_0
    instance-of v1, v8, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    if-eqz v1, :cond_3

    move-object v1, v8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isTrulyExpression()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v8

    check-cast v1, Lorg/eclipse/jdt/internal/compiler/ast/Expression;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/compiler/ast/Expression;->isPolyExpression(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v13

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v13

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    array-length v4, v4

    if-ne v5, v4, :cond_6

    if-eqz v16, :cond_5

    const/4 v4, 0x2

    goto :goto_3

    :cond_5
    move v4, v13

    :goto_3
    iput v4, v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    invoke-virtual {v3, v0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->solve(Z)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object/from16 v4, v17

    :goto_4
    const/4 v5, 0x3

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v8, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->freshInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    move-result-object v3

    iput v5, v3, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferenceKind:I

    invoke-virtual {v3, v0, v10, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferInvocationApplicability(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)V

    invoke-virtual {v3, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->solve(Z)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v4
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    move-object v6, v3

    if-nez v4, :cond_8

    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v17

    :cond_8
    :try_start_1
    invoke-virtual {v6, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->isResolved(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iput v13, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->invocationTargetType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;->getExpressionContext()Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jdt/internal/compiler/ast/ExpressionContext;->definesTargetType()Z

    move-result v16

    if-eqz v16, :cond_a

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v12, v4

    const/16 v16, 0x0

    const/16 v18, 0x0

    goto :goto_8

    :cond_a
    :goto_5
    invoke-virtual {v6, v3, v8, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->inferInvocationType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;

    move-result-object v1

    iget v12, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->stepCompleted:I

    if-ne v12, v5, :cond_b

    move v5, v13

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    if-nez v1, :cond_c

    move v12, v13

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    move/from16 v18, v5

    move/from16 v16, v12

    if-eqz v12, :cond_d

    move-object v12, v4

    goto :goto_8

    :cond_d
    move-object v12, v1

    :goto_8
    if-eqz v12, :cond_1c

    invoke-virtual {v6, v2, v8, v12}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getSolutions([Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    iget-boolean v5, v6, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->usesUncheckedConversion:Z

    move-object/from16 v2, p0

    move-object v0, v3

    move-object v3, v4

    move v4, v5

    move/from16 v5, v16

    move-object/from16 v19, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object v1

    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v2, :cond_e

    if-eqz v15, :cond_e

    if-eqz v0, :cond_f

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v3, v19

    goto :goto_a

    :cond_f
    :goto_9
    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    move-object/from16 v3, v19

    invoke-virtual {v3, v12, v2, v1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->forwardResults(Lorg/eclipse/jdt/internal/compiler/lookup/BoundSet;Lorg/eclipse/jdt/internal/compiler/ast/Invocation;Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_a
    if-eqz v16, :cond_12

    :try_start_2
    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->getReturnProblemMethodIfNeeded(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    instance-of v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_12

    if-eqz v15, :cond_11

    :try_start_3
    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v2, :cond_10

    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    goto :goto_b

    :cond_10
    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v2, :cond_11

    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    :goto_b
    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_e

    :cond_12
    if-eqz v18, :cond_16

    :try_start_4
    iget-boolean v0, v9, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v0, :cond_13

    invoke-static {v1, v8, v7}, Lorg/eclipse/jdt/internal/compiler/ast/NullAnnotationMatching;->checkForContradictions(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_13
    invoke-virtual {v1, v7, v10, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->boundCheck18(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_17

    if-eqz v15, :cond_15

    :try_start_5
    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v2, :cond_14

    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    goto :goto_c

    :cond_14
    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v2, :cond_15

    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    :try_end_5
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_15
    :goto_c
    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v0

    :cond_16
    :try_start_6
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/PolyParameterizedGenericMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v1, v0

    :cond_17
    if-eqz v15, :cond_19

    :try_start_7
    instance-of v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-eqz v0, :cond_18

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    goto :goto_d

    :cond_18
    instance-of v0, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v0, :cond_19

    move-object v0, v8

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v0, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_19
    :goto_d
    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v1

    :goto_e
    if-eqz v15, :cond_1b

    :try_start_8
    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    if-nez v2, :cond_1a

    instance-of v2, v8, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    if-eqz v2, :cond_1b

    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    goto :goto_f

    :cond_1a
    move-object v2, v8

    check-cast v2, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;

    invoke-interface {v2, v1, v3}, Lorg/eclipse/jdt/internal/compiler/ast/Invocation;->registerInferenceContext(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;)V

    :cond_1b
    :goto_f
    throw v0
    :try_end_8
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/InferenceFailureException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1c
    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v17

    :cond_1d
    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v17

    :goto_10
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->problemReporter()Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->genericInferenceError(Ljava/lang/String;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    return-object v17

    :goto_11
    iput-object v14, v11, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->currentInferenceContext:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    throw v0

    :cond_1e
    if-ge v14, v11, :cond_1f

    aget-object v12, v4, v14

    goto :goto_12

    :cond_1f
    add-int/lit8 v12, v11, -0x1

    aget-object v12, v4, v12

    :goto_12
    aget-object v0, v1, v14

    invoke-virtual {v0, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isProperType(Z)Z

    move-result v17

    and-int v15, v15, v17

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v13

    invoke-virtual {v12}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isPrimitiveType()Z

    move-result v12

    if-eq v13, v12, :cond_20

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v12

    invoke-virtual {v12, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->computeBoxingType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    aput-object v0, v10, v14

    const/16 v16, 0x1

    goto :goto_13

    :cond_20
    aput-object v0, v10, v14

    :goto_13
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method private static inferFromArgumentTypes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
    .locals 9

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isVarargs()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    array-length v0, p3

    add-int/lit8 v4, v0, -0x1

    array-length v5, p2

    move v6, v2

    :goto_0
    if-lt v6, v4, :cond_5

    if-ge v4, v5, :cond_8

    aget-object p3, p3, v4

    aget-object v6, p2, v4

    if-ne v0, v5, :cond_2

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->NULL:Lorg/eclipse/jdt/internal/compiler/lookup/NullTypeBinding;

    if-ne v6, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->dimensions()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isBaseType()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p3, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->elementsType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    :goto_1
    if-lt v4, v5, :cond_3

    goto :goto_3

    :cond_3
    aget-object v0, p2, v4

    invoke-virtual {p3, p0, v0, p4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v0, p4, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v0, v3, :cond_4

    return-object v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    aget-object v7, p3, v6

    aget-object v8, p2, v6

    invoke-virtual {v7, p0, v8, p4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v7, p4, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v7, v3, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    array-length v0, p3

    move v4, v2

    :goto_2
    if-lt v4, v0, :cond_e

    :cond_8
    :goto_3
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-static {p0, v5, p4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->resolveSubstituteConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;Z)Z

    move-result p2

    if-nez p2, :cond_9

    return-object v1

    :cond_9
    iget-object v6, p4, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v5

    move p2, v2

    move-object p3, v6

    :goto_4
    if-lt p2, v7, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createParameterizedGenericMethod(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;

    move-result-object p0

    return-object p0

    :cond_a
    aget-object p4, v6, p2

    if-nez p4, :cond_c

    if-ne p3, v6, :cond_b

    new-array p3, v7, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v6, v2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    aget-object p4, v5, p2

    aput-object p4, p3, p2

    goto :goto_5

    :cond_c
    if-eq p3, v6, :cond_d

    aput-object p4, p3, p2

    :cond_d
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_e
    aget-object v5, p3, v4

    aget-object v6, p2, v4

    invoke-virtual {v5, p0, v6, p4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v5, p4, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v5, v3, :cond_f

    return-object v1

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private inferFromExpectedType(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;)Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v4, v3

    iget-object v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->expectedType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    iget-object v9, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {v9, v1, v5, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v5, v8, :cond_0

    return-object v7

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-lt v9, v4, :cond_c

    invoke-static {v1, v3, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->resolveSubstituteConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v7

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v4, :cond_a

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v3

    iput-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->hasExplicitExpectedType:Z

    if-eqz v2, :cond_2

    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_3

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_3
    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v6, 0x80

    and-long v3, v1, v6

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-wide v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v6

    cmp-long v3, v3, v9

    if-eqz v3, :cond_5

    or-long/2addr v1, v6

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_5

    :cond_5
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v11, v1

    const/4 v1, 0x0

    :goto_3
    if-lt v1, v11, :cond_8

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_4
    if-lt v5, v2, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v1, v1, v5

    iget-wide v3, v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v9

    if-eqz v1, :cond_7

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v1, v6

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v2, v2, v1

    iget-wide v2, v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->tagBits:J

    and-long/2addr v2, v6

    cmp-long v2, v2, v9

    if-eqz v2, :cond_9

    iget-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr v1, v6

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_5
    return-object v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iget-object v6, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v7, v6, v1

    if-eqz v7, :cond_b

    iget-object v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v7, v6, v1

    goto :goto_6

    :cond_b
    iget-object v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v9, v3, v1

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->upperBound()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v9

    aput-object v9, v6, v1

    aput-object v9, v7, v1

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    aget-object v10, v3, v9

    iget-object v11, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v11, v11, v9

    invoke-static {v11, v10}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v12

    iget-object v13, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->firstBound:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v14, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v13, v14}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object v13, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superclass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    invoke-static {v0, v13}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v13

    invoke-virtual {v11, v1, v13, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v14, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v14, v8, :cond_d

    return-object v7

    :cond_d
    if-eqz v12, :cond_e

    invoke-virtual {v13, v1, v11, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v13, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v13, v8, :cond_e

    return-object v7

    :cond_e
    iget-object v13, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    array-length v13, v13

    const/4 v14, 0x0

    :goto_7
    if-lt v14, v13, :cond_f

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v15, v10, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->superInterfaces:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aget-object v15, v15, v14

    invoke-static {v0, v15}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v15

    invoke-virtual {v11, v1, v15, v2, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v5, v8, :cond_10

    return-object v7

    :cond_10
    if-eqz v12, :cond_11

    invoke-virtual {v15, v1, v11, v2, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->collectSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;I)V

    iget v5, v2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->status:I

    if-ne v5, v8, :cond_11

    return-object v7

    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_7
.end method

.method private static resolveSubstituteConstraints(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;Z)Z
    .locals 12

    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->substitutes:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_d

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->hasUnresolvedTypeArgument()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    :goto_1
    if-lt v3, v1, :cond_0

    goto :goto_3

    :cond_0
    aget-object v4, p1, v3

    aget-object v5, v0, v3

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->getSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->lowerUpperBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-nez v4, :cond_3

    return v2

    :cond_3
    sget-object v5, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    if-eq v4, v5, :cond_4

    aput-object v4, v0, v3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v3, 0x1

    if-eqz p3, :cond_c

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->hasUnresolvedTypeArgument()Z

    move-result p3

    if-eqz p3, :cond_c

    move p3, v2

    :goto_4
    if-lt p3, v1, :cond_6

    goto :goto_7

    :cond_6
    aget-object v4, p1, p3

    aget-object v5, v0, p3

    if-eqz v5, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p2, v4, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->getSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v5

    invoke-static {v4, p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->greaterLowerBound([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v4

    if-eqz v4, :cond_a

    array-length v5, v4

    if-ne v5, v3, :cond_9

    aget-object v4, v4, v2

    goto :goto_5

    :cond_9
    array-length v5, v4

    sub-int/2addr v5, v3

    new-array v10, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v4, v3, v10, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v6

    aget-object v9, v4, v2

    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createWildcard(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;ILorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/WildcardBinding;

    move-result-object v4

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_b

    aput-object v4, v0, p3

    :cond_b
    :goto_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_c
    :goto_7
    return v3

    :cond_d
    aget-object v4, p1, v3

    aget-object v5, v0, v3

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {p2, v4, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext;->getSubstitutes(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v5

    if-eqz v5, :cond_14

    array-length v6, v5

    move v7, v2

    :goto_8
    if-lt v7, v6, :cond_f

    goto :goto_9

    :cond_f
    aget-object v8, v5, v7

    if-nez v8, :cond_10

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    invoke-static {v8, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_11
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v6, :cond_12

    aput-object v4, v0, v3

    goto :goto_9

    :cond_12
    aget-object v8, v5, v7

    invoke-static {v8, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v8, :cond_11

    aput-object v8, v0, v3

    goto :goto_9

    :cond_13
    aput-object v8, v0, v3

    :cond_14
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public boundCheck18(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 8

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-lt v3, v1, :cond_0

    return-object v4

    :cond_0
    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v6, v6, v3

    instance-of v7, p3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    if-eqz v7, :cond_1

    move-object v4, p3

    check-cast v4, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;

    :cond_1
    invoke-static {}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->$SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[I

    move-result-object v7

    invoke-virtual {v5, p0, v6, p1, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->boundCheck(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants$BoundCheckStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v7, v4

    const/4 v7, 0x3

    if-eq v4, v7, :cond_3

    const/4 v7, 0x4

    if-eq v4, v7, :cond_2

    goto :goto_1

    :cond_2
    array-length p1, p2

    add-int/lit8 p3, p1, 0x2

    new-array p3, p3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p2, v2, p3, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v6, p3, p1

    add-int/lit8 p1, p1, 0x1

    aput-object v5, p3, p1

    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v0, 0xa

    invoke-direct {p1, p0, p2, p3, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)V

    return-object p1

    :cond_3
    iget-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v6, 0x100

    or-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public computeUniqueKey(Z)[C
    .locals 4

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->computeUniqueKey(Z)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    new-array v2, v0, [C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    return-object v2
.end method

.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public genericMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method

.method public getErasure18_5_2(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->substitute(Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->erasure()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToRawType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Z)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public hasSubstitutedParameters()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->wasInferred:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedParameters()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->hasSubstitutedParameters()Z

    move-result v0

    return v0
.end method

.method public hasSubstitutedReturnType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->inferredReturnType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->hasSubstitutedReturnType()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->hasSubstitutedReturnType()Z

    move-result v0

    return v0
.end method

.method public isParameterizedGeneric()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->isRaw:Z

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    array-length v1, v0

    iget v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    if-ge v2, v1, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->typeArguments:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->combineTypeAnnotations(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public tiebreakMethod()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->tiebreakMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;->originalMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->asRawMethod(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->tiebreakMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedGenericMethodBinding;->tiebreakMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method
