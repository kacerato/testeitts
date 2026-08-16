.class public final synthetic Lcom/android/tools/r8/internal/yz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Xr0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/Aj;

.field public final synthetic b:Lcom/android/tools/r8/internal/f80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Aj;Lcom/android/tools/r8/internal/f80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/yz0;->a:Lcom/android/tools/r8/internal/Aj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/yz0;->b:Lcom/android/tools/r8/internal/f80;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/yz0;->a:Lcom/android/tools/r8/internal/Aj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/yz0;->b:Lcom/android/tools/r8/internal/f80;

    check-cast p1, Lcom/android/tools/r8/internal/Gx;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Aj;->a(Lcom/android/tools/r8/internal/f80;Lcom/android/tools/r8/internal/Gx;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1
.end method
