.class Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/tree/Pretty;->isUsed(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsedVisitor"
.end annotation


# instance fields
.field result:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/tree/Pretty;

.field final synthetic val$t:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/Pretty;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->this$0:Lorg/openjdk/tools/javac/tree/Pretty;

    iput-object p2, p0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->val$t:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    :cond_0
    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->val$t:Lorg/openjdk/tools/javac/code/Symbol;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    :cond_0
    return-void
.end method
