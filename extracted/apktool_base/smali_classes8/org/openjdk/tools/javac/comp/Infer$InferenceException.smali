.class public Lorg/openjdk/tools/javac/comp/Infer$InferenceException;
.super Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InferenceException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field messages:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->messages:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->messages:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->messages:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method public setMessage()Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 0

    .line 1
    return-object p0
.end method

.method public setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->messages:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->messages:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method
