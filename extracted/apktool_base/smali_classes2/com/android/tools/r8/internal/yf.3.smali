.class public abstract Lcom/android/tools/r8/internal/yf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/wf;

.field public static final b:Lcom/android/tools/r8/internal/xf;

.field public static final c:Lcom/android/tools/r8/internal/xf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/wf;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/wf;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yf;->a:Lcom/android/tools/r8/internal/wf;

    new-instance v0, Lcom/android/tools/r8/internal/xf;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xf;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yf;->b:Lcom/android/tools/r8/internal/xf;

    new-instance v0, Lcom/android/tools/r8/internal/xf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/xf;-><init>(I)V

    sput-object v0, Lcom/android/tools/r8/internal/yf;->c:Lcom/android/tools/r8/internal/xf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/android/tools/r8/internal/xi;Lcom/android/tools/r8/internal/xi;)Lcom/android/tools/r8/internal/yf;
.end method
