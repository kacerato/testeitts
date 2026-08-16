.class public final synthetic Lcom/android/tools/r8/internal/eA0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/B3;

.field public final synthetic c:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/B3;Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/eA0;->b:Lcom/android/tools/r8/internal/B3;

    iput-object p2, p0, Lcom/android/tools/r8/internal/eA0;->c:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/eA0;->b:Lcom/android/tools/r8/internal/B3;

    iget-object v1, p0, Lcom/android/tools/r8/internal/eA0;->c:Lcom/android/tools/r8/internal/Dq;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/B3;->b(Lcom/android/tools/r8/internal/Dq;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    return p1
.end method
