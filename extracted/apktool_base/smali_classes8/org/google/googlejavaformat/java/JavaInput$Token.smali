.class final Lorg/google/googlejavaformat/java/JavaInput$Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/google/googlejavaformat/Input$Token;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/JavaInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# instance fields
.field private final tok:Lorg/google/googlejavaformat/java/JavaInput$Tok;

.field private final toksAfter:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation
.end field

.field private final toksBefore:Lcom/google/common/collect/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/google/googlejavaformat/java/JavaInput$Tok;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "toksBefore",
            "tok",
            "toksAfter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->toksBefore:Lcom/google/common/collect/g1;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->tok:Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-static {p3}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->toksAfter:Lcom/google/common/collect/g1;

    return-void
.end method


# virtual methods
.method public bridge synthetic getTok()Lorg/google/googlejavaformat/Input$Tok;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/JavaInput$Token;->getTok()Lorg/google/googlejavaformat/java/JavaInput$Tok;

    move-result-object v0

    return-object v0
.end method

.method public getTok()Lorg/google/googlejavaformat/java/JavaInput$Tok;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->tok:Lorg/google/googlejavaformat/java/JavaInput$Tok;

    return-object v0
.end method

.method public getToksAfter()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->toksAfter:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public getToksBefore()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "+",
            "Lorg/google/googlejavaformat/Input$Tok;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->toksBefore:Lcom/google/common/collect/g1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "tok"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->tok:Lorg/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "toksBefore"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->toksBefore:Lcom/google/common/collect/g1;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "toksAfter"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaInput$Token;->toksAfter:Lcom/google/common/collect/g1;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
