.class public abstract Lorg/eclipse/jdt/core/dom/Annotation;
.super Lorg/eclipse/jdt/core/dom/Expression;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/core/dom/IExtendedModifier;


# instance fields
.field typeName:Lorg/eclipse/jdt/core/dom/Name;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Expression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    return-void
.end method

.method public static final internalTypeNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 7

    new-instance v6, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v2, "typeName"

    const-class v3, Lorg/eclipse/jdt/core/dom/Name;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)V

    return-object v6
.end method


# virtual methods
.method public getTypeName()Lorg/eclipse/jdt/core/dom/Name;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preLazyInit()V

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->internalTypeNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->postLazyInit(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    return-object v0
.end method

.method public final getTypeNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->internalTypeNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract internalTypeNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
.end method

.method public isAnnotation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMarkerAnnotation()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    return v0
.end method

.method public isModifier()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNormalAnnotation()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    return v0
.end method

.method public isSingleMemberAnnotation()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    return v0
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public resolveAnnotationBinding()Lorg/eclipse/jdt/core/dom/IAnnotationBinding;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ASTNode;->ast:Lorg/eclipse/jdt/core/dom/AST;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveAnnotation(Lorg/eclipse/jdt/core/dom/Annotation;)Lorg/eclipse/jdt/core/dom/IAnnotationBinding;

    move-result-object v0

    return-object v0
.end method

.method public setTypeName(Lorg/eclipse/jdt/core/dom/Name;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/Annotation;->internalTypeNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->preReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Annotation;->typeName:Lorg/eclipse/jdt/core/dom/Name;

    invoke-virtual {p0, v1, p1, v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->postReplaceChild(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
