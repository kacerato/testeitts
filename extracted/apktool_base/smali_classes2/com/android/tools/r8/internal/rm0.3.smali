.class public final Lcom/android/tools/r8/internal/rm0;
.super Lcom/android/tools/r8/ir/optimize/H;
.source "SourceFile"


# instance fields
.field public final synthetic j:Lcom/android/tools/r8/internal/sm0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/sm0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;Lcom/android/tools/r8/internal/fB;)V
    .locals 6

    iput-object p1, p0, Lcom/android/tools/r8/internal/rm0;->j:Lcom/android/tools/r8/internal/sm0;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/ir/optimize/H;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/KD;Lcom/android/tools/r8/internal/fB;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/S;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/rm0;->j:Lcom/android/tools/r8/internal/sm0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/sm0;->l:Lcom/android/tools/r8/internal/h80;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    sget-object v1, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    new-instance v2, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v2, v1, p4}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-super/range {p0 .. p8}, Lcom/android/tools/r8/ir/optimize/H;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Pc;Lcom/android/tools/r8/internal/JD;Lcom/android/tools/r8/internal/Cx0;)Lcom/android/tools/r8/ir/optimize/S;

    move-result-object p1

    return-object p1
.end method
