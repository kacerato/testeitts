.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;,
        Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;
    }
.end annotation


# instance fields
.field final implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

.field final importOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

.field final staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

.field final staticOnDemandThreshold:I

.field final typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

.field final typeOnDemandThreshold:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->importOrder:Ljava/util/List;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->importOrder:Ljava/util/List;

    iget-object v0, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->typeOnDemandThreshold:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->typeOnDemandThreshold:I

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->staticOnDemandThreshold:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;->staticOnDemandThreshold:I

    return-void
.end method
