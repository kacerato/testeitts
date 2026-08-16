.class public abstract Lcom/android/tools/r8/internal/an0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Wm0;

.field public static final b:Lcom/android/tools/r8/internal/Ym0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Wm0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Wm0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/an0;->a:Lcom/android/tools/r8/internal/Wm0;

    new-instance v0, Lcom/android/tools/r8/internal/Ym0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ym0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/an0;->b:Lcom/android/tools/r8/internal/Ym0;

    return-void
.end method
