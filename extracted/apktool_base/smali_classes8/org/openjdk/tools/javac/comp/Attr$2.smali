.class Lorg/openjdk/tools/javac/comp/Attr$2;
.super Lorg/openjdk/tools/javac/tree/TreeTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$2;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeTranslator;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method
