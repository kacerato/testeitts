.class public Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/StringConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/StringConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardingConsumer"
.end annotation


# instance fields
.field private final a:Lcom/android/tools/r8/StringConsumer;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/StringConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/StringConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/StringConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/tools/r8/StringConsumer;->accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method

.method public finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/StringConsumer$ForwardingConsumer;->a:Lcom/android/tools/r8/StringConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :cond_0
    return-void
.end method
