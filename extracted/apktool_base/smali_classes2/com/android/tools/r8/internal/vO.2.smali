.class public final Lcom/android/tools/r8/internal/vO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/vO;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/vP;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/vO;

    sget-object v1, Lcom/android/tools/r8/internal/vP;->d:Lcom/android/tools/r8/internal/vP;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/vO;-><init>(Lcom/android/tools/r8/internal/vP;)V

    sput-object v0, Lcom/android/tools/r8/internal/vO;->b:Lcom/android/tools/r8/internal/vO;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vP;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vO;->a:Lcom/android/tools/r8/internal/vP;

    return-void
.end method
