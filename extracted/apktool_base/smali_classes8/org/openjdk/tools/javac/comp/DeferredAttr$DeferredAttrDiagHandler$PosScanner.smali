.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PosScanner"
.end annotation


# instance fields
.field found:Z

.field pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;->found:Z

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;->pos:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler$PosScanner;->found:Z

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method
