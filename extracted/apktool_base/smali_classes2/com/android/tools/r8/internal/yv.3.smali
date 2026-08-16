.class public final Lcom/android/tools/r8/internal/yv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/yv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/yv;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/yv;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/tools/r8/internal/yv;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Wy;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/yv;->a:Ljava/util/Map;

    new-instance v1, Lcom/android/tools/r8/internal/xv;

    iget-object v2, p1, Lcom/android/tools/r8/internal/Wy;->a:Lcom/android/tools/r8/internal/Ty;

    iget-object v3, p1, Lcom/android/tools/r8/internal/Wy;->d:Lcom/android/tools/r8/internal/Vy;

    iget v3, v3, Lcom/android/tools/r8/internal/Vy;->b:I

    invoke-direct {v1, v3, v2}, Lcom/android/tools/r8/internal/xv;-><init>(ILcom/android/tools/r8/internal/O0;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
