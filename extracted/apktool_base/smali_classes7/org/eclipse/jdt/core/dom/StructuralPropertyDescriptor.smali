.class public abstract Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final nodeClass:Ljava/lang/Class;

.field private final propertyId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->propertyId:Ljava/lang/String;

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->nodeClass:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->propertyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNodeClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->nodeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final isChildListProperty()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;

    return v0
.end method

.method public final isChildProperty()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/ChildPropertyDescriptor;

    return v0
.end method

.method public final isSimpleProperty()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildListProperty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ChildList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isChildProperty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->isSimpleProperty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Simple"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v1, "Property["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->nodeClass:Ljava/lang/Class;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->propertyId:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
