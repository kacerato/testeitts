.class enum Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification$1;
.super Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/core/dom/rewrite/imports/ImportRewriteConfiguration$ImplicitImportIdentification;)V

    return-void
.end method


# virtual methods
.method public determineImplicitImportContainers(Lorg/eclipse/jdt/core/ICompilationUnit;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/core/ICompilationUnit;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "java.lang"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->getParent()Lorg/eclipse/jdt/core/IJavaElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IJavaElement;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jdt/core/ICompilationUnit;->getPackageDeclarations()[Lorg/eclipse/jdt/core/IPackageDeclaration;

    move-result-object p1

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {p1}, Lorg/eclipse/jdt/core/IPackageDeclaration;->getElementName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/eclipse/jdt/core/JavaModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
