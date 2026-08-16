.class public final Lcom/android/tools/r8/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/w;

    new-instance v1, Lcom/android/tools/r8/internal/v;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/v;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/w;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/tools/r8/internal/w;->a:Ljava/lang/Throwable;

    return-void
.end method
