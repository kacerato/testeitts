.class Lorg/eclipse/jdt/internal/core/XMLWriter;
.super Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/eclipse/jdt/core/IJavaProject;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lorg/eclipse/jdt/internal/core/util/Util;->getLineSeparator(Ljava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/util/GenericXMLWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;Z)V

    return-void
.end method
