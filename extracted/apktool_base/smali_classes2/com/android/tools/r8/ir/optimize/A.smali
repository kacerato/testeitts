.class public interface abstract Lcom/android/tools/r8/ir/optimize/A;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/ir/optimize/A;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv/a;

    invoke-direct {v0}, Lv/a;-><init>()V

    sput-object v0, Lcom/android/tools/r8/ir/optimize/A;->a:Lcom/android/tools/r8/ir/optimize/A;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/R00;)Ljava/util/Set;
    .locals 0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/R00;)Ljava/util/Set;
.end method
