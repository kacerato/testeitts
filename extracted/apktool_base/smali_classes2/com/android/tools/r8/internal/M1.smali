.class public interface abstract Lcom/android/tools/r8/internal/M1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/L1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/L1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/L1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;
    .locals 1

    .line 2
    sget-object v0, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    invoke-virtual {p2, p0, p1, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/hM0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/hM0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/F1;
.end method
