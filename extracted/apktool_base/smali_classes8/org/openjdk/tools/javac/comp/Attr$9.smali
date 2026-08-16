.class Lorg/openjdk/tools/javac/comp/Attr$9;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Attr;->setPackageSymbols(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field packge:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;

.field final synthetic val$pkg:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$9;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr$9;->val$pkg:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Attr$9;->packge:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$9;->packge:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$9;->packge:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Attr$9;->packge:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    return-void
.end method
