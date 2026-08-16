.class public Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.source "SourceFile"


# static fields
.field public static final ArrayClone:I = 0xf

.field public static final ArrayConstructor:I = 0xe

.field public static final BridgeMethod:I = 0x8

.field public static final ConstructorAccess:I = 0x6

.field public static final DeserializeLambda:I = 0x11

.field public static final EnumValueOf:I = 0xa

.field public static final EnumValues:I = 0x9

.field public static final FactoryMethod:I = 0x10

.field public static final FieldReadAccess:I = 0x1

.field public static final FieldWriteAccess:I = 0x2

.field public static final LambdaMethod:I = 0xd

.field public static final MethodAccess:I = 0x5

.field public static final SerializableMethodReference:I = 0x12

.field public static final SuperFieldReadAccess:I = 0x3

.field public static final SuperFieldWriteAccess:I = 0x4

.field public static final SuperMethodAccess:I = 0x7

.field public static final SwitchTable:I = 0xb

.field public static final TooManyEnumsConstants:I = 0xc


# instance fields
.field public endIndex:I

.field public fakePaddedParameters:I

.field public index:I

.field public lambda:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

.field public purpose:I

.field public serializableMethodRef:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

.field public sourceStart:I

.field public startIndex:I

.field public switchStatement:Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

.field public targetEnumType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public targetReadField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field public targetWriteField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;


