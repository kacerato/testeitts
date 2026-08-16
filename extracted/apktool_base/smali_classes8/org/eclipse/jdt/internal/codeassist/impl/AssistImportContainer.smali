.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;
.super Lorg/eclipse/jdt/internal/core/ImportContainer;
.source "SourceFile"


# instance fields
.field private infoCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/core/ImportContainer;-><init>(Lorg/eclipse/jdt/internal/core/CompilationUnit;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;->infoCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getElementInfo(Lorg/eclipse/core/runtime/IProgressMonitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/core/JavaModelException;
        }
    .end annotation

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getImport(Ljava/lang/String;Z)Lorg/eclipse/jdt/core/IImportDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportContainer;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;ZLjava/util/Map;)V

    return-object v0
.end method
