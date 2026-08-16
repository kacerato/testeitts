.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

.field importOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

.field staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

.field staticOnDemandThreshold:Ljava/lang/Integer;

.field typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

.field typeOnDemandThreshold:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->originalImportHandling:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    sget-object p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    sget-object p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;->BY_PACKAGE_AND_CONTAINING_TYPE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    sget-object p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;->JAVA_LANG_AND_CU_PACKAGE:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->importOrder:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->typeOnDemandThreshold:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->staticOnDemandThreshold:Ljava/lang/Integer;

    return-void
.end method

.method public static discardingOriginalImports()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->DISCARD:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;)V

    return-object v0
.end method

.method public static preservingOriginalImports()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;

    sget-object v1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;->PRESERVE_IN_ORDER:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$OriginalImportHandling;)V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration;-><init>(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;)V

    return-object v0
.end method

.method public setImplicitImportIdentification(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->implicitImportIdentification:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;

    return-object p0
.end method

.method public setImportOrder(Ljava/util/List;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->importOrder:Ljava/util/List;

    return-object p0
.end method

.method public setStaticContainerSorting(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->staticContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    return-object p0
.end method

.method public setStaticOnDemandThreshold(I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->staticOnDemandThreshold:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTypeContainerSorting(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->typeContainerSorting:Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;

    return-object p0
.end method

.method public setTypeOnDemandThreshold(I)Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$Builder;->typeOnDemandThreshold:Ljava/lang/Integer;

    return-object p0
.end method
