.class Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker;->getNonNullAnnotation(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)Lorg/eclipse/jdt/internal/compiler/env/IBinaryAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final synthetic val$nonNullAnnotationName:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker$1;->val$nonNullAnnotationName:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElementValuePairs()[Lorg/eclipse/jdt/internal/compiler/env/IBinaryElementValuePair;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeName()[C
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/classfmt/NonNullDefaultAwareTypeAnnotationWalker$1;->val$nonNullAnnotationName:[C

    return-object v0
.end method
