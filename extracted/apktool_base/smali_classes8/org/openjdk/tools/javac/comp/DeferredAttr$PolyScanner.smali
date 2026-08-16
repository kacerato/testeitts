.class Lorg/openjdk/tools/javac/comp/DeferredAttr$PolyScanner;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolyScanner"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CONDEXPR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->REFERENCE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;-><init>(Ljava/util/Set;)V

    return-void
.end method
