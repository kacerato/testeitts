.class Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;
.super Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$2;->visitMemberReference(Lorg/openjdk/source/tree/MemberReferenceTree;Ljava/lang/Void;)Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$2;

.field final synthetic val$t:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$2;Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$2;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;->val$t:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;-><init>(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public setOverloadKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->setOverloadKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;->val$t:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getOverloadKind()Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$2$1;->val$t:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->setOverloadKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;)V

    :cond_0
    return-void
.end method
