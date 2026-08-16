.class public final synthetic Lcom/android/tools/r8/internal/uF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Y0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/uF1;->a:Lcom/android/tools/r8/internal/Y0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/uF1;->a:Lcom/android/tools/r8/internal/Y0;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/internal/Y0;Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V

    return-void
.end method
