.class public final Lcom/android/tools/r8/internal/Sa0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/Sa0;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/JU;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Sa0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Sa0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Sa0;->c:Lcom/android/tools/r8/internal/Sa0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sa0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/tools/r8/internal/JU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/JU;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Sa0;->a:Lcom/android/tools/r8/internal/JU;

    return-void
.end method
