.class Lorg/openjdk/tools/javac/jvm/Gen$GenContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/jvm/Gen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenContext"
.end annotation


# instance fields
.field cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

.field exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

.field finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

.field gaps:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field isSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->finalize:Lorg/openjdk/tools/javac/jvm/Gen$GenFinalizer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->isSwitch:Z

    iput-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->gaps:Lorg/openjdk/tools/javac/util/ListBuffer;

    return-void
.end method


# virtual methods
.method public addCont(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->cont:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    return-void
.end method

.method public addExit(Lorg/openjdk/tools/javac/jvm/Code$Chain;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/jvm/Code;->mergeChains(Lorg/openjdk/tools/javac/jvm/Code$Chain;Lorg/openjdk/tools/javac/jvm/Code$Chain;)Lorg/openjdk/tools/javac/jvm/Code$Chain;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/jvm/Gen$GenContext;->exit:Lorg/openjdk/tools/javac/jvm/Code$Chain;

    return-void
.end method
