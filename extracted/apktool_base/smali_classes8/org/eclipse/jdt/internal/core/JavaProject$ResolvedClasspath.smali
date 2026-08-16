.class Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/JavaProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolvedClasspath"
.end annotation


# instance fields
.field rawReverseMap:Ljava/util/HashMap;

.field referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field resolvedClasspath:[Lorg/eclipse/jdt/core/IClasspathEntry;

.field rootPathToResolvedEntries:Ljava/util/Map;

.field unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/eclipse/jdt/internal/core/JavaModelStatus;->VERIFIED_OK:Lorg/eclipse/jdt/core/IJavaModelStatus;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->unresolvedEntryStatus:Lorg/eclipse/jdt/core/IJavaModelStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rawReverseMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->rootPathToResolvedEntries:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/JavaProject$ResolvedClasspath;->referencedEntries:[Lorg/eclipse/jdt/core/IClasspathEntry;

    return-void
.end method
