.class public Lorg/eclipse/jdt/core/dom/ExportsDirective;
.super Lorg/eclipse/jdt/core/dom/ModulePackageAccess;
.source "SourceFile"


# static fields
.field public static final MODULES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

.field public static final NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

.field private static final PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalNamePropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    move-result-object v1

    sput-object v1, Lorg/eclipse/jdt/core/dom/ExportsDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->internalModulesPropertyFactory(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jdt/core/dom/ExportsDirective;->MODULES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->createPropertyList(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {v1, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v2, v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->addProperty(Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Ljava/util/List;)V

    invoke-static {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->reapPropertyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;->PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-void
.end method

.method public static propertyDescriptors(I)Ljava/util/List;
    .locals 0

    sget-object p0, Lorg/eclipse/jdt/core/dom/ExportsDirective;->PROPERTY_DESCRIPTORS_9_0:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public accept0(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V
    .locals 1

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->visit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->acceptVisitChildren(ZLorg/eclipse/jdt/core/dom/ASTVisitor;)V

    invoke-virtual {p1, p0}, Lorg/eclipse/jdt/core/dom/ASTVisitor;->endVisit(Lorg/eclipse/jdt/core/dom/ExportsDirective;)V

    return-void
.end method

.method public clone0(Lorg/eclipse/jdt/core/dom/AST;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/ExportsDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/core/dom/ModulePackageAccess;->cloneHelper(Lorg/eclipse/jdt/core/dom/AST;Lorg/eclipse/jdt/core/dom/ModulePackageAccess;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public final getNodeType0()I
    .locals 1

    const/16 v0, 0x5f

    return v0
.end method

.method public final internalModulesProperty()Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;->MODULES_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return-object v0
.end method

.method public final internalNameProperty()Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;
    .locals 1

    sget-object v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;->NAME_PROPERTY:Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return-object v0
.end method

.method public final internalStructuralPropertiesForType(I)Ljava/util/List;
    .locals 0

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ExportsDirective;->propertyDescriptors(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final subtreeMatch0(Lorg/eclipse/jdt/core/dom/ASTMatcher;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p1, p0, p2}, Lorg/eclipse/jdt/core/dom/ASTMatcher;->match(Lorg/eclipse/jdt/core/dom/ExportsDirective;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
