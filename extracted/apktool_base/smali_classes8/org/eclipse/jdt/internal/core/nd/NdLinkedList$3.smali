.class Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->destruct()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

.field private final synthetic val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;->this$0:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(JSI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;->this$0:Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    iget-object p3, p3, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-interface {p3, p4, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method
