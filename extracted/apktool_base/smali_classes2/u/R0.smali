.class public final synthetic Lu/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/DataResourceConsumer;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/R0;->b:Lcom/android/tools/r8/DataResourceConsumer;

    iput-object p2, p0, Lu/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/R0;->b:Lcom/android/tools/r8/DataResourceConsumer;

    iget-object v1, p0, Lu/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    check-cast p1, Lcom/android/tools/r8/DataEntryResource;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/DataResourceConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/DataEntryResource;)V

    return-void
.end method
