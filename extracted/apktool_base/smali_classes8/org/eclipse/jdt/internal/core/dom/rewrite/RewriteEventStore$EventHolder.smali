.class Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventHolder"
.end annotation


# instance fields
.field public final childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

.field public final event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

.field public final parent:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->parent:Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->childProperty:Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEventStore$EventHolder;->event:Lorg/eclipse/jdt/internal/core/dom/rewrite/RewriteEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
