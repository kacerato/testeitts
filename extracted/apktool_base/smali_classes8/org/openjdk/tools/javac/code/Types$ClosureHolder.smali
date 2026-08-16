.class Lorg/openjdk/tools/javac/code/Types$ClosureHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClosureHolder"
.end annotation


# instance fields
.field closure:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final minClosure:Z

.field final shouldSkip:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types;ZLjava/util/function/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/BiPredicate<",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->this$0:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->minClosure:Z

    iput-object p3, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->shouldSkip:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public add(Lorg/openjdk/tools/javac/code/Type;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->shouldSkip:Ljava/util/function/BiPredicate;

    invoke-virtual {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/code/Types;->insert(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Ljava/util/function/BiPredicate;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public closure()Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->minClosure:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->access$1100(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-object v0
.end method

.method public merge(Lorg/openjdk/tools/javac/code/Types$ClosureHolder;)Lorg/openjdk/tools/javac/code/Types$ClosureHolder;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->this$0:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->shouldSkip:Ljava/util/function/BiPredicate;

    invoke-virtual {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/code/Types;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Ljava/util/function/BiPredicate;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$ClosureHolder;->closure:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method
