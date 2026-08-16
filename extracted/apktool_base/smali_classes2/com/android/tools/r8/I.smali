.class public final Lcom/android/tools/r8/I;
.super Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Lcom/android/tools/r8/I;->b:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;-><init>(Lcom/android/tools/r8/StringConsumer;)V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/I;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method
