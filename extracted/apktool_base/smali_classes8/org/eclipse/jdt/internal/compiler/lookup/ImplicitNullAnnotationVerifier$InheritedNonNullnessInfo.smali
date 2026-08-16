.class Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier$InheritedNonNullnessInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/ImplicitNullAnnotationVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InheritedNonNullnessInfo"
.end annotation


# instance fields
.field annotationOrigin:Lorg/eclipse/jdt/internal/compiler/lookup/MethodBinding;

.field complained:Z

.field inheritedNonNullness:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
