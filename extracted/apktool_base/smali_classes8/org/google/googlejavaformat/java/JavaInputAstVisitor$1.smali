.class Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->isStringConcat(Lorg/openjdk/source/tree/ExpressionTree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/google/googlejavaformat/java/JavaInputAstVisitor;

.field final synthetic val$formatString:[Z

.field final synthetic val$stringLiteral:[Z


# direct methods
.method public constructor <init>(Lorg/google/googlejavaformat/java/JavaInputAstVisitor;[Z[Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$stringLiteral",
            "val$formatString"
        }
    .end annotation

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;->this$0:Lorg/google/googlejavaformat/java/JavaInputAstVisitor;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;->val$stringLiteral:[Z

    iput-object p3, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;->val$formatString:[Z

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tree"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$2;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;->val$stringLiteral:[Z

    aput-boolean v2, v0, v2

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/Tree$Kind;->STRING_LITERAL:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_3

    check-cast p1, Lorg/openjdk/source/tree/LiteralTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/google/googlejavaformat/java/JavaInputAstVisitor;->access$000()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/google/googlejavaformat/java/JavaInputAstVisitor$1;->val$formatString:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v2

    :cond_3
    return-void
.end method
