.class public abstract Lcom/android/tools/r8/internal/DL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/vx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/vx;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vx;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/DL;->a:Lcom/android/tools/r8/internal/vx;

    return-void
.end method
