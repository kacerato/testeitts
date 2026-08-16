.class Lorg/openjdk/tools/doclint/DocLint$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/doclint/DocLint;->init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/doclint/DocLint;

.field todo:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$ds:Lorg/openjdk/tools/doclint/DocLint$DeclScanner;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/doclint/DocLint;Lorg/openjdk/tools/doclint/DocLint$DeclScanner;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/doclint/DocLint$3;->this$0:Lorg/openjdk/tools/doclint/DocLint;

    iput-object p2, p0, Lorg/openjdk/tools/doclint/DocLint$3;->val$ds:Lorg/openjdk/tools/doclint/DocLint$DeclScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/DocLint$3;->todo:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public finished(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/doclint/DocLint$4;->$SwitchMap$com$sun$source$util$TaskEvent$Kind:[I

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getKind()Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint$3;->todo:Ljava/util/Queue;

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public started(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/doclint/DocLint$4;->$SwitchMap$com$sun$source$util$TaskEvent$Kind:[I

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getKind()Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/doclint/DocLint$3;->todo:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/CompilationUnitTree;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/doclint/DocLint$3;->val$ds:Lorg/openjdk/tools/doclint/DocLint$DeclScanner;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/source/util/TreePathScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
