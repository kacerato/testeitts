.class Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Attr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BreakAttr"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x6019baa772b26305L


# instance fields
.field private env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;-><init>(Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Attr$BreakAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-object p0
.end method
