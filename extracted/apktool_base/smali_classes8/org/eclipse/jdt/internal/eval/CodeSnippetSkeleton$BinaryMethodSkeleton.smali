.class public Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinaryMethodSkeleton"
.end annotation


# instance fields
.field exceptionTypeNames:[[C

.field isConstructor:Z

.field methodDescriptor:[C

.field selector:[C


# direct methods
.method public constructor <init>([C[C[[CZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->selector:[C

    iput-object p2, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->methodDescriptor:[C

    iput-object p3, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->exceptionTypeNames:[[C

    iput-boolean p4, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->isConstructor:Z

    return-void
.end method


# virtual methods
.method public getAnnotatedParametersCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getArgumentNames()[[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExceptionTypeNames()[[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->exceptionTypeNames:[[C

    return-object v0
.end method

.method public getGenericSignature()[C
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMethodDescriptor()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->methodDescriptor:[C

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameterAnnotations(I[C)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelector()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->selector:[C

    return-object v0
.end method

.method public getTagBits()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTypeAnnotations()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryTypeAnnotation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isClinit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/eval/CodeSnippetSkeleton$BinaryMethodSkeleton;->isConstructor:Z

    return v0
.end method
