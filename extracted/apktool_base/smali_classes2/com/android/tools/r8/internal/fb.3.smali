.class public final Lcom/android/tools/r8/internal/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/Q;


# direct methods
.method public constructor <init>(IILcom/android/tools/r8/internal/SG;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/fb;->a:I

    iput p2, p0, Lcom/android/tools/r8/internal/fb;->b:I

    check-cast p3, Lcom/android/tools/r8/internal/Q;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fb;->c:Lcom/android/tools/r8/internal/Q;

    return-void
.end method
