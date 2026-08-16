.class public final Lcom/android/tools/r8/internal/Rt;
.super Lcom/android/tools/r8/internal/gE;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Rt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Rt;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Rt;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Rt;->a:Lcom/android/tools/r8/internal/Rt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/gE;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/android/tools/r8/internal/fE;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/Dj;->a:Lcom/android/tools/r8/internal/Dj;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/proto/c;)Lcom/android/tools/r8/internal/gE;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/gE;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final bridge synthetic b()Lcom/android/tools/r8/internal/fE;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Dj;->a:Lcom/android/tools/r8/internal/Dj;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
