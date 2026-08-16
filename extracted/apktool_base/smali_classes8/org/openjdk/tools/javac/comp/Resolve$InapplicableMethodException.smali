.class public Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InapplicableMethodException"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

.field diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    return-void
.end method


# virtual methods
.method public getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method public setMessage()Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    return-object p1
.end method

.method public varargs setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    return-object p1
.end method

.method public setMessage(Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;
    .locals 0

    .line 4
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->diagnostic:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object p0
.end method
