.class public Lcom/android/tools/r8/internal/v8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/v8$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/android/tools/r8/internal/v8;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/v8;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/v8;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/tools/r8/internal/v8;->b:Lcom/android/tools/r8/internal/v8;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/v8;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/internal/v8$a;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/v8$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v8$a;-><init>()V

    return-object v0
.end method

.method public static b()Lcom/android/tools/r8/internal/v8;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/v8;->b:Lcom/android/tools/r8/internal/v8;

    return-object v0
.end method
