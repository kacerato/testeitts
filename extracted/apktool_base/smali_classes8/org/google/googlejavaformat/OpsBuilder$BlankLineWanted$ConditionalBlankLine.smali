.class final Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;
.super Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConditionalBlankLine"
.end annotation


# instance fields
.field private final tags:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/g1;

    return-void
.end method


# virtual methods
.method public merge(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    iget-object v1, p0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/g1;

    check-cast p1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;

    iget-object p1, p1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/g1;

    invoke-static {v1, p1}, Lcom/google/common/collect/D1;->f(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public wanted()Lw2/C;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted$ConditionalBlankLine;->tags:Lcom/google/common/collect/g1;

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Output$BreakTag;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/Output$BreakTag;->wasBreakTaken()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    return-object v0
.end method
