.class public final synthetic Lcom/android/tools/r8/internal/k51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/ax0;

.field public final synthetic b:Lcom/android/tools/r8/internal/qd;

.field public final synthetic c:Lcom/android/tools/r8/internal/ix0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/ax0;Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/ix0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/k51;->a:Lcom/android/tools/r8/internal/ax0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/k51;->b:Lcom/android/tools/r8/internal/qd;

    iput-object p3, p0, Lcom/android/tools/r8/internal/k51;->c:Lcom/android/tools/r8/internal/ix0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/k51;->a:Lcom/android/tools/r8/internal/ax0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/k51;->b:Lcom/android/tools/r8/internal/qd;

    iget-object v2, p0, Lcom/android/tools/r8/internal/k51;->c:Lcom/android/tools/r8/internal/ix0;

    check-cast p1, Lcom/android/tools/r8/internal/hh;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/ax0;->a(Lcom/android/tools/r8/internal/qd;Lcom/android/tools/r8/internal/ix0;Lcom/android/tools/r8/internal/hh;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method
