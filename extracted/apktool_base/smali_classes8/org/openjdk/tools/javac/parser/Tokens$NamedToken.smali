.class final Lorg/openjdk/tools/javac/parser/Tokens$NamedToken;
.super Lorg/openjdk/tools/javac/parser/Tokens$Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/Tokens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NamedToken"
.end annotation


# instance fields
.field public final name:Lorg/openjdk/tools/javac/util/Name;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            "II",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lorg/openjdk/tools/javac/parser/Tokens$Token;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;IILorg/openjdk/tools/javac/util/List;)V

    iput-object p4, p0, Lorg/openjdk/tools/javac/parser/Tokens$NamedToken;->name:Lorg/openjdk/tools/javac/util/Name;

    return-void
.end method


# virtual methods
.method public checkKind()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->tag:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;->NAMED:Lorg/openjdk/tools/javac/parser/Tokens$Token$Tag;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad token kind - expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public name()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/Tokens$NamedToken;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object v0
.end method
