.class public Lcom/android/tools/r8/internal/nJ$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$l;->a:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/tools/r8/internal/nJ$l;->b:I

    const/16 v0, 0x63

    iput v0, p0, Lcom/android/tools/r8/internal/nJ$l;->c:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/tools/r8/internal/nJ$l;->d:I

    return-void
.end method
