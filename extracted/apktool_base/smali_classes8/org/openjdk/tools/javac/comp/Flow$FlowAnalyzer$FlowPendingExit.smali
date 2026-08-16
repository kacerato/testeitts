.class Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowPendingExit"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;

.field thrown:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->this$1:Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->thrown:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method
