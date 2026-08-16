.class public final synthetic Lcom/android/tools/r8/internal/kD0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/graph/h;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/kD0;->a:Lcom/android/tools/r8/graph/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kD0;->a:Lcom/android/tools/r8/graph/h;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/ui;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/EI;->a(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/ui;)V

    return-void
.end method
