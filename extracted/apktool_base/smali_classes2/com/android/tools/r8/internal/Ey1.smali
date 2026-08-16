.class public final synthetic Lcom/android/tools/r8/internal/Ey1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/BU;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/BU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ey1;->a:Lcom/android/tools/r8/internal/BU;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ey1;->a:Lcom/android/tools/r8/internal/BU;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/BU;->b(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    return-void
.end method
