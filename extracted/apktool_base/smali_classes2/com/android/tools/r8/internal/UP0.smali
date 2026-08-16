.class public final synthetic Lcom/android/tools/r8/internal/UP0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/OV;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/OV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/UP0;->a:Lcom/android/tools/r8/internal/OV;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/UP0;->a:Lcom/android/tools/r8/internal/OV;

    check-cast p1, Lcom/android/tools/r8/internal/kK;

    check-cast p2, Lcom/android/tools/r8/internal/MV;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/OV;->a(Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/MV;)V

    return-void
.end method
