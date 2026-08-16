.class public final Lcom/android/tools/r8/internal/x2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/x2;

.field public static final synthetic d:Z = true


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/x2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/tools/r8/internal/x2;-><init>(II)V

    sput-object v0, Lcom/android/tools/r8/internal/x2;->c:Lcom/android/tools/r8/internal/x2;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/x2;->a:I

    iput p2, p0, Lcom/android/tools/r8/internal/x2;->b:I

    return-void
.end method
