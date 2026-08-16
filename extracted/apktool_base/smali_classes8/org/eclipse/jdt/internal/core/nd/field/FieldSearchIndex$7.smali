.class Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/db/IBTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

.field private final synthetic val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;Ljava/util/List;Lorg/eclipse/jdt/internal/core/nd/Nd;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;->val$result:Ljava/util/List;

    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(J)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public visit(J)Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;->val$result:Ljava/util/List;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldSearchIndex$7;->val$nd:Lorg/eclipse/jdt/internal/core/nd/Nd;

    invoke-static {v1, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/NdNode;->load(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Lorg/eclipse/jdt/internal/core/nd/NdNode;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
