.class public final synthetic Lcom/android/tools/r8/internal/CC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/zT;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/s2;

.field public final synthetic b:Lcom/android/tools/r8/internal/BM;

.field public final synthetic c:Lcom/android/tools/r8/internal/EM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CC0;->a:Lcom/android/tools/r8/shaking/s2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CC0;->b:Lcom/android/tools/r8/internal/BM;

    iput-object p3, p0, Lcom/android/tools/r8/internal/CC0;->c:Lcom/android/tools/r8/internal/EM;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/CC0;->a:Lcom/android/tools/r8/shaking/s2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CC0;->b:Lcom/android/tools/r8/internal/BM;

    iget-object v2, p0, Lcom/android/tools/r8/internal/CC0;->c:Lcom/android/tools/r8/internal/EM;

    check-cast p1, Lcom/android/tools/r8/graph/D5;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/shaking/s2;Lcom/android/tools/r8/internal/BM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/graph/D5;I)V

    return-void
.end method
