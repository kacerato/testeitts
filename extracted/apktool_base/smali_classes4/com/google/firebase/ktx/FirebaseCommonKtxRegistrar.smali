.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,158:1\n152#2,6:159\n152#2,6:165\n152#2,6:171\n152#2,6:177\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n143#1:159,6\n144#1:165,6\n145#1:171,6\n146#1:177,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nFirebase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n+ 2 Firebase.kt\ncom/google/firebase/ktx/FirebaseKt\n*L\n1#1,158:1\n152#2,6:159\n152#2,6:165\n152#2,6:171\n152#2,6:177\n*S KotlinDebug\n*F\n+ 1 Firebase.kt\ncom/google/firebase/ktx/FirebaseCommonKtxRegistrar\n*L\n143#1:159,6\n144#1:165,6\n145#1:171,6\n146#1:177,6\n*E\n"
    }
.end annotation

.annotation runtime Lnf/o;
    message = "Migrate to use the KTX API from the main module: https://firebase.google.com/docs/android/kotlin-migration."
    replaceWith = .subannotation Lnf/g0;
        expression = ""
        imports = {}
    .end subannotation
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LT2/g<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, LS2/a;

    const-class v1, Leg/M;

    invoke-static {v0, v1}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v2

    invoke-static {v2}, LT2/g;->f(LT2/F;)LT2/g$b;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v0, v3}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v0

    invoke-static {v0}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v0

    invoke-virtual {v2, v0}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$a;

    invoke-virtual {v0, v2}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v0

    invoke-virtual {v0}, LT2/g$b;->d()LT2/g;

    move-result-object v0

    const-string v2, "builder(Qualified.qualif\u2026cher()\n    }\n    .build()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v4, LS2/c;

    invoke-static {v4, v1}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v5

    invoke-static {v5}, LT2/g;->f(LT2/F;)LT2/g$b;

    move-result-object v5

    invoke-static {v4, v3}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v4

    invoke-static {v4}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v4

    invoke-virtual {v5, v4}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    invoke-virtual {v4, v5}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v4

    invoke-virtual {v4}, LT2/g$b;->d()LT2/g;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, LS2/b;

    invoke-static {v5, v1}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v6

    invoke-static {v6}, LT2/g;->f(LT2/F;)LT2/g$b;

    move-result-object v6

    invoke-static {v5, v3}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v5

    invoke-static {v5}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v5

    invoke-virtual {v6, v5}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$c;

    invoke-virtual {v5, v6}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v5

    invoke-virtual {v5}, LT2/g$b;->d()LT2/g;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v6, LS2/d;

    invoke-static {v6, v1}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v1

    invoke-static {v1}, LT2/g;->f(LT2/F;)LT2/g$b;

    move-result-object v1

    invoke-static {v6, v3}, LT2/F;->a(Ljava/lang/Class;Ljava/lang/Class;)LT2/F;

    move-result-object v3

    invoke-static {v3}, LT2/v;->l(LT2/F;)LT2/v;

    move-result-object v3

    invoke-virtual {v1, v3}, LT2/g$b;->b(LT2/v;)LT2/g$b;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$d;

    invoke-virtual {v1, v3}, LT2/g$b;->f(LT2/k;)LT2/g$b;

    move-result-object v1

    invoke-virtual {v1}, LT2/g$b;->d()LT2/g;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v0, v4, v5, v1}, [LT2/g;

    move-result-object v0

    invoke-static {v0}, Lpf/H;->Q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
