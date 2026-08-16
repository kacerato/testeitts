.class public final synthetic Lcom/android/tools/r8/internal/C21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Xv;

.field public final synthetic b:Lcom/android/tools/r8/graph/m3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/m3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/C21;->a:Lcom/android/tools/r8/internal/Xv;

    iput-object p2, p0, Lcom/android/tools/r8/internal/C21;->b:Lcom/android/tools/r8/graph/m3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/C21;->a:Lcom/android/tools/r8/internal/Xv;

    iget-object v1, p0, Lcom/android/tools/r8/internal/C21;->b:Lcom/android/tools/r8/graph/m3;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V

    return-void
.end method
