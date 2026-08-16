.class public Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/DiagnosticListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/ClientCodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedDiagnosticListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/openjdk/javax/tools/DiagnosticListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected clientDiagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/DiagnosticListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/DiagnosticListener<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/javax/tools/DiagnosticListener;

    iput-object p2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->clientDiagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    return-void
.end method


# virtual methods
.method public report(Lorg/openjdk/javax/tools/Diagnostic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/Diagnostic<",
            "+TT;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->clientDiagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->access$100(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Lorg/openjdk/javax/tools/Diagnostic;)Lorg/openjdk/javax/tools/Diagnostic;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openjdk/javax/tools/DiagnosticListener;->report(Lorg/openjdk/javax/tools/Diagnostic;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ClientCodeException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/ClientCodeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->this$0:Lorg/openjdk/tools/javac/api/ClientCodeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/ClientCodeWrapper$WrappedDiagnosticListener;->clientDiagnosticListener:Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/api/ClientCodeWrapper;->access$000(Lorg/openjdk/tools/javac/api/ClientCodeWrapper;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
