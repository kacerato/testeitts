.class public abstract Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/tree/EndPosTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavacParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractEndPosTable"
.end annotation


# instance fields
.field public errorEndPos:I

.field protected parser:Lorg/openjdk/tools/javac/parser/JavacParser;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->parser:Lorg/openjdk/tools/javac/parser/JavacParser;

    return-void
.end method


# virtual methods
.method public setErrorEndPos(I)V
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    :cond_0
    return-void
.end method

.method public setParser(Lorg/openjdk/tools/javac/parser/JavacParser;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->parser:Lorg/openjdk/tools/javac/parser/JavacParser;

    return-void
.end method

.method public abstract to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation
.end method
