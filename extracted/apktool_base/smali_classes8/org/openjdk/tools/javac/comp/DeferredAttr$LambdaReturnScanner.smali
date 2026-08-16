.class Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LambdaReturnScanner"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 12

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CASE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CATCH:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DOLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->FOREACHLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->FORLOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v7, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->RETURN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v8, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SYNCHRONIZED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SWITCH:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v10, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TRY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v11, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->WHILELOOP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    filled-new-array/range {v1 .. v11}, [Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;-><init>(Ljava/util/Set;)V

    return-void
.end method
