.class public final Lcom/android/tools/r8/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/MarkerInfoConsumer;


# instance fields
.field public final a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final acceptMarkerInfo(Lcom/android/tools/r8/MarkerInfoConsumerData;)V
    .locals 5

    invoke-interface {p1}, Lcom/android/tools/r8/MarkerInfoConsumerData;->hasMarkers()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/android/tools/r8/MarkerInfoConsumerData;->getMarkers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/MarkerInfo;

    invoke-interface {p1}, Lcom/android/tools/r8/MarkerInfoConsumerData;->getInputOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/tools/r8/MarkerInfo;->getRawEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Lcom/android/tools/r8/MarkerInfoConsumerData;->getInputOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    const-string v0, "no marker"

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lcom/android/tools/r8/origin/Origin;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/tools/r8/E;->a:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public final finished()V
    .locals 0

    return-void
.end method
