.class Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/MemberEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitTreeVisitor"
.end annotation


# static fields
.field private static final ALLOWED_OPERATORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field result:Z


# direct methods
.method static constructor <clinit>()V
    .locals 23

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->COMPL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MUL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v7, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DIV:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v8, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MOD:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v10, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->USR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v12, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v13, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v14, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v15, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v16, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EQ:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v17, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v18, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITAND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v19, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITXOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v20, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v21, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v22, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->OR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    filled-new-array/range {v1 .. v22}, [Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->ALLOWED_OPERATORS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->result:Z

    return-void
.end method


# virtual methods
.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->ALLOWED_OPERATORS:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->result:Z

    return-void

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 0

    return-void
.end method

.method public visitLiteral(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)V
    .locals 0

    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->result:Z

    return-void
.end method

.method public visitTypeCast(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->ALLOWED_OPERATORS:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;->result:Z

    return-void

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method
