.class public final Lcom/android/tools/r8/internal/Su;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public b:Lcom/android/tools/r8/internal/nC;

.field public c:Lcom/android/tools/r8/internal/Nl0;

.field public final d:Lcom/android/tools/r8/shaking/M0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/shaking/M0;

    invoke-direct {v0}, Lcom/android/tools/r8/shaking/M0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Su;->d:Lcom/android/tools/r8/shaking/M0;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$r8$EnumUnboxingLocalUtility"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/Tu;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Tu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Su;->c:Lcom/android/tools/r8/internal/Nl0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Su;->b:Lcom/android/tools/r8/internal/nC;

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/Tu;-><init>(Lcom/android/tools/r8/internal/Nl0;Lcom/android/tools/r8/internal/nC;)V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Su;->d:Lcom/android/tools/r8/shaking/M0;

    .line 3
    new-instance v2, Lcom/android/tools/r8/shaking/O0;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/shaking/M0;->a:Ljava/util/IdentityHashMap;

    .line 5
    invoke-direct {v2, v1}, Lcom/android/tools/r8/shaking/O0;-><init>(Ljava/util/IdentityHashMap;)V

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/shaking/O0;->a(Lcom/android/tools/r8/graph/y;)V

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 8
    iget-object v2, p0, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    .line 9
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/android/tools/r8/internal/b40;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/internal/b40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;)V

    .line 11
    new-instance v1, Lcom/android/tools/r8/internal/lW0;

    invoke-direct {v1, p0, v3}, Lcom/android/tools/r8/internal/lW0;-><init>(Lcom/android/tools/r8/internal/Su;Lcom/android/tools/r8/internal/b40;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Tu;->a(Ljava/util/function/Consumer;)V

    .line 12
    iget-object v1, v3, Lcom/android/tools/r8/internal/b40;->a:Lcom/android/tools/r8/internal/m80;

    iget-object v2, v3, Lcom/android/tools/r8/internal/b40;->b:Lcom/android/tools/r8/internal/eX;

    iget-object v3, v3, Lcom/android/tools/r8/internal/b40;->c:Lcom/android/tools/r8/internal/Ef;

    .line 13
    new-instance v4, Lcom/android/tools/r8/internal/d40;

    invoke-direct {v4, v2, v3, v1}, Lcom/android/tools/r8/internal/d40;-><init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/m80;)V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/mW0;

    invoke-direct {v1, p0, p1, v4}, Lcom/android/tools/r8/internal/mW0;-><init>(Lcom/android/tools/r8/internal/Su;Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p1

    .line 16
    invoke-virtual {v4, v1, p1, p2}, Lcom/android/tools/r8/internal/d40;->a(Lcom/android/tools/r8/internal/c40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/b40;Lcom/android/tools/r8/internal/Ru;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Ru;->a(Lcom/android/tools/r8/graph/y;)V

    .line 18
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Ru;->a()Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/nW0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/nW0;-><init>(Lcom/android/tools/r8/internal/b40;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/kB;Lcom/android/tools/r8/internal/d40;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)V
    .locals 7

    .line 19
    sget-object v2, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Su;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-static {v0}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 21
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p1

    move-object v1, p3

    move-object v3, p2

    move-object v4, p4

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    return-void
.end method
