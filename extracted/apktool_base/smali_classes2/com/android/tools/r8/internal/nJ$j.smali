.class public Lcom/android/tools/r8/internal/nJ$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$j;->a:Z

    const-string v0, "com.android.tools.r8.allowemptymappedranges"

    invoke-static {v0}, Lcom/android/tools/r8/internal/ur0;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$j;->b:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$j;->c:Z

    return-void
.end method
