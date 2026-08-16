.class public final Lcom/android/tools/r8/internal/bg0;
.super Lcom/android/tools/r8/internal/ZQ;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/bg0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/bg0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bg0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/bg0;->b:Lcom/android/tools/r8/internal/bg0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ZQ;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/ng0;)Lcom/android/tools/r8/internal/Ax;
    .locals 3

    const-string v0, "r"

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/ng0;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/android/tools/r8/internal/Xt;->a:Lcom/android/tools/r8/internal/Xt;

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ng0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ng0;->b()Z

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : reachable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p0

    .line 6
    sget-object v0, Lcom/android/tools/r8/internal/ag0;->b:Lcom/android/tools/r8/internal/ag0;

    .line 7
    new-instance v2, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lcom/android/tools/r8/internal/nl0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object v2, v0, p0

    invoke-static {v0}, Lcom/android/tools/r8/internal/pl0;->a([Ljava/lang/Object;)Lcom/android/tools/r8/internal/nl0;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/pl0;->b(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/Ax;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/ng0;

    invoke-static {p1}, Lcom/android/tools/r8/internal/bg0;->a(Lcom/android/tools/r8/internal/ng0;)Lcom/android/tools/r8/internal/Ax;

    move-result-object p1

    return-object p1
.end method
