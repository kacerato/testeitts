.class Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;
.super Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->getFactoryFor(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory<",
        "Lorg/eclipse/jdt/internal/core/nd/NdLinkedList<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

.field private final synthetic val$metadataBitsPerElement:I

.field private final synthetic val$recordsInFirstBlock:I

.field private final synthetic val$recordsInSubsequentBlocks:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iput p2, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$recordsInFirstBlock:I

    iput p3, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$recordsInSubsequentBlocks:I

    iput p4, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$metadataBitsPerElement:I

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J)",
            "Lorg/eclipse/jdt/internal/core/nd/NdLinkedList<",
            "TT;>;"
        }
    .end annotation

    .line 2
    new-instance v8, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget v5, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$recordsInFirstBlock:I

    iget v6, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$recordsInSubsequentBlocks:I

    iget v7, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$metadataBitsPerElement:I

    move-object v0, v8

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)V

    return-object v8
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->destruct()V

    return-void
.end method

.method public getElementClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getRecordSize()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$recordsInFirstBlock:I

    iget v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;->val$metadataBitsPerElement:I

    invoke-static {v0, v1, v2}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->recordSize(III)I

    move-result v0

    return v0
.end method

.method public hasDestructor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
