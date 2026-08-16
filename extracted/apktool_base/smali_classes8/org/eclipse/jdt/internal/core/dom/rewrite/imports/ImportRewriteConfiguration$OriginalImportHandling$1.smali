.class enum Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling$1;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;)V

    return-void
.end method


# virtual methods
.method public createImportAdder(Ljava/util/Comparator;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportAdder;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ReorderingImportAdder;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ReorderingImportAdder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public shouldFixAllLineDelimiters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRemoveOriginalImports()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
