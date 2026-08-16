.class Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;
.super Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/db/BTree;->getFactory(ILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)Lorg/eclipse/jdt/internal/core/nd/ITypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory<",
        "Lorg/eclipse/jdt/internal/core/nd/db/BTree;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

.field private final synthetic val$degree:I


# direct methods
.method public constructor <init>(ILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->val$degree:I

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->val$cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/nd/AbstractTypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p1

    return-object p1
.end method

.method public create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;
    .locals 7

    .line 2
    new-instance v6, Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    iget v4, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->val$degree:I

    iget-object v5, p0, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->val$cmp:Lorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;-><init>(Lorg/eclipse/jdt/internal/core/nd/Nd;JILorg/eclipse/jdt/internal/core/nd/db/IBTreeComparator;)V

    return-object v6
.end method

.method public destruct(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V

    return-void
.end method

.method public destructFields(Lorg/eclipse/jdt/internal/core/nd/Nd;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/core/nd/db/BTree$1;->create(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/core/nd/db/BTree;->destruct()V

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

    const-class v0, Lorg/eclipse/jdt/internal/core/nd/db/BTree;

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
