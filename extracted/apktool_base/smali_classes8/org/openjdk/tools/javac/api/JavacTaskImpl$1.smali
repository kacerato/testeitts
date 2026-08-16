.class Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;
.super Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/api/JavacTaskImpl;->analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

.field final synthetic val$results:Lorg/openjdk/tools/javac/util/ListBuffer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;->val$results:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->access$000(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;->this$0:Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-static {v2}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->access$000(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Lorg/openjdk/tools/javac/comp/Env;)Ljava/util/Queue;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;->val$results:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-static {v0, p1, v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->access$100(Lorg/openjdk/tools/javac/api/JavacTaskImpl;Ljava/util/Queue;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    return-void
.end method
