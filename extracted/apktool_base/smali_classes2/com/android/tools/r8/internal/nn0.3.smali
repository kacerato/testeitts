.class public final Lcom/android/tools/r8/internal/nn0;
.super Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/I;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nn0;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p2, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/internal/nn0;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nn0;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/nn0;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/tools/r8/internal/Gn1;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/Gn1;-><init>(Lcom/android/tools/r8/internal/nn0;Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
