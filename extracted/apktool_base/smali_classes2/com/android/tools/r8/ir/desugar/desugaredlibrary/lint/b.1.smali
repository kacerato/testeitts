.class public final Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/b;
.super Lcom/android/tools/r8/StringConsumer$FileConsumer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/StringConsumer$FileConsumer;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer$FileConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer$FileConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
