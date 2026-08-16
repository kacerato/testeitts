.class public Lcom/google/android/filament/utils/Bookmark;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/filament/utils/Bookmark;->a:J

    return-void
.end method

.method private static native nDestroyBookmark(J)V
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/utils/Bookmark;->a:J

    return-wide v0
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/filament/utils/Bookmark;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/utils/Bookmark;->nDestroyBookmark(J)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
