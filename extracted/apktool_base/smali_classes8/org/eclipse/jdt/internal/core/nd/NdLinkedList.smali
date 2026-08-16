.class public final Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/ITypeFactory;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;II)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/Nd;",
            "J",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;III)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v9, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-interface {p4}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->getRecordSize()I

    move-result v5

    move-object v1, v9

    move-object v2, p1

    move-wide v3, p2

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 4
    invoke-direct/range {v1 .. v8}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JIIII)V

    .line 5
    iput-object v9, v0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    return-void
.end method

.method public static getFactoryFor(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;II)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;II)",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Lorg/eclipse/jdt/internal/core/nd/NdLinkedList<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->getFactoryFor(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getFactoryFor(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "TT;>;III)",
            "Lorg/eclipse/jdt/internal/core/nd/ITypeFactory<",
            "Lorg/eclipse/jdt/internal/core/nd/NdLinkedList<",
            "TT;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$2;-><init>(Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;III)V

    return-object v0
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;

    invoke-direct {v2, p0, p1, v1, v0}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$1;-><init>(Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$ILinkedListVisitor;Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;)V

    invoke-virtual {v0, v2}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->accept(Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;)V

    return-void
.end method

.method public addMember(S)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->addMember(S)J

    move-result-wide v0

    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public destruct()V
    .locals 3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->elementFactory:Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;->hasDestructor()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->getNd()Lorg/eclipse/jdt/internal/core/nd/Nd;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    new-instance v2, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;

    invoke-direct {v2, p0, v0}, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList$3;-><init>(Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->accept(Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList$ILinkedListVisitor;)V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->destruct()V

    return-void
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jdt/internal/core/nd/db/IndexException;
        }
    .end annotation

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/NdLinkedList;->rawList:Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/core/nd/NdRawLinkedList;->size()I

    move-result v0

    return v0
.end method
