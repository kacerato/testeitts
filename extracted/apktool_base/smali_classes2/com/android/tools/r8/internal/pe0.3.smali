.class public final Lcom/android/tools/r8/internal/pe0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/se0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/se0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/pe0;->b:Lcom/android/tools/r8/internal/se0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/internal/p50;

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/tools/r8/internal/p50;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/tools/r8/internal/lg0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/p50;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pe0;->b:Lcom/android/tools/r8/internal/se0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/se0;->b:Lcom/android/tools/r8/internal/Tf0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tf0;->b:Lcom/android/tools/r8/internal/ig0;

    invoke-static {v0}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/ig0;->a(Lcom/android/tools/r8/internal/lg0;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method
