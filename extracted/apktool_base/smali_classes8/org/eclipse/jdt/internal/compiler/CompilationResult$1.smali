.class Lorg/eclipse/jdt/internal/compiler/CompilationResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/CompilationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {p1}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result p1

    check-cast p2, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    invoke-interface {p2}, Lorg/eclipse/jdt/core/compiler/IProblem;->getSourceStart()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
