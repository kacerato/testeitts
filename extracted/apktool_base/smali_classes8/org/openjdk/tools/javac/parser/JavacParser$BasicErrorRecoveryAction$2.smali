.class final enum Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction$2;
.super Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/parser/JavacParser$1;)V

    return-void
.end method


# virtual methods
.method public doRecover(Lorg/openjdk/tools/javac/parser/JavacParser;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->catchClause()Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object p1

    return-object p1
.end method
