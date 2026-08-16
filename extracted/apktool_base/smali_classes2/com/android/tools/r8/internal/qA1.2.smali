.class public final synthetic Lcom/android/tools/r8/internal/qA1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/yM;

.field public final synthetic c:Lcom/android/tools/r8/internal/EM;

.field public final synthetic d:Lcom/android/tools/r8/internal/IM;

.field public final synthetic e:Lcom/android/tools/r8/shaking/s1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/yM;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/IM;Lcom/android/tools/r8/shaking/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qA1;->b:Lcom/android/tools/r8/internal/yM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/qA1;->c:Lcom/android/tools/r8/internal/EM;

    iput-object p3, p0, Lcom/android/tools/r8/internal/qA1;->d:Lcom/android/tools/r8/internal/IM;

    iput-object p4, p0, Lcom/android/tools/r8/internal/qA1;->e:Lcom/android/tools/r8/shaking/s1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/qA1;->b:Lcom/android/tools/r8/internal/yM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/qA1;->c:Lcom/android/tools/r8/internal/EM;

    iget-object v2, p0, Lcom/android/tools/r8/internal/qA1;->d:Lcom/android/tools/r8/internal/IM;

    iget-object v3, p0, Lcom/android/tools/r8/internal/qA1;->e:Lcom/android/tools/r8/shaking/s1;

    check-cast p1, Lcom/android/tools/r8/graph/r0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/yM;->a(Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/IM;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/graph/r0;)V

    return-void
.end method
