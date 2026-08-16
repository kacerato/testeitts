.class Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;->asList(Lorg/eclipse/jdt/internal/core/nd/Nd;J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$Visitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;->this$0:Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lorg/eclipse/jdt/internal/core/nd/INdStruct;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;->visit(ILorg/eclipse/jdt/internal/core/nd/INdStruct;)V

    return-void
.end method

.method public visit(ILorg/eclipse/jdt/internal/core/nd/INdStruct;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lorg/eclipse/jdt/internal/core/nd/field/FieldOneToMany$1;->val$result:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
