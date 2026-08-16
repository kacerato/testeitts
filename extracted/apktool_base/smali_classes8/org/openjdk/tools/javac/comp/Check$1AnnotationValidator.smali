.class Lorg/openjdk/tools/javac/comp/Check$1AnnotationValidator;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Check;->validateAnnotationTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnnotationValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$1AnnotationValidator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$1AnnotationValidator;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Check;->access$800(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)Z

    :cond_0
    return-void
.end method
