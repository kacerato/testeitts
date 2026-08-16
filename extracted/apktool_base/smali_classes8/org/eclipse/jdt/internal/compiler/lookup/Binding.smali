.class public abstract Lorg/eclipse/jdt/internal/compiler/lookup/Binding;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANY_EXCEPTION:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public static final ARRAY_TYPE:I = 0x44

.field public static final BASE_TYPE:I = 0x84

.field public static final DefaultLocationArrayContents:I = 0x200

.field public static final DefaultLocationField:I = 0x20

.field public static final DefaultLocationParameter:I = 0x8

.field public static final DefaultLocationReturnType:I = 0x10

.field public static final DefaultLocationTypeArgument:I = 0x40

.field public static final DefaultLocationTypeBound:I = 0x100

.field public static final DefaultLocationTypeParameter:I = 0x80

.field public static final DefaultLocationsForTrueValue:I = 0x38

.field public static final FIELD:I = 0x1

.field public static final GENERIC_TYPE:I = 0x804

.field public static final IMPORT:I = 0x20

.field public static final INTERSECTION_TYPE:I = 0x2004

.field public static final INTERSECTION_TYPE18:I = 0x8004

.field public static final LOCAL:I = 0x2

.field public static final METHOD:I = 0x8

.field public static final MODULE:I = 0x40

.field public static final NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

.field public static final NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

.field public static final NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public static final NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field static final NO_INFERENCE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

.field public static final NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public static final NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public static final NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

.field public static final NO_NULL_DEFAULT:I = 0x0

.field public static final NO_PACKAGES:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

.field public static final NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field public static final NO_PARAMETER_NAMES:[[C

.field public static final NO_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public static final NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public static final NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

.field static final NO_TYPE_BOUNDS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

.field public static final NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

.field public static final NULL_UNSPECIFIED_BY_DEFAULT:I = 0x2

.field public static final NullnessDefaultMASK:I = 0x3fa

.field public static final PACKAGE:I = 0x10

.field public static final PARAMETERIZED_TYPE:I = 0x104

.field public static final POLY_TYPE:I = 0x10004

.field public static final RAW_TYPE:I = 0x404

.field public static final TYPE:I = 0x4

.field public static final TYPE_PARAMETER:I = 0x1004

.field public static final TYPE_USE:I = 0x4004

.field public static final UNINITIALIZED_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field public static final UNINITIALIZED_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field public static final UNINITIALIZED_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public static final VARIABLE:I = 0x3

.field public static final WILDCARD_TYPE:I = 0x204


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MODULES:[Lorg/eclipse/jdt/internal/compiler/lookup/ModuleBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PACKAGES:[Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETERS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_EXCEPTIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->ANY_EXCEPTION:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_SUPERINTERFACES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_MEMBER_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ELEMENT_VALUE_PAIRS:[Lorg/eclipse/jdt/internal/compiler/lookup/ElementValuePair;

    new-array v1, v0, [[C

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_PARAMETER_NAMES:[[C

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_FIELDS:[Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_METHODS:[Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->UNINITIALIZED_REFERENCE_TYPES:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    sput-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_INFERENCE_VARIABLES:[Lorg/eclipse/jdt/internal/compiler/lookup/InferenceVariable;

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_TYPE_BOUNDS:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBound;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(Lorg/eclipse/jdt/internal/compiler/lookup/Binding;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->isValidBinding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public computeUniqueKey()[C
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->computeUniqueKey(Z)[C

    move-result-object v0

    return-object v0
.end method

.method public computeUniqueKey(Z)[C
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotationTagBits()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public initializeDeprecatedAnnotationTagBits()V
    .locals 0

    return-void
.end method

.method public isAnnotationType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isParameter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTaggedRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isValidBinding()Z
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->problemId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVolatile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract kind()I
.end method

.method public problemId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract readableName()[C
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V

    return-void
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public shortReadableName()[C
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->readableName()[C

    move-result-object v0

    return-object v0
.end method
