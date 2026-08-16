.class public interface abstract Lcom/android/tools/r8/internal/we;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/ve;

.field public static final b:Lcom/android/tools/r8/internal/ve;

.field public static final c:Lcom/android/tools/r8/internal/we;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/ve;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ve;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    new-instance v0, Lcom/android/tools/r8/internal/ve;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ve;-><init>(Z)V

    sput-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    new-instance v0, Lcom/android/tools/r8/internal/Rx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rx1;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/we;->c:Lcom/android/tools/r8/internal/we;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/t40;
.end method
