.class Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;
.super Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex<",
        "TT;>.SearchCriteriaToBtreeVisitorAdapter;"
    }
.end annotation


# instance fields
.field remainingCount:I

.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

.field private final synthetic val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;ILjava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->val$result:Ljava/util/List;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    iput p5, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->remainingCount:I

    return-void
.end method


# virtual methods
.method public acceptResult(J)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->val$result:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->remainingCount:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$6;->remainingCount:I

    if-lez p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
