.class public final synthetic Lcom/android/tools/r8/internal/mQ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ou;

.field public final synthetic c:Lcom/android/tools/r8/internal/fB;

.field public final synthetic d:Lcom/android/tools/r8/internal/Cu;

.field public final synthetic e:Lcom/android/tools/r8/internal/B60;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ou;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Cu;Lcom/android/tools/r8/internal/B60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mQ0;->b:Lcom/android/tools/r8/internal/Ou;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mQ0;->c:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mQ0;->d:Lcom/android/tools/r8/internal/Cu;

    iput-object p4, p0, Lcom/android/tools/r8/internal/mQ0;->e:Lcom/android/tools/r8/internal/B60;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/mQ0;->b:Lcom/android/tools/r8/internal/Ou;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mQ0;->c:Lcom/android/tools/r8/internal/fB;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mQ0;->d:Lcom/android/tools/r8/internal/Cu;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mQ0;->e:Lcom/android/tools/r8/internal/B60;

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Cu;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    return-object p1
.end method
