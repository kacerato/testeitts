.class Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/sjavac/options/Options;->getStateArgsString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateArgs"
.end annotation


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/sjavac/options/Options;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/options/Options;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->this$0:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->args:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addArg(Lorg/openjdk/tools/sjavac/options/Option;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->args:Ljava/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/sjavac/options/Option;->arg:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;)V

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->args:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSourceLocations(Lorg/openjdk/tools/sjavac/options/Option;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/sjavac/options/Option;",
            "Ljava/util/List<",
            "Lorg/openjdk/tools/sjavac/options/SourceLocation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/sjavac/options/SourceLocation;

    iget-object v1, v0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->includes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/openjdk/tools/sjavac/options/Option;->I:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/sjavac/options/SourceLocation;->excludes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lorg/openjdk/tools/sjavac/options/Option;->X:Lorg/openjdk/tools/sjavac/options/Option;

    invoke-virtual {p0, v3, v2}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/sjavac/options/SourceLocation;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->addArg(Lorg/openjdk/tools/sjavac/options/Option;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 2

    const-string v0, " "

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/options/Options$1StateArgs;->args:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
