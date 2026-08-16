.class public final synthetic Lcom/android/tools/r8/internal/D41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/a60;

.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/a60;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D41;->a:Lcom/android/tools/r8/internal/a60;

    iput-object p2, p0, Lcom/android/tools/r8/internal/D41;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/D41;->a:Lcom/android/tools/r8/internal/a60;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D41;->b:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/StringBuilder;

    check-cast p2, Lcom/android/tools/r8/internal/mP;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/a60;->b(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/tools/r8/internal/mP;)V

    return-void
.end method
