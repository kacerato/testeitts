.class public final synthetic Lcom/android/tools/r8/internal/gF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/zi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/gF1;->a:Lcom/android/tools/r8/internal/zi;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gF1;->a:Lcom/android/tools/r8/internal/zi;

    check-cast p1, Lcom/android/tools/r8/internal/Ei;

    check-cast p2, Lcom/android/tools/r8/internal/Ei;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/zi;->d(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ei;)V

    return-void
.end method
