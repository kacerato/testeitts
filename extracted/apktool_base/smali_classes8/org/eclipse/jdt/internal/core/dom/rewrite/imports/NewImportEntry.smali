.class Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/NewImportEntry;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)V

    return-void
.end method


# virtual methods
.method public asOriginalImportEntry()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/OriginalImportEntry;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isOriginal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportEntry;->importName:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NewImportEntry(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
