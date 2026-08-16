.class public Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;,
        Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;
    }
.end annotation


# instance fields
.field annotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static storeAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-eqz p2, :cond_4

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$AnnotationMethodHolder;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;Ljava/lang/Object;Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-object v0

    :cond_4
    if-eqz p1, :cond_5

    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;

    invoke-direct {p2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder$MethodHolder;-><init>([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)V

    return-object p2

    :cond_5
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;-><init>()V

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->annotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameterAnnotations(I)[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 0

    .line 2
    sget-object p1, Lorg/eclipse/jdt/internal/compiler/lookup/Binding;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    return-object p1
.end method

.method public getParameterAnnotations()[[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAnnotations([Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationHolder;->annotations:[Lorg/eclipse/jdt/internal/compiler/lookup/AnnotationBinding;

    if-eqz p1, :cond_1

    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
