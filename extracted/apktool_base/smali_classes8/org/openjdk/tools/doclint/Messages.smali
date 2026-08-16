.class public Lorg/openjdk/tools/doclint/Messages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/doclint/Messages$Stats;,
        Lorg/openjdk/tools/doclint/Messages$Options;,
        Lorg/openjdk/tools/doclint/Messages$Group;
    }
.end annotation


# instance fields
.field bundle:Ljava/util/ResourceBundle;

.field env:Lorg/openjdk/tools/doclint/Env;

.field private final options:Lorg/openjdk/tools/doclint/Messages$Options;

.field private final stats:Lorg/openjdk/tools/doclint/Messages$Stats;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/doclint/Env;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages;->env:Lorg/openjdk/tools/doclint/Env;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".resources.doclint"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages;->bundle:Ljava/util/ResourceBundle;

    new-instance v0, Lorg/openjdk/tools/doclint/Messages$Stats;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Stats;-><init>(Ljava/util/ResourceBundle;)V

    iput-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    new-instance p1, Lorg/openjdk/tools/doclint/Messages$Options;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/doclint/Messages$Options;-><init>(Lorg/openjdk/tools/doclint/Messages$Stats;)V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages;->options:Lorg/openjdk/tools/doclint/Messages$Options;

    return-void
.end method


# virtual methods
.method public varargs error(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget-object v2, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/doclint/Messages;->report(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message file broken: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    if-lez p1, :cond_0

    const-string p1, " arguments={0}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_0

    const-string v1, ", {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs report(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->options:Lorg/openjdk/tools/doclint/Messages$Options;

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Messages;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->currAccess:Lorg/openjdk/tools/doclint/Env$AccessKind;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/doclint/Messages$Options;->isEnabled(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/tools/doclint/Env$AccessKind;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object p5, p5, v0

    check-cast p5, Ljava/lang/String;

    :goto_0
    move-object v2, p5

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p4, p5}, Lorg/openjdk/tools/doclint/Messages;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 3
    :goto_1
    iget-object p5, p0, Lorg/openjdk/tools/doclint/Messages;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v0, p5, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    iget-object v4, p5, Lorg/openjdk/tools/doclint/Env;->currDocComment:Lorg/openjdk/source/doctree/DocCommentTree;

    iget-object p5, p5, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    .line 4
    invoke-virtual {p5}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v5

    move-object v1, p2

    move-object v3, p3

    .line 5
    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/source/util/DocTrees;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/source/doctree/DocTree;Lorg/openjdk/source/doctree/DocCommentTree;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    .line 6
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Messages;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    invoke-virtual {p3, p1, p2, p4}, Lorg/openjdk/tools/doclint/Messages$Stats;->record(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs report(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Lorg/openjdk/source/tree/Tree;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->options:Lorg/openjdk/tools/doclint/Messages$Options;

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Messages;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v1, Lorg/openjdk/tools/doclint/Env;->currAccess:Lorg/openjdk/tools/doclint/Env$AccessKind;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/doclint/Messages$Options;->isEnabled(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/tools/doclint/Env$AccessKind;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, p4, p5}, Lorg/openjdk/tools/doclint/Messages;->localize(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->env:Lorg/openjdk/tools/doclint/Env;

    iget-object v1, v0, Lorg/openjdk/tools/doclint/Env;->trees:Lorg/openjdk/source/util/DocTrees;

    iget-object v0, v0, Lorg/openjdk/tools/doclint/Env;->currPath:Lorg/openjdk/source/util/TreePath;

    invoke-virtual {v0}, Lorg/openjdk/source/util/TreePath;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object v0

    invoke-virtual {v1, p2, p5, p3, v0}, Lorg/openjdk/source/util/Trees;->printMessage(Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Lorg/openjdk/source/tree/Tree;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    .line 10
    iget-object p3, p0, Lorg/openjdk/tools/doclint/Messages;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    invoke-virtual {p3, p1, p2, p4}, Lorg/openjdk/tools/doclint/Messages$Stats;->record(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reportStats(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Stats;->report(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->options:Lorg/openjdk/tools/doclint/Messages$Options;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Options;->setOptions(Ljava/lang/String;)V

    return-void
.end method

.method public setStatsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages;->stats:Lorg/openjdk/tools/doclint/Messages$Stats;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Stats;->setEnabled(Z)V

    return-void
.end method

.method public varargs warning(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget-object v2, Lorg/openjdk/javax/tools/Diagnostic$Kind;->WARNING:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/doclint/Messages;->report(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Lorg/openjdk/source/doctree/DocTree;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
