.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;
.super Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$processArg$0(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field final synthetic val$pos:Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;->val$pos:Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    return-void
.end method


# virtual methods
.method public needsArgumentAttr(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;->val$pos:Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
