.class public final Lcom/android/tools/r8/internal/Kn0;
.super Lcom/android/tools/r8/internal/vt0;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Jn0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vt0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jn0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jn0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Kn0;->b:Lcom/android/tools/r8/internal/Jn0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vt0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/vt0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kn0;->a:Lcom/android/tools/r8/internal/vt0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn0;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/lL;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p2, Ljava/sql/Timestamp;

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kn0;->a:Lcom/android/tools/r8/internal/vt0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/vt0;->a(Lcom/android/tools/r8/internal/qL;Ljava/lang/Object;)V

    return-void
.end method
