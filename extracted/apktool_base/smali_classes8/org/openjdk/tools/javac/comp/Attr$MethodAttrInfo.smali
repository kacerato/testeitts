.class Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;
.super Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodAttrInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Attr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Check;->basicHandler:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/code/Kinds$KindSelector;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method


# virtual methods
.method public dup(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dup(Lorg/openjdk/tools/javac/comp/Attr$CheckMode;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 0

    .line 5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public dup(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 2

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;->this$0:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Attr$MethodAttrInfo;-><init>(Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object v0
.end method

.method public needsArgumentAttr(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
