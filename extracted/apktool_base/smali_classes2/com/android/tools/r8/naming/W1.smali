.class public final synthetic Lcom/android/tools/r8/naming/W1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Rn;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Rn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/W1;->a:Lcom/android/tools/r8/internal/Rn;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/W1;->a:Lcom/android/tools/r8/internal/Rn;

    check-cast p1, Lcom/android/tools/r8/internal/fv;

    check-cast p2, Lcom/android/tools/r8/internal/fv;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/naming/K;->a(Lcom/android/tools/r8/internal/Rn;Lcom/android/tools/r8/internal/fv;Lcom/android/tools/r8/internal/fv;)V

    return-void
.end method
