.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;
.super Lorg/eclipse/jdt/internal/core/ImportDeclaration;
.source "SourceFile"


# instance fields
.field private infoCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/ImportDeclaration;-><init>(Lorg/eclipse/jdt/internal/core/ImportContainer;Ljava/lang/String;Z)V

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;->infoCache:Ljava/util/Map;

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

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistImportDeclaration;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
