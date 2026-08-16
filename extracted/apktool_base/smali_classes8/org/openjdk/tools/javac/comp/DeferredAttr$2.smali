.class Lorg/openjdk/tools/javac/comp/DeferredAttr$2;
.super Lorg/openjdk/tools/javac/tree/TreeCopier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;-><init>(Lorg/openjdk/tools/javac/util/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/tree/TreeCopier<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7

    .line 3
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    .line 4
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 5
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    .line 6
    new-instance p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->mode:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$2;Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V

    .line 7
    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iput p1, p2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object p2
.end method

.method public bridge synthetic visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    .line 2
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    .line 4
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 6
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    .line 7
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 8
    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/util/List;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p2, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeCopier;->visitNewClass(Lorg/openjdk/source/tree/NewClassTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method
