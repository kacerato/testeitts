.class Lorg/eclipse/jdt/internal/core/SourceMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/SourceMapper;->computeAllRootPaths(Lorg/eclipse/jdt/core/IJavaElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/SourceMapper;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/SourceMapper;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/SourceMapper$1;->this$0:Lorg/eclipse/jdt/internal/core/SourceMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/core/runtime/IPath;

    check-cast p2, Lorg/eclipse/core/runtime/IPath;

    invoke-interface {p1}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p1

    invoke-interface {p2}, Lorg/eclipse/core/runtime/IPath;->segmentCount()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
