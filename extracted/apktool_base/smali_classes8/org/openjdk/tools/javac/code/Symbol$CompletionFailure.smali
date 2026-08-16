.class public Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletionFailure"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

.field public errmsg:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->errmsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    .line 6
    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-void
.end method


# virtual methods
.method public getDetailValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->errmsg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->diag:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->errmsg:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->initCause(Ljava/lang/Throwable;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    move-result-object p1

    return-object p1
.end method

.method public initCause(Ljava/lang/Throwable;)Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object p0
.end method
