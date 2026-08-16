.class enum Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting$2;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImportContainerSorting;)V

    return-void
.end method


# virtual methods
.method public createContainerComparator(Lorg/eclipse/jdt/internal/core/JavaProject;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/JavaProject;",
            ")",
            "Ljava/util/Comparator<",
            "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;-><init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V

    return-object v0
.end method
