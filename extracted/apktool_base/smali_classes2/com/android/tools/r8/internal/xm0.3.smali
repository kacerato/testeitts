.class public Lcom/android/tools/r8/internal/xm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/xm0;->b:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/xm0;->a:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/xm0;->b:Z

    return-void
.end method
