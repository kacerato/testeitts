.class public final synthetic Lcom/android/tools/r8/internal/Go1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/oX;

.field public final synthetic b:Lcom/android/tools/r8/graph/y;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/oX;Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Go1;->a:Lcom/android/tools/r8/internal/oX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Go1;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Go1;->a:Lcom/android/tools/r8/internal/oX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Go1;->b:Lcom/android/tools/r8/graph/y;

    check-cast p1, Lcom/android/tools/r8/graph/F2;

    check-cast p2, Lcom/android/tools/r8/internal/TW;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/oX;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/F2;Lcom/android/tools/r8/internal/TW;)V

    return-void
.end method
