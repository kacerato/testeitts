.class public final Lcom/android/tools/r8/internal/Jn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 1

    iget-object p2, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    const-class v0, Ljava/sql/Timestamp;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/android/tools/r8/internal/Cu0;

    const-class v0, Ljava/util/Date;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/Kn0;

    invoke-direct {p2, p1}, Lcom/android/tools/r8/internal/Kn0;-><init>(Lcom/android/tools/r8/internal/vt0;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
