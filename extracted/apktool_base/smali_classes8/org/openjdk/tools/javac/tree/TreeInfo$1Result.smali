.class Lorg/openjdk/tools/javac/tree/TreeInfo$1Result;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/tree/TreeInfo;->pathFor(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x527689c44f0eae19L


# instance fields
.field path:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1Result;->path:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method
