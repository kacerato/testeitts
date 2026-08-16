.class public final synthetic Lorg/openjdk/tools/javac/comp/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

.field public final synthetic d:Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

.field public final synthetic e:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/s;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/s;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/s;->d:Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/s;->e:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/s;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/s;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/s;->d:Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/s;->e:Ljava/util/function/Function;

    invoke-static {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->d(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object v0

    return-object v0
.end method
