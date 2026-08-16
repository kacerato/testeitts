.class public final Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;
.super Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
.source "SourceFile"


# instance fields
.field final cycleRisk:Z

.field final elementType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->elementType:Ljava/lang/Class;

    iput-boolean p4, p0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->cycleRisk:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final cycleRisk()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->cycleRisk:Z

    return v0
.end method

.method public final getElementType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/ChildListPropertyDescriptor;->elementType:Ljava/lang/Class;

    return-object v0
.end method
