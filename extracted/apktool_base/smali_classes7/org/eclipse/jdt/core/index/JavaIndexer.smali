.class public final Lorg/eclipse/jdt/core/index/JavaIndexer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateIndexForJar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/eclipse/jdt/internal/core/search/indexing/DefaultJavaIndexer;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/core/search/indexing/DefaultJavaIndexer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jdt/internal/core/search/indexing/DefaultJavaIndexer;->generateIndexForJar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
