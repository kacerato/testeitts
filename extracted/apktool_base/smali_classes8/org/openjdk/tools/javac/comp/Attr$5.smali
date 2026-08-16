.class Lorg/openjdk/tools/javac/comp/Attr$5;
.super Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Attr;->preFlow(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$5;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Attr;)V

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/code/Type;->stuckType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$PostAttrAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_1
    :goto_0
    return-void
.end method
