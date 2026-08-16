.class public final Lcom/android/tools/r8/j0;
.super Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
