.class public final Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PropertyLocation"
.end annotation


# instance fields
.field private final parent:Lorg/eclipse/jdt/core/dom/ASTNode;

.field private final property:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->property:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public getParent()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->property:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$PropertyLocation;->getProperty()Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
