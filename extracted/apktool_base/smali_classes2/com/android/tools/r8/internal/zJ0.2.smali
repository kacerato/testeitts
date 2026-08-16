.class public final synthetic Lcom/android/tools/r8/internal/zJ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/JI;

.field public final synthetic b:Lcom/android/tools/r8/internal/GI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/GI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zJ0;->a:Lcom/android/tools/r8/internal/JI;

    iput-object p2, p0, Lcom/android/tools/r8/internal/zJ0;->b:Lcom/android/tools/r8/internal/GI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/zJ0;->a:Lcom/android/tools/r8/internal/JI;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zJ0;->b:Lcom/android/tools/r8/internal/GI;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Lcom/android/tools/r8/internal/II;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/internal/GI;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/II;)V

    return-void
.end method
