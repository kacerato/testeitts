.class public final synthetic Lcom/android/tools/r8/internal/TS0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QR;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/A2;

.field public final synthetic e:Lcom/android/tools/r8/internal/VJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/VJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/TS0;->b:Lcom/android/tools/r8/internal/QR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/TS0;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/TS0;->d:Lcom/android/tools/r8/graph/A2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/TS0;->e:Lcom/android/tools/r8/internal/VJ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/TS0;->b:Lcom/android/tools/r8/internal/QR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/TS0;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/TS0;->d:Lcom/android/tools/r8/graph/A2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/TS0;->e:Lcom/android/tools/r8/internal/VJ;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/M2;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    return-object p1
.end method
