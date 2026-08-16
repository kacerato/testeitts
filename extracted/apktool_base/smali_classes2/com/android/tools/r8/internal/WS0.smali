.class public final synthetic Lcom/android/tools/r8/internal/WS0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/QR;

.field public final synthetic c:Lcom/android/tools/r8/internal/EE;

.field public final synthetic d:Lcom/android/tools/r8/internal/Bm0;

.field public final synthetic e:Lcom/android/tools/r8/internal/fB;

.field public final synthetic f:Lcom/android/tools/r8/internal/Bv;

.field public final synthetic g:Lcom/android/tools/r8/graph/M2;

.field public final synthetic h:Lcom/android/tools/r8/internal/VJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/QR;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Bm0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Bv;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/VJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/WS0;->b:Lcom/android/tools/r8/internal/QR;

    iput-object p2, p0, Lcom/android/tools/r8/internal/WS0;->c:Lcom/android/tools/r8/internal/EE;

    iput-object p3, p0, Lcom/android/tools/r8/internal/WS0;->d:Lcom/android/tools/r8/internal/Bm0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/WS0;->e:Lcom/android/tools/r8/internal/fB;

    iput-object p5, p0, Lcom/android/tools/r8/internal/WS0;->f:Lcom/android/tools/r8/internal/Bv;

    iput-object p6, p0, Lcom/android/tools/r8/internal/WS0;->g:Lcom/android/tools/r8/graph/M2;

    iput-object p7, p0, Lcom/android/tools/r8/internal/WS0;->h:Lcom/android/tools/r8/internal/VJ;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/android/tools/r8/internal/WS0;->b:Lcom/android/tools/r8/internal/QR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/WS0;->c:Lcom/android/tools/r8/internal/EE;

    iget-object v2, p0, Lcom/android/tools/r8/internal/WS0;->d:Lcom/android/tools/r8/internal/Bm0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/WS0;->e:Lcom/android/tools/r8/internal/fB;

    iget-object v4, p0, Lcom/android/tools/r8/internal/WS0;->f:Lcom/android/tools/r8/internal/Bv;

    iget-object v5, p0, Lcom/android/tools/r8/internal/WS0;->g:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p0, Lcom/android/tools/r8/internal/WS0;->h:Lcom/android/tools/r8/internal/VJ;

    move-object v7, p1

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    invoke-virtual/range {v0 .. v7}, Lcom/android/tools/r8/internal/QR;->a(Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/internal/Bm0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Bv;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    return-object p1
.end method
