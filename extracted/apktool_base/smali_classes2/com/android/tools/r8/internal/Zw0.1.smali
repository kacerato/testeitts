.class public final Lcom/android/tools/r8/internal/Zw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/Zw0;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Zw0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Zw0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Zw0;->b:Lcom/android/tools/r8/internal/Zw0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Ut;->b:Lcom/android/tools/r8/internal/Ut;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Zw0;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zw0;->a:Ljava/util/List;

    return-void
.end method
