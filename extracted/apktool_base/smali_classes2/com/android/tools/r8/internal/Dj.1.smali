.class public final Lcom/android/tools/r8/internal/Dj;
.super Lcom/android/tools/r8/internal/fE;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/Dj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Dj;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Dj;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Dj;->a:Lcom/android/tools/r8/internal/Dj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/fE;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lcom/android/tools/r8/internal/UD;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/Qt;->a:Lcom/android/tools/r8/internal/Qt;

    return-object v0
.end method

.method public final c()Lcom/android/tools/r8/graph/A2;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lcom/android/tools/r8/internal/p;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/ov0;->a:Lcom/android/tools/r8/internal/ov0;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultInstanceInitializerInfo"

    return-object v0
.end method
