.class public interface abstract Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

.field public static final NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->NO_ANNOTATIONS:[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker$1;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker$1;-><init>()V

    sput-object v0, Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;->EMPTY_ANNOTATION_WALKER:Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;

    return-void
.end method


# virtual methods
.method public abstract getAnnotationsAtCursor(IZ)[Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end method

.method public abstract toField()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toMethodParameter(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toMethodReturn()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toNextArrayDimension()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toNextNestedType()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toReceiver()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toSupertype(S[C)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toThrows(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toTypeArgument(I)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toTypeBound(S)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toTypeParameter(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toTypeParameterBounds(ZI)Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method

.method public abstract toWildcardBound()Lorg/eclipse/jdt/internal/compiler/env/ITypeAnnotationWalker;
.end method
