.class public final Lcom/android/tools/r8/utils/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/StringConsumer;


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public final synthetic b:Lcom/android/tools/r8/utils/r;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/utils/r;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/utils/j;->b:Lcom/android/tools/r8/utils/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/utils/j;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 0

    iget-object p2, p0, Lcom/android/tools/r8/utils/j;->a:Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/utils/j;->a:Ljava/lang/StringBuilder;

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/utils/j;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    .locals 1

    iget-object p1, p0, Lcom/android/tools/r8/utils/j;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/utils/j;->b:Lcom/android/tools/r8/utils/r;

    iget-object v0, v0, Lcom/android/tools/r8/utils/r;->a:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Ljava/lang/String;)Lcom/android/tools/r8/utils/i$a;

    :cond_0
    return-void
.end method
