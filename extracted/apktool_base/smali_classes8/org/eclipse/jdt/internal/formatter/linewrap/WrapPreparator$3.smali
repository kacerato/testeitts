.class Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$3;
.super Lorg/eclipse/jdt/core/dom/ASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->fixEnumConstantIndents(Lorg/eclipse/jdt/core/dom/ASTNode;)V
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

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$3;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator$3;->this$0:Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/formatter/linewrap/WrapPreparator;->tm:Lorg/eclipse/jdt/internal/formatter/TokenManager;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jdt/internal/formatter/TokenManager;->firstTokenIn(Lorg/eclipse/jdt/core/dom/ASTNode;I)Lorg/eclipse/jdt/internal/formatter/Token;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/jdt/internal/formatter/Token;->setWrapPolicy(Lorg/eclipse/jdt/internal/formatter/Token$WrapPolicy;)V

    const/4 p1, 0x1

    return p1
.end method
