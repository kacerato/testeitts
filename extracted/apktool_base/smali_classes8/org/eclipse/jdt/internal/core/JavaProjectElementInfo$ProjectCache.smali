.class Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProjectCache"
.end annotation


# instance fields
.field public allPkgFragmentRootsCache:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

.field public allPkgFragmentsCache:Lorg/eclipse/jdt/internal/core/util/HashtableOfArrayToObject;

.field public pkgFragmentsCaches:Ljava/util/Map;

.field public rootToResolvedEntries:Ljava/util/Map;


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/IPackageFragmentRoot;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->allPkgFragmentRootsCache:[Lorg/eclipse/jdt/core/IPackageFragmentRoot;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->rootToResolvedEntries:Ljava/util/Map;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/JavaProjectElementInfo$ProjectCache;->pkgFragmentsCaches:Ljava/util/Map;

    return-void
.end method
