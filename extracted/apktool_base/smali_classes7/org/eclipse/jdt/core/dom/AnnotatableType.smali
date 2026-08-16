.class public abstract Lorg/eclipse/jdt/core/dom/AnnotatableType;
.super Lorg/eclipse/jdt/core/dom/Type;
.source "SourceFile"


# instance fields
.field annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/Type;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    iget p1, p1, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    new-instance p1, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->getAnnotationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;-><init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;)V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    :cond_0
    return-void
.end method

.method public static final internalAnnotationsPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 4

    new-instance v0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    const-class v1, Lorg/eclipse/jdt/core/dom/Annotation;

    const/4 v2, 0x1

    const-string v3, "annotations"

    invoke-direct {v0, p0, v3, v1, v2}, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V

    return-object v0
.end method


# virtual methods
.method public annotations()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->unsupportedIn2_3_4()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AnnotatableType;->annotations:Lorg/eclipse/jdt/core/dom/ASTNode$NodeList;

    return-object v0
.end method

.method public final getAnnotationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AnnotatableType;->internalAnnotationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract internalAnnotationsProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
.end method
