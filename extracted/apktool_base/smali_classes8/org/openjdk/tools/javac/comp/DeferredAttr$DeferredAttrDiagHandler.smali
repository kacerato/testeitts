.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;
.super Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredAttrDiagHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/b0;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/comp/b0;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/util/Filter;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;->lambda$new$0(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$new$0(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Z
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getDiagnosticPosition()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean p0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;->found:Z

    return p0
.end method
