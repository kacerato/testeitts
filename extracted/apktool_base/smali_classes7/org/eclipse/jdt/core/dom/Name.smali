.class public abstract Lorg/eclipse/jdt/core/dom/Name;
.super Lorg/eclipse/jdt/core/dom/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IDocElement;


# static fields
.field static final BASE_NAME_NODE_SIZE:I = 0x2c


# instance fields
.field index:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Expression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-void
.end method


# virtual methods
.method public abstract appendName(Ljava/lang/StringBuffer;)V
.end method

.method public final getFullyQualifiedName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Name;->isSimpleName()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/Name;->appendName(Ljava/lang/StringBuffer;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v1
.end method

.method public final isQualifiedName()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    return v0
.end method

.method public final isSimpleName()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/SimpleName;

    return v0
.end method

.method public final resolveBinding()Lorg/eclipse/jdt/core/dom/IBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveName(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/IBinding;

    move-result-object v0

    return-object v0
.end method
