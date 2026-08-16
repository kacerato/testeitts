.class public final Lcom/android/tools/r8/internal/vv;
.super Lcom/android/tools/r8/internal/zv;
.source "SourceFile"


# static fields
.field public static final e:Lcom/android/tools/r8/internal/vv;


# instance fields
.field public final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/vv;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vv;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/vv;->e:Lcom/android/tools/r8/internal/vv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/zv;->c:Lcom/android/tools/r8/internal/zv;

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/zv;-><init>(Lcom/android/tools/r8/internal/zv;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/tools/r8/internal/vv;->d:Ljava/util/Map;

    return-void
.end method
