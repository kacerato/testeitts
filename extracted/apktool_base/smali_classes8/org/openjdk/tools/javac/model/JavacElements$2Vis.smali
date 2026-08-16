.class Lorg/openjdk/tools/javac/model/JavacElements$2Vis;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Attribute$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/model/JavacElements;->matchAttributeToTree(Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vis"
.end annotation


# instance fields
.field result:Lorg/openjdk/tools/javac/tree/JCTree;

.field final synthetic this$0:Lorg/openjdk/tools/javac/model/JavacElements;

.field final synthetic val$findme:Lorg/openjdk/tools/javac/code/Attribute;

.field final synthetic val$tree:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Attribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->this$0:Lorg/openjdk/tools/javac/model/JavacElements;

    iput-object p2, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iput-object p3, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$findme:Lorg/openjdk/tools/javac/code/Attribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public visitArray(Lorg/openjdk/tools/javac/code/Attribute$Array;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEWARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elems:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->this$0:Lorg/openjdk/tools/javac/model/JavacElements;

    iget-object v5, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$findme:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v6, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v4, v5, v3, v6}, Lorg/openjdk/tools/javac/model/JavacElements;->access$100(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Array;->values:[Lorg/openjdk/tools/javac/code/Attribute;

    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->this$0:Lorg/openjdk/tools/javac/model/JavacElements;

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$findme:Lorg/openjdk/tools/javac/code/Attribute;

    aget-object p1, p1, v1

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0, v2, p1, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->access$100(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_2
    return-void
.end method

.method public visitClass(Lorg/openjdk/tools/javac/code/Attribute$Class;)V
    .locals 0

    return-void
.end method

.method public visitCompound(Lorg/openjdk/tools/javac/code/Attribute$Compound;)V
    .locals 4

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Attribute$Compound;->values:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->this$0:Lorg/openjdk/tools/javac/model/JavacElements;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v1, v2, v3}, Lorg/openjdk/tools/javac/model/JavacElements;->access$000(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->this$0:Lorg/openjdk/tools/javac/model/JavacElements;

    iget-object v3, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->val$findme:Lorg/openjdk/tools/javac/code/Attribute;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Attribute;

    invoke-static {v2, v3, v0, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->access$100(Lorg/openjdk/tools/javac/model/JavacElements;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/code/Attribute;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/model/JavacElements$2Vis;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    :cond_1
    return-void
.end method

.method public visitConstant(Lorg/openjdk/tools/javac/code/Attribute$Constant;)V
    .locals 0

    return-void
.end method

.method public visitEnum(Lorg/openjdk/tools/javac/code/Attribute$Enum;)V
    .locals 0

    return-void
.end method

.method public visitError(Lorg/openjdk/tools/javac/code/Attribute$Error;)V
    .locals 0

    return-void
.end method
