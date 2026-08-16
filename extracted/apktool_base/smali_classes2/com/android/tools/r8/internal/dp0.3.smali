.class public final Lcom/android/tools/r8/internal/dp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jp0;


# static fields
.field public static final a:Lcom/android/tools/r8/internal/dp0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/dp0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/dp0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/dp0;->a:Lcom/android/tools/r8/internal/dp0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V
    .locals 0

    invoke-static {p3, p4, p5, p6}, Lcom/android/tools/r8/internal/jp0;->a(Lcom/android/tools/r8/internal/hB;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Pp0;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
