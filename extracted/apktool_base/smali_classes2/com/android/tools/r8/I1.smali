.class public final synthetic Lcom/android/tools/r8/I1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/MarkerInfoConsumer;

.field public final synthetic b:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/I1;->a:Lcom/android/tools/r8/MarkerInfoConsumer;

    iput-object p2, p0, Lcom/android/tools/r8/I1;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/I1;->a:Lcom/android/tools/r8/MarkerInfoConsumer;

    iget-object v1, p0, Lcom/android/tools/r8/I1;->b:Lcom/android/tools/r8/internal/Ef0;

    check-cast p1, [B

    check-cast p2, Lcom/android/tools/r8/origin/Origin;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/ExtractMarker;->c(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method
