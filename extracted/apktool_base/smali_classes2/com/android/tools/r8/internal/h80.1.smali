.class public final Lcom/android/tools/r8/internal/h80;
.super Lcom/android/tools/r8/internal/Pn;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/h80;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/internal/EO0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EO0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h80;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/android/tools/r8/internal/h80;->c:Lcom/android/tools/r8/internal/h80;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Pn;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Pn;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/h80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/h80;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h80;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static k()Lcom/android/tools/r8/internal/h80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/internal/Wz0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wz0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h80;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static l()Lcom/android/tools/r8/internal/h80;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/internal/t91;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/t91;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/h80;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    return-object v1
.end method
