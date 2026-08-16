.class public final synthetic Lcom/android/tools/r8/internal/mV0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/RN;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/RN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mV0;->a:Lcom/android/tools/r8/internal/RN;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/mV0;->a:Lcom/android/tools/r8/internal/RN;

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/android/tools/r8/internal/I50;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/RN;->a(Ljava/util/List;Lcom/android/tools/r8/internal/I50;)V

    return-void
.end method
