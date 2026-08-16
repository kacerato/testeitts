.class public abstract Lcom/android/tools/r8/ir/optimize/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/ir/optimize/B;

.field public static final b:Lcom/android/tools/r8/ir/optimize/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/ir/optimize/B;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/B;-><init>()V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/E;->a:Lcom/android/tools/r8/ir/optimize/B;

    new-instance v0, Lcom/android/tools/r8/ir/optimize/C;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/C;-><init>()V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/E;->b:Lcom/android/tools/r8/ir/optimize/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Iterable;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v0
.end method
