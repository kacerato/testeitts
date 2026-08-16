.class Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;
.super Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodHolder"
.end annotation


# instance fields
.field parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-void
.end method


# virtual methods
.method public getParameterAnnotations(I)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_1
    return-object p1
.end method

.method public getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;->parameterAnnotations:[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    :cond_1
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->annotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object p0
.end method
