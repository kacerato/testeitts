.class final Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;",
        ">;"
    }
.end annotation


# instance fields
.field private final javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaProject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    return-void
.end method

.method private determinePackageName(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Ljava/lang/String;
    .locals 4

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;->containerName:Ljava/lang/String;

    move-object v0, p1

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v1, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->findPackageFragment(Ljava/lang/String;)Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;->javaProject:Lorg/eclipse/jdt/internal/core/JavaProject;

    invoke-virtual {v3, v0}, Lorg/eclipse/jdt/internal/core/JavaProject;->findType(Ljava/lang/String;)Lorg/eclipse/jdt/core/IType;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :goto_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    check-cast p2, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;->compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;->determinePackageName(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/PackageImportComparator;->determinePackageName(Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportName;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
