.class public final Lcom/android/tools/r8/internal/Hd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Hd;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Hd;

    sget v1, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v1, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Hd;-><init>(Lcom/android/tools/r8/internal/QC;)V

    sput-object v0, Lcom/android/tools/r8/internal/Hd;->b:Lcom/android/tools/r8/internal/Hd;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Tm0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Tm0;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/QC;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/Hd;->a:Lcom/android/tools/r8/internal/QC;

    return-void
.end method
