.class public final Lcom/android/tools/r8/internal/ak0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/ak0;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ak0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ak0;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/ak0;->b:Lcom/android/tools/r8/internal/ak0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/ak0;->a:I

    return-void
.end method
