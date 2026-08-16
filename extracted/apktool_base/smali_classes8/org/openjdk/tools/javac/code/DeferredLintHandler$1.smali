.class final Lorg/openjdk/tools/javac/code/DeferredLintHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/DeferredLintHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 p1, -0x1

    return p1
.end method

.method public getPreferredPosition()I
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 v0, -0x1

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 v0, -0x1

    return v0
.end method

.method public getTree()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    const/4 v0, 0x0

    return-object v0
.end method
