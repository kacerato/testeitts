.class public Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssignPendingExit"
.end annotation


# instance fields
.field final exit_inits:Lorg/openjdk/tools/javac/util/Bits;

.field final exit_uninits:Lorg/openjdk/tools/javac/util/Bits;

.field final inits:Lorg/openjdk/tools/javac/util/Bits;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;

.field final uninits:Lorg/openjdk/tools/javac/util/Bits;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Bits;Lorg/openjdk/tools/javac/util/Bits;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->this$1:Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/Bits;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_inits:Lorg/openjdk/tools/javac/util/Bits;

    new-instance v0, Lorg/openjdk/tools/javac/util/Bits;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/util/Bits;-><init>(Z)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_uninits:Lorg/openjdk/tools/javac/util/Bits;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/util/Bits;->assign(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    return-void
.end method


# virtual methods
.method public resolveJump()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->inits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_inits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->uninits:Lorg/openjdk/tools/javac/util/Bits;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer$AssignPendingExit;->exit_uninits:Lorg/openjdk/tools/javac/util/Bits;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Bits;->andSet(Lorg/openjdk/tools/javac/util/Bits;)Lorg/openjdk/tools/javac/util/Bits;

    return-void
.end method
