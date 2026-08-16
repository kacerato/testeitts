.class public final Lcom/android/tools/r8/internal/ik0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetraceUnknownJsonMappingInformationResult;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/hC;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/hC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ik0;->a:Lcom/android/tools/r8/internal/hC;

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/android/tools/r8/internal/ik0;
    .locals 2

    .line 2
    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/eC;

    .line 4
    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/ze1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ze1;-><init>(Lcom/android/tools/r8/internal/eC;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    new-instance p0, Lcom/android/tools/r8/internal/ik0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/ik0;-><init>(Lcom/android/tools/r8/internal/hC;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/naming/mappinginformation/e;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, p1, Lcom/android/tools/r8/internal/sv0;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/e;->k()Lcom/android/tools/r8/internal/sv0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/internal/sv0;)Lcom/android/tools/r8/retrace/RetraceUnknownMappingInformationElement;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/jk0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/jk0;-><init>(Lcom/android/tools/r8/internal/ik0;Lcom/android/tools/r8/internal/sv0;)V

    return-object v0
.end method

.method public final stream()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/ik0;->a:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Ae1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Ae1;-><init>(Lcom/android/tools/r8/internal/ik0;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
