.class public final Lcom/android/tools/r8/internal/lX;
.super Lcom/android/tools/r8/internal/nX;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/lX;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Dq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/lX;

    sget-object v1, Lcom/android/tools/r8/internal/Dq;->c:Lcom/android/tools/r8/internal/Dq;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/lX;-><init>(Lcom/android/tools/r8/internal/Dq;)V

    sput-object v0, Lcom/android/tools/r8/internal/lX;->b:Lcom/android/tools/r8/internal/lX;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nX;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lX;->a:Lcom/android/tools/r8/internal/Dq;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lX;
    .locals 0

    return-object p0
.end method
