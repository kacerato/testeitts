.class public final synthetic Lcom/android/tools/r8/internal/yC0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/AM;

.field public final synthetic c:Lcom/android/tools/r8/internal/c3;

.field public final synthetic d:Lcom/android/tools/r8/internal/EM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/EM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yC0;->b:Lcom/android/tools/r8/internal/AM;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yC0;->c:Lcom/android/tools/r8/internal/c3;

    iput-object p3, p0, Lcom/android/tools/r8/internal/yC0;->d:Lcom/android/tools/r8/internal/EM;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/yC0;->b:Lcom/android/tools/r8/internal/AM;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yC0;->c:Lcom/android/tools/r8/internal/c3;

    iget-object v2, p0, Lcom/android/tools/r8/internal/yC0;->d:Lcom/android/tools/r8/internal/EM;

    check-cast p1, Lcom/android/tools/r8/internal/DN;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/DM;->a(Lcom/android/tools/r8/internal/AM;Lcom/android/tools/r8/internal/c3;Lcom/android/tools/r8/internal/EM;Lcom/android/tools/r8/internal/DN;)V

    return-void
.end method
