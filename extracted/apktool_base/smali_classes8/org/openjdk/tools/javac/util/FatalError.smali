.class public Lorg/openjdk/tools/javac/util/FatalError;
.super Ljava/lang/Error;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
