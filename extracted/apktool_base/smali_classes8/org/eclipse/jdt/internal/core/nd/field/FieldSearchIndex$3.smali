.class Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;
.super Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->findBest(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;)Lorg/eclipse/jdt/internal/core/nd/NdNode;
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
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

.field private final synthetic val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private final synthetic val$rankFunction:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

.field private final synthetic val$result:[J

.field private final synthetic val$resultRank:[J


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;Lorg/eclipse/jdt/internal/core/nd/Nd;[J[J)V
    .locals 0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$rankFunction:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    iput-object p7, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$resultRank:[J

    iput-object p8, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$result:[J

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    return-void
.end method


# virtual methods
.method public acceptResult(J)Z
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$rankFunction:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-interface {v0, v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$IResultRank;->getRank(Lorg/eclipse/jdt/internal/core/nd/Nd;J)J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$resultRank:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    aput-wide v0, v2, v3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$3;->val$result:[J

    aput-wide p1, v0, v3

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
