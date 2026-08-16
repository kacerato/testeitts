.class Lorg/eclipse/jdt/internal/core/JarPackageFragmentInfo;
.super Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/PackageFragmentInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonJavaResources()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/OpenableElementInfo;->nonJavaResources:[Ljava/lang/Object;

    return-object v0
.end method
