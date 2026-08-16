.class public final Lcom/android/tools/r8/internal/qT;
.super Lcom/android/tools/r8/internal/uT;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/qT;


# instance fields
.field public final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/qT;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qT;-><init>([I)V

    sput-object v0, Lcom/android/tools/r8/internal/qT;->b:Lcom/android/tools/r8/internal/qT;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/uT;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qT;->a:[I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/mT;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/pT;->b:Lcom/android/tools/r8/internal/pT;

    return-object v0
.end method
