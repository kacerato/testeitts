.class public final Lcom/google/android/filament/utils/a$e;
.super LBf/q;
.source "SourceFile"

# interfaces
.implements LMf/p;


# annotations
.annotation runtime LBf/f;
    c = "com.google.android.filament.utils.ModelViewer$loadModelGltfAsync$1"
    f = "ModelViewer.kt"
    i = {}
    l = {
        0xee
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/filament/utils/a;->M(Ljava/nio/Buffer;LMf/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LBf/q;",
        "LMf/p<",
        "Leg/S;",
        "Lyf/f<",
        "-",
        "Lnf/P0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/google/android/filament/utils/a;

.field public final synthetic d:LMf/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LMf/l<",
            "Ljava/lang/String;",
            "Ljava/nio/Buffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/filament/utils/a;LMf/l;Lyf/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/filament/utils/a;",
            "LMf/l<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/nio/Buffer;",
            ">;",
            "Lyf/f<",
            "-",
            "Lcom/google/android/filament/utils/a$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/filament/utils/a$e;->c:Lcom/google/android/filament/utils/a;

    iput-object p2, p0, Lcom/google/android/filament/utils/a$e;->d:LMf/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, LBf/q;-><init>(ILyf/f;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lyf/f;)Lyf/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lyf/f<",
            "*>;)",
            "Lyf/f<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/filament/utils/a$e;

    iget-object v0, p0, Lcom/google/android/filament/utils/a$e;->c:Lcom/google/android/filament/utils/a;

    iget-object v1, p0, Lcom/google/android/filament/utils/a$e;->d:LMf/l;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/filament/utils/a$e;-><init>(Lcom/google/android/filament/utils/a;LMf/l;Lyf/f;)V

    return-object p1
.end method

.method public final invoke(Leg/S;Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/S;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$e;->create(Ljava/lang/Object;Lyf/f;)Lyf/f;

    move-result-object p1

    check-cast p1, Lcom/google/android/filament/utils/a$e;

    sget-object p2, Lnf/P0;->a:Lnf/P0;

    invoke-virtual {p1, p2}, Lcom/google/android/filament/utils/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Leg/S;

    check-cast p2, Lyf/f;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/filament/utils/a$e;->invoke(Leg/S;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/filament/utils/a$e;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lnf/j0;->n(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/filament/utils/a$e;->c:Lcom/google/android/filament/utils/a;

    invoke-virtual {p1}, Lcom/google/android/filament/utils/a;->u()Lcom/google/android/filament/gltfio/FilamentAsset;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/filament/utils/a$e;->d:LMf/l;

    iput v2, p0, Lcom/google/android/filament/utils/a$e;->b:I

    invoke-static {p1, v1, v3, p0}, Lcom/google/android/filament/utils/a;->c(Lcom/google/android/filament/utils/a;Lcom/google/android/filament/gltfio/FilamentAsset;LMf/l;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method
