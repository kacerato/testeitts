.class Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;
.super Lorg/openjdk/source/util/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReferenceScanner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/source/util/TreeScanner<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final basePos:J

.field final synthetic this$1:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;


# direct methods
.method public constructor <init>(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$1",
            "basePos"
        }
    .end annotation

    iput-object p1, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;->this$1:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;

    invoke-direct {p0}, Lorg/openjdk/source/util/TreeScanner;-><init>()V

    iput-wide p2, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;->basePos:J

    return-void
.end method


# virtual methods
.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "node",
            "aVoid"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;->visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "aVoid"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;->this$1:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;

    iget-object v0, v0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner;->this$0:Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;

    invoke-static {v0}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->access$000(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)Lcom/google/common/collect/S1;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-wide v2, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;->basePos:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    long-to-int v2, v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner$DocTreeScanner$ReferenceScanner;->basePos:J

    long-to-int v3, v3

    invoke-interface {p1}, Lorg/openjdk/source/tree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    invoke-super {p0, p1, p2}, Lorg/openjdk/source/util/TreeScanner;->visitIdentifier(Lorg/openjdk/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1
.end method
