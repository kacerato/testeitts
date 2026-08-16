.class public final synthetic Lorg/openjdk/tools/javac/comp/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field public final synthetic c:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;


# direct methods
.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/o;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/o;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/o;->b:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/o;->c:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->a(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;

    move-result-object v0

    return-object v0
.end method
