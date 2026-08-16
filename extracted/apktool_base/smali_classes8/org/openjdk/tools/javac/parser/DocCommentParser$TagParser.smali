.class abstract Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/DocCommentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TagParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;
    }
.end annotation


# instance fields
.field final kind:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

.field final retainWhiteSpace:Z

.field final treeKind:Lorg/openjdk/source/doctree/DocTree$Kind;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->kind:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->treeKind:Lorg/openjdk/source/doctree/DocTree$Kind;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->retainWhiteSpace:Z

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;Lorg/openjdk/source/doctree/DocTree$Kind;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->kind:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    .line 7
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->treeKind:Lorg/openjdk/source/doctree/DocTree$Kind;

    .line 8
    iput-boolean p3, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->retainWhiteSpace:Z

    return-void
.end method


# virtual methods
.method public getKind()Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->kind:Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser$Kind;

    return-object v0
.end method

.method public getTreeKind()Lorg/openjdk/source/doctree/DocTree$Kind;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/DocCommentParser$TagParser;->treeKind:Lorg/openjdk/source/doctree/DocTree$Kind;

    return-object v0
.end method

.method public abstract parse(I)Lorg/openjdk/tools/javac/tree/DCTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/parser/DocCommentParser$ParseException;
        }
    .end annotation
.end method
