.class public final synthetic Lcom/android/tools/r8/internal/KA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Yx0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Yx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/KA1;->a:Lcom/android/tools/r8/internal/Yx0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/KA1;->a:Lcom/android/tools/r8/internal/Yx0;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Lcom/android/tools/r8/internal/Dq;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/ya0;->a(Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/Dq;)V

    return-void
.end method
