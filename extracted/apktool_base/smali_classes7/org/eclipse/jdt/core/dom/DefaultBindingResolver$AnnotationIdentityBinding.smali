.class Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationIdentityBinding"
.end annotation


# instance fields
.field internalInstance:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;->internalInstance:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;->internalInstance:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    check-cast p1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;

    iget-object p1, p1, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;->internalInstance:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$AnnotationIdentityBinding;->internalInstance:Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;->hashCode()I

    move-result v0

    return v0
.end method
