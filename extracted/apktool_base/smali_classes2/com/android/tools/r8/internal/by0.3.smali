.class public final Lcom/android/tools/r8/internal/by0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/rM;

.field public final b:Lcom/android/tools/r8/internal/YY;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/rM;Ljava/util/List;)V
    .locals 1

    const-string v0, "contextExtensions"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/by0;->a:Lcom/android/tools/r8/internal/rM;

    new-instance p1, Lcom/android/tools/r8/internal/YY;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/YY;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/by0;->b:Lcom/android/tools/r8/internal/YY;

    sget-object p1, Lcom/android/tools/r8/internal/yW;->a:Lcom/android/tools/r8/internal/xW;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/xW;->b:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/tools/r8/internal/by0;->c:Ljava/util/List;

    return-void
.end method
