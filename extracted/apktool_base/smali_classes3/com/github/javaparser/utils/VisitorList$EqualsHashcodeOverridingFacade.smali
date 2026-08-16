.class Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/visitor/Visitable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/utils/VisitorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EqualsHashcodeOverridingFacade"
.end annotation


# instance fields
.field private final overridden:Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/javaparser/utils/VisitorList;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/utils/VisitorList;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "overridden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->this$0:Lcom/github/javaparser/utils/VisitorList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lcom/github/javaparser/ast/Node;

    return-void
.end method

.method public static synthetic access$000(Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lcom/github/javaparser/ast/Node;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lcom/github/javaparser/ast/Node;

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->this$0:Lcom/github/javaparser/utils/VisitorList;

    iget-object v1, v1, Lcom/github/javaparser/utils/VisitorList;->equalsVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    check-cast p1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    iget-object p1, p1, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lcom/github/javaparser/ast/Node;

    invoke-interface {v0, v1, p1}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->overridden:Lcom/github/javaparser/ast/Node;

    iget-object v1, p0, Lcom/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->this$0:Lcom/github/javaparser/utils/VisitorList;

    iget-object v1, v1, Lcom/github/javaparser/utils/VisitorList;->hashcodeVisitor:Lcom/github/javaparser/ast/visitor/GenericVisitor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/github/javaparser/ast/visitor/Visitable;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
