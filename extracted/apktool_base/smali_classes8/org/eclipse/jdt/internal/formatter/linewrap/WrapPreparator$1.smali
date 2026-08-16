.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$1;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->handleSimpleLoop(Lorg/eclipse/jdt/core/dom/Statement;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$1;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/core/dom/Block;)Z
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$1;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    iget-object v1, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstIndexIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->forceContinuousWrapping(Lorg/eclipse/jdt/core/dom/ASTNode;I)V

    const/4 p1, 0x0

    return p1
.end method
