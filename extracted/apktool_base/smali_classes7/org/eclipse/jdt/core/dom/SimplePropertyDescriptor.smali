.class public final Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;
.super Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
.source "SourceFile"


# instance fields
.field private final mandatory:Z

.field private final valueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-class p1, Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->valueType:Ljava/lang/Class;

    iput-boolean p4, p0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->mandatory:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public getValueType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->valueType:Ljava/lang/Class;

    return-object v0
.end method

.method public isMandatory()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;->mandatory:Z

    return v0
.end method
