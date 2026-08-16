.class Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingExit"
.end annotation


# instance fields
.field tree:Lorg/openjdk/tools/javac/tree/JCTree;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void
.end method


# virtual methods
.method public resolveJump()V
    .locals 0

    return-void
.end method
