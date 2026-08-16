.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;
.super Lorg/eclipse/jdt/internal/core/Initializer;
.source "SourceFile"


# instance fields
.field private bindingCache:Ljava/util/Map;

.field private infoCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;ILjava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/Initializer;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;I)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;->bindingCache:Ljava/util/Map;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;->infoCache:Ljava/util/Map;

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

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getType(Ljava/lang/String;I)Lorg/eclipse/jdt/core/IType;
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;->bindingCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistInitializer;->infoCache:Ljava/util/Map;

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/eclipse/jdt/internal/codeassist/impl/AssistSourceType;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iput p2, v0, Lorg/eclipse/jdt/internal/core/SourceRefElement;->occurrenceCount:I

    return-object v0
.end method
