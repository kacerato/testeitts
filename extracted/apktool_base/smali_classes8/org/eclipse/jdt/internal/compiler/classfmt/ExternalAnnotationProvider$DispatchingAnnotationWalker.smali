.class Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DispatchingAnnotationWalker"
.end annotation


# instance fields
.field private environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

.field private typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method


# virtual methods
.method public getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 0

    sget-object p1, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    return-object p1
.end method

.method public toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->supertypeAnnotationSources:Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SuperTypesAnnotationWalker;

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-direct {p2, v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$SuperTypesAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CLorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method

.method public toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->this$0:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;

    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;->typeParametersAnnotationSource:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    if-nez v2, :cond_0

    new-instance v7, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;-><init>(Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider;[CII[ILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    iput-object v7, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$DispatchingAnnotationWalker;->typeParametersWalker:Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/classfmt/ExternalAnnotationProvider$TypeParametersAnnotationWalker;->toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
    .locals 0

    return-object p0
.end method
