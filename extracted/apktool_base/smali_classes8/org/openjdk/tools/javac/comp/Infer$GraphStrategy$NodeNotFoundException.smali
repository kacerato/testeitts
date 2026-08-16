.class public Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field graph:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;->graph:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;

    return-void
.end method
