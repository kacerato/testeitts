.class Lorg/openjdk/tools/javac/comp/Annotate$1;
.super Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Annotate;->attributeAnnotationValue(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Annotate;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Annotate;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Annotate$1;->this$0:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/MemberEnter$InitTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 0

    return-void
.end method

.method public visitTypeIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .locals 0

    return-void
.end method
