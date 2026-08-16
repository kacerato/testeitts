.class Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$2;
.super Lorg/eclipse/jdt/core/search/SearchRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;->getModuleGraph(Ljava/lang/String;Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationPattern;Ljava/util/HashSet;)Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator$2;->this$0:Lorg/eclipse/jdt/internal/core/search/matching/TypeDeclarationLocator;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/search/SearchRequestor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptSearchMatch(Lorg/eclipse/jdt/core/search/SearchMatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/core/runtime/CoreException;
        }
    .end annotation

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/search/SearchMatch;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
