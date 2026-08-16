.class public abstract Lcom/android/tools/r8/internal/K40;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/H40;

.field public static final b:Lcom/android/tools/r8/internal/I40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/H40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/H40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/K40;->a:Lcom/android/tools/r8/internal/H40;

    new-instance v0, Lcom/android/tools/r8/internal/I40;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/I40;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/K40;->b:Lcom/android/tools/r8/internal/I40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/L2;
.end method
