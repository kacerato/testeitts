.class public Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# instance fields
.field protected polymorphicMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 7

    .line 8
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 9
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 10
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 11
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 12
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;->polymorphicMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 13
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V
    .locals 7

    .line 1
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 2
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 3
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 4
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 5
    iget-object v6, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>(I[CLorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    .line 6
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;->polymorphicMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 7
    iget-wide p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    return-void
.end method


# virtual methods
.method public isPolymorphic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVarargs()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matches([Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    if-nez p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, p1

    :goto_1
    if-eq v2, v0, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_2
    if-lt v2, v0, :cond_6

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez p2, :cond_3

    if-eqz p1, :cond_5

    return v1

    :cond_3
    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-static {p2, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v3, v3, v2

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public original()Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PolymorphicMethodBinding;->polymorphicMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    return-object v0
.end method
