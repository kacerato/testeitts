.class Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;
.super Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationMethodHolder"
.end annotation


# instance fields
.field defaultValue:Ljava/lang/Object;

.field env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;->defaultValue:Ljava/lang/Object;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;->defaultValue:Ljava/lang/Object;

    instance-of v1, v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;->env:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/UnresolvedReferenceBinding;->resolve(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;Z)Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;->defaultValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method
