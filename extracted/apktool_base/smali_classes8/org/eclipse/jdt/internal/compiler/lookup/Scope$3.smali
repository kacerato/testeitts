.class Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->getStaticFactory(Lorg/eclipse/jdt/internal/compiler/lookup/ParameterizedTypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;Lorg/eclipse/jdt/internal/compiler/lookup/InvocationSite;)Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

.field private final synthetic val$map:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

.field private final synthetic val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/lookup/Scope;Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;->this$0:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;->val$map:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;->val$scope:Lorg/eclipse/jdt/internal/compiler/lookup/Scope;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v0

    return-object v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;->val$map:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;->unannotated()Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->hasTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/Scope$3;->environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;->getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createAnnotatedType(Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method