# direct methods
.method public constructor <init>(ILorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;[CLorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 164
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 166
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 167
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 168
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 p3, 0x100a

    .line 169
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 170
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 171
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 172
    iget-object p3, p4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 173
    iget-object v1, p3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->globalOptions:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v1, v1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->isAnnotationBasedNullAnalysisEnabled:Z

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    filled-new-array {v2}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p3

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    .line 176
    :cond_0
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/high16 v3, 0x100000000000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :cond_1
    :goto_0
    const/16 p3, 0xe

    if-ne p1, p3, :cond_2

    .line 177
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    :cond_2
    filled-new-array {p2}, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 178
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 179
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 180
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 181
    :cond_3
    array-length v0, p1

    .line 182
    :goto_1
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;[CLorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 7

    .line 183
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 185
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 186
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    .line 187
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 188
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 189
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 190
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-wide v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x400

    and-long/2addr v3, v5

    const-wide v5, 0x600000000L

    or-long/2addr v3, v5

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 191
    iget-object v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 192
    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 193
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/A;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/A;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/lookup/B;

    invoke-direct {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/B;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    if-eqz p2, :cond_0

    .line 194
    array-length v1, p2

    if-lez v1, :cond_0

    .line 195
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->typeVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    .line 196
    :cond_0
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 p1, 0xd

    .line 197
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 198
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 199
    :cond_1
    array-length v0, p1

    .line 200
    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 7

    .line 201
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 202
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 203
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 204
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->serializableMethodRef:Lorg/eclipse/jdt/internal/compiler/ast/ReferenceExpression;

    .line 205
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 206
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/FunctionalExpression;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 207
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 208
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-wide v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide/16 v5, 0x400

    and-long/2addr v3, v5

    const-wide v5, 0x600000000L

    or-long/2addr v3, v5

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 209
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 210
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 211
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 p1, 0x12

    .line 212
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 213
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    array-length v0, p1

    .line 215
    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[CLorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;)V
    .locals 9

    .line 44
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 46
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 47
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v1

    or-int/lit16 v1, v1, 0x1008

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 48
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 49
    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 50
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    .line 51
    :cond_0
    array-length v2, v1

    .line 52
    :goto_0
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    .line 53
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 54
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->INT:Lorg/eclipse/jdt/internal/compiler/lookup/BaseTypeBinding;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 55
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 56
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetReadField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 57
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetEnumType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 p1, 0xb

    .line 58
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 59
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 60
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 61
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->switchStatement:Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    .line 62
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStrictfp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 64
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p1

    .line 65
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long p3, v3, v6

    if-ltz p3, :cond_6

    .line 66
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p3, p3

    long-to-int p5, v3

    const/16 v6, 0x20

    shr-long/2addr v3, v6

    long-to-int v3, v3

    :goto_1
    if-le p5, v3, :cond_2

    goto :goto_5

    .line 67
    :cond_2
    aget-object v4, p1, p5

    .line 68
    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v6, v4

    if-ne v6, p3, :cond_5

    move v6, v0

    :goto_2
    if-lt v6, p3, :cond_3

    :goto_3
    move p1, v5

    goto :goto_9

    .line 69
    :cond_3
    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v8, v8, v6

    invoke-static {v7, v8}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_6
    :goto_5
    if-eqz v1, :cond_a

    .line 70
    array-length p3, v1

    move p5, v0

    :goto_6
    if-lt p5, p3, :cond_7

    goto :goto_8

    .line 71
    :cond_7
    aget-object v3, v1, p5

    if-nez v3, :cond_8

    goto :goto_7

    .line 72
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v4, v3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v3

    if-eqz v3, :cond_9

    aget-object v3, p1, p5

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    :goto_7
    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    :cond_a
    :goto_8
    move p1, v0

    :goto_9
    if-eqz p1, :cond_b

    add-int/lit8 v2, v2, 0x1

    .line 73
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-static {p4, p3}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setSelector([C)V

    :cond_b
    if-nez p1, :cond_1

    .line 74
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;ZZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 3
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    const/16 v1, 0x1008

    .line 4
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 5
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 6
    check-cast p4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    .line 7
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    .line 8
    :cond_0
    array-length v2, v1

    .line 9
    :goto_0
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    .line 10
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ACCESS_METHOD_PREFIX:[C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 12
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    .line 14
    :cond_1
    new-array p2, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 15
    aput-object p4, p2, v0

    .line 16
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetReadField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p3, :cond_2

    const/4 p2, 0x3

    goto :goto_2

    :cond_2
    move p2, v3

    .line 17
    :goto_2
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    goto :goto_4

    .line 18
    :cond_3
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 19
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->isStatic()Z

    move-result p2

    const/4 v4, 0x2

    if-eqz p2, :cond_4

    .line 20
    new-array p2, v3, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 21
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v5, p2, v0

    goto :goto_3

    .line 22
    :cond_4
    new-array p2, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 23
    aput-object p4, p2, v0

    .line 24
    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->type:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v5, p2, v3

    .line 25
    :goto_3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetWriteField:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-eqz p3, :cond_5

    const/4 v4, 0x4

    .line 26
    :cond_5
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 27
    :goto_4
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 28
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 29
    :cond_6
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    .line 30
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {p3, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->binarySearch([C[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-ltz p3, :cond_b

    .line 31
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p3, p3

    long-to-int v6, v4

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    long-to-int v4, v4

    :goto_5
    if-le v6, v4, :cond_7

    goto :goto_9

    .line 32
    :cond_7
    aget-object v5, p2, v6

    .line 33
    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v7, v5

    if-ne v7, p3, :cond_a

    move v7, v0

    :goto_6
    if-lt v7, p3, :cond_8

    :goto_7
    move p2, v3

    goto :goto_d

    .line 34
    :cond_8
    aget-object v8, v5, v7

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aget-object v9, v9, v7

    invoke-static {v8, v9}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->notEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    :goto_9
    if-eqz v1, :cond_f

    .line 35
    array-length p3, v1

    move v4, v0

    :goto_a
    if-lt v4, p3, :cond_c

    goto :goto_c

    .line 36
    :cond_c
    aget-object v5, v1, v4

    if-nez v5, :cond_d

    goto :goto_b

    .line 37
    :cond_d
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v6, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_e

    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParametersEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_e
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_f
    :goto_c
    move p2, v0

    :goto_d
    if-eqz p2, :cond_10

    .line 38
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ACCESS_METHOD_PREFIX:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {p3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setSelector([C)V

    :cond_10
    if-nez p2, :cond_6

    .line 39
    iget-object p2, p4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->fields:[Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;

    if-eqz p2, :cond_13

    .line 40
    array-length p3, p2

    :goto_e
    if-lt v0, p3, :cond_11

    goto :goto_f

    .line 41
    :cond_11
    aget-object v1, p2, v0

    iget-object v2, v1, Lorg/eclipse/jdt/internal/compiler/ast/FieldDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    if-ne v2, p1, :cond_12

    .line 42
    iget p1, v1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    return-void

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 43
    :cond_13
    :goto_f
    iget-object p1, p4, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 81
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 83
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 84
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 85
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 86
    iget v1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 v1, v1, 0x1040

    const v2, -0x40000531    # -1.9998416f

    and-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 87
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 88
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 89
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 90
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 91
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/16 p1, 0x8

    .line 92
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 93
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    array-length v0, p1

    .line 95
    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[C[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 216
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 218
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 219
    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 220
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 p3, 0x100a

    .line 221
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 222
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 223
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 224
    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p3, p3

    .line 225
    array-length v1, p4

    add-int v2, v1, p3

    .line 226
    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 227
    invoke-static {p4, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {p1, v0, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p1, p1

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 230
    iget-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/16 p1, 0x10

    .line 231
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 232
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    .line 233
    invoke-virtual {p5}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    array-length v0, p1

    .line 235
    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 149
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 151
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 152
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 153
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    .line 154
    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 v1, v1, 0x1040

    const v2, -0x40000531    # -1.9998416f

    and-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 155
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 156
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 157
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 158
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 159
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/4 p1, 0x7

    .line 160
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 161
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    array-length v0, p1

    .line 163
    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 77
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 78
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isConstructor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->initializeConstructorAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->initializeMethodAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;)V
    .locals 5

    .line 118
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 120
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 121
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 122
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->DESERIALIZE_LAMBDA:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v1, 0x100a

    .line 123
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 124
    iget-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v3, 0x600000000L

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 125
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 126
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangObject()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 127
    iget-object v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangInvokeSerializedLambda()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v1, v2, v0

    iput-object v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 v1, 0x11

    .line 128
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 129
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    array-length v0, p1

    .line 131
    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;II)V
    .locals 4

    .line 132
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 134
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 135
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 136
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    array-length v0, p1

    :goto_0
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    .line 138
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ENUM_CONSTANT_INITIALIZATION_METHOD_PREFIX:[C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 140
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 p1, 0xa

    .line 141
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 142
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v2, 0x600000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const/16 p1, 0xc

    .line 143
    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 144
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 145
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->VOID:Lorg/eclipse/jdt/internal/compiler/lookup/VoidTypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 146
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 147
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->startIndex:I

    .line 148
    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->endIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;[C)V
    .locals 7

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;-><init>()V

    const/4 v1, 0x0

    .line 97
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    .line 98
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->fakePaddedParameters:I

    .line 99
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 100
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    const/16 v2, 0x9

    .line 101
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    .line 102
    iget-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v5, 0x600000000L

    or-long/2addr v3, v5

    iput-wide v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    .line 103
    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v3

    .line 104
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 105
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUES:[C

    if-ne p2, v4, :cond_0

    .line 106
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    invoke-virtual {v3, p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 107
    sget-object p2, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 108
    iput v2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    goto :goto_0

    .line 109
    :cond_0
    sget-object v2, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->VALUEOF:[C

    if-ne p2, v2, :cond_1

    .line 110
    invoke-virtual {v3, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->convertToParameterizedType(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    .line 111
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getJavaLangString()Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object p2

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object p2, v0, v1

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/16 p2, 0xa

    .line 112
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    .line 113
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast p2, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    .line 114
    :cond_2
    array-length v1, p2

    .line 115
    :goto_1
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    .line 116
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isStrictfp()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 117
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :cond_3
    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 0

    invoke-static {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda$1(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->isTypeVariable()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$1(I)[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;
    .locals 0

    new-array p0, p0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    return-object p0
.end method

.method public static markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 3

    const/16 v0, 0x9

    const-wide/high16 v1, 0x100000000000000L

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    filled-new-array {v0}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_0

    .line 4
    :cond_1
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr p1, v1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_0
    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->usesNullTypeAnnotations()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;->leafComponentType()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    .line 7
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->getNonNullAnnotation()Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    filled-new-array {v1}, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createArrayType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;I[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/ArrayBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    goto :goto_1

    .line 10
    :cond_3
    iget-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    or-long/2addr p1, v1

    iput-wide p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    :goto_1
    return-void
.end method


# virtual methods
.method public initializeConstructorAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)V
    .locals 9

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    const/16 v0, 0x1000

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v2, 0x600000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, v1

    :goto_0
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    const/4 v3, 0x6

    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v3, v3

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v5, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v5, v4, v3

    iget-object v3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    const/4 v6, 0x1

    if-lt v5, v4, :cond_6

    if-eqz v1, :cond_5

    array-length v3, v1

    move v4, v2

    :goto_2
    if-lt v4, v3, :cond_2

    goto :goto_4

    :cond_2
    aget-object v5, v1, v4

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v7, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v5

    if-eqz v5, :cond_4

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    move v6, v2

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    aget-object v8, v3, v5

    iget-object v8, v8, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v7

    if-eqz v7, :cond_b

    aget-object v7, v3, v5

    invoke-virtual {p0, v7}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v7

    if-eqz v7, :cond_b

    :goto_5
    if-eqz v6, :cond_7

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    aput-object v5, v3, v4

    :cond_7
    if-nez v6, :cond_1

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz v0, :cond_a

    array-length v1, v0

    :goto_6
    if-lt v2, v1, :cond_8

    goto :goto_7

    :cond_8
    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v4, p1, :cond_9

    iget p1, v3, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    return-void

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    return-void

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public initializeMethodAccessor(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ZLorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 8

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->targetMethod:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1009

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x1008

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->modifiers:I

    :goto_0
    iget-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    const-wide v2, 0x600000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->tagBits:J

    move-object v0, p3

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->syntheticMethods()[Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    iput v3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->index:I

    sget-object v4, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ACCESS_METHOD_PREFIX:[C

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-static {v4, v5}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->returnType:Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-eqz p2, :cond_3

    const/4 v4, 0x7

    goto :goto_2

    :cond_3
    const/4 v4, 0x5

    :goto_2
    iput v4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->isStatic()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length p2, p2

    add-int/2addr p2, v5

    new-array p2, p2, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    aput-object v0, p2, v2

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    array-length v4, p3

    invoke-static {p3, v2, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->parameters:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    :goto_4
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->thrownExceptions:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :cond_6
    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->methods()[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    move-result-object p2

    array-length p3, p2

    move v4, v2

    :goto_5
    if-lt v4, p3, :cond_b

    if-eqz v1, :cond_a

    array-length p2, v1

    move p3, v2

    :goto_6
    if-lt p3, p2, :cond_7

    goto :goto_9

    :cond_7
    aget-object v4, v1, p3

    if-nez v4, :cond_8

    goto :goto_8

    :cond_8
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    iget-object v4, v4, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v6, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v4

    if-eqz v4, :cond_9

    aget-object v4, v1, p3

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_7
    move p2, v5

    goto :goto_a

    :cond_9
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_a
    :goto_9
    move p2, v2

    goto :goto_a

    :cond_b
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    aget-object v7, p2, v4

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->selector:[C

    invoke-static {v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->equals([C[C)Z

    move-result v6

    if-eqz v6, :cond_10

    aget-object v6, p2, v4

    invoke-virtual {p0, v6}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->areParameterErasuresEqual(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_7

    :goto_a
    if-eqz p2, :cond_c

    sget-object p3, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->SYNTHETIC_ACCESS_METHOD_PREFIX:[C

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-static {p3, v4}, Lorg/eclipse/jdt/core/compiler/CharOperation;->concat([C[C)[C

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;->setSelector([C)V

    :cond_c
    if-nez p2, :cond_6

    iget-object p2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeBinding;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/lookup/ClassScope;->referenceContext:Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;

    iget-object p2, p2, Lorg/eclipse/jdt/internal/compiler/ast/TypeDeclaration;->methods:[Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;

    if-eqz p2, :cond_f

    array-length p3, p2

    :goto_b
    if-lt v2, p3, :cond_d

    goto :goto_c

    :cond_d
    aget-object v0, p2, v2

    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/ast/AbstractMethodDeclaration;->binding:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    if-ne v1, p1, :cond_e

    iget p1, v0, Lorg/eclipse/jdt/internal/compiler/ast/ASTNode;->sourceStart:I

    iput p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->sourceStart:I

    return-void

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_f
    :goto_c
    return-void

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_5
.end method

.method public isConstructorRelated()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->purpose:I

    invoke-static {p0, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->markNonNull(Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method

.method public sourceLambda()Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/SyntheticMethodBinding;->lambda:Lorg/eclipse/jdt/internal/compiler/ast/LambdaExpression;

    return-object v0
.end method
