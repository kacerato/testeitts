.class Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;[[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

.field private final synthetic val$environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field private final synthetic val$length:I

.field private final synthetic val$originalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

.field private final synthetic val$substitutedVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;I[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$length:I

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$originalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$substitutedVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$length:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$originalVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->equalsEquals(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->val$substitutedVariables:[Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;

    iget v1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->rank:I

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedMethodBinding$2;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method
