.class public Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;
.super Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WorkingCopyDocument"
.end annotation


# instance fields
.field public workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/ICompilationUnit;Lorg/eclipse/jdt/core/search/SearchParticipant;)V
    .locals 1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getPath()Lorg/eclipse/core/runtime/IPath;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;-><init>(Ljava/lang/String;Lorg/eclipse/jdt/core/search/SearchParticipant;)V

    move-object p2, p1

    check-cast p2, Lorg/eclipse/jdt/internal/core/CompilationUnit;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getContents()[C

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/search/JavaSearchDocument;->charContents:[C

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/MatchLocator$WorkingCopyDocument;->workingCopy:Lorg/eclipse/jdt/core/ICompilationUnit;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkingCopyDocument for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/search/SearchDocument;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
