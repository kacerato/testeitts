.class Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->accept(Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

.field private final synthetic val$localElementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

.field private final synthetic val$localRawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

.field private final synthetic val$visitor:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->val$visitor:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->val$localElementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->val$localRawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(JSI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->val$visitor:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->val$localElementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;->val$localRawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;->visit(Ljava/lang/Object;SI)V

    return-void
.end method
