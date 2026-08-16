.class Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;
.super Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->visitAll(Lorg/eclipse/jdt/internal/core/nd/Nd;JLorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;)Z
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

.field private final synthetic val$visitor:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iput-object p5, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;->val$visitor:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;

    iput-object p6, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-direct {p0, p1, p3, p4}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteriaToBtreeVisitorAdapter;-><init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$SearchCriteria;Lorg/eclipse/jdt/internal/core/nd/Nd;)V

    return-void
.end method


# virtual methods
.method public acceptResult(J)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;->val$visitor:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$4;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$Visitor;->visit(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
