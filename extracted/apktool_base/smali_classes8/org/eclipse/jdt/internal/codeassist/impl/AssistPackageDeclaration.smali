.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;
.super Lorg/eclipse/jdt/internal/core/PackageDeclaration;
.source "SourceFile"


# instance fields
.field private infoCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/PackageDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;->infoCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/String;)Lorg/eclipse/jdt/core/IAnnotation;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistPackageDeclaration;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
