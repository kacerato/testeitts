.class public Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;
.super Lorg/eclipse/jdt/internal/core/Annotation;
.source "SourceFile"


# instance fields
.field private infoCache:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/Annotation;-><init>(Lorg/eclipse/jdt/internal/core/JavaElement;Ljava/lang/String;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;->infoCache:Ljava/util/Map;

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

    iget-object p1, p0, Lorg/eclipse/jdt/internal/codeassist/impl/AssistAnnotation;->infoCache:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
