.class public final synthetic Lcom/android/tools/r8/internal/D21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xv;

.field public final synthetic c:Lcom/android/tools/r8/graph/m3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xv;Lcom/android/tools/r8/graph/m3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/D21;->b:Lcom/android/tools/r8/internal/Xv;

    iput-object p2, p0, Lcom/android/tools/r8/internal/D21;->c:Lcom/android/tools/r8/graph/m3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/D21;->b:Lcom/android/tools/r8/internal/Xv;

    iget-object v1, p0, Lcom/android/tools/r8/internal/D21;->c:Lcom/android/tools/r8/graph/m3;

    check-cast p1, Lcom/android/tools/r8/graph/F5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/graph/m3;Lcom/android/tools/r8/graph/F5;)V

    return-void
.end method
