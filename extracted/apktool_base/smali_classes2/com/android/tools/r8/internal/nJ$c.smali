.class public Lcom/android/tools/r8/internal/nJ$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/nJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$c;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/nJ$c;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/android/tools/r8/internal/nJ$c;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$c;->a:Z

    return-object p0
.end method

.method public b(Z)Lcom/android/tools/r8/internal/nJ$c;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/nJ$c;->b:Z

    return-object p0
.end method
