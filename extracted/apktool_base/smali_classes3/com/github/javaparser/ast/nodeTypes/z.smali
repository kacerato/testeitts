.class public final synthetic Lcom/github/javaparser/ast/nodeTypes/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:[Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/nodeTypes/z;->b:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/ast/nodeTypes/z;->b:[Ljava/lang/Class;

    check-cast p1, Lcom/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-static {v0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithMembers;->p([Ljava/lang/Class;Lcom/github/javaparser/ast/body/ConstructorDeclaration;)Z

    move-result p1

    return p1
.end method
