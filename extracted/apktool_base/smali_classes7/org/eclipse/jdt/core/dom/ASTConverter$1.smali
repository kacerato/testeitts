.class Lorg/eclipse/jdt/core/dom/ASTConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/core/dom/ASTConverter;->convertToModuleDeclaration(Lorg/eclipse/jdt/internal/compiler/ast/ModuleDeclaration;)Lorg/eclipse/jdt/core/dom/ModuleDeclaration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/core/dom/ASTConverter;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTConverter;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/ASTConverter$1;->this$0:Lorg/eclipse/jdt/core/dom/ASTConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/eclipse/jdt/core/dom/ModuleDirective;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    check-cast p2, Lorg/eclipse/jdt/core/dom/ModuleDirective;

    invoke-virtual {p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
