.class public final Lcom/android/tools/r8/internal/Vt0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Cu0;

.field public final synthetic c:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/vt0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vt0;->b:Lcom/android/tools/r8/internal/Cu0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Vt0;->c:Lcom/android/tools/r8/internal/vt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Vt0;->b:Lcom/android/tools/r8/internal/Cu0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Cu0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/Vt0;->c:Lcom/android/tools/r8/internal/vt0;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
