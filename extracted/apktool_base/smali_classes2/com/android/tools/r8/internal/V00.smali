.class public final Lcom/android/tools/r8/internal/V00;
.super Lcom/android/tools/r8/internal/lZ;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/r6;)V
    .locals 6

    sget-object v2, Lcom/android/tools/r8/internal/lZ;->j:Lcom/android/tools/r8/internal/Jt;

    sget-object v4, Lcom/android/tools/r8/internal/lZ;->l:Lcom/android/tools/r8/internal/Jt;

    iget-object v3, p2, Lcom/android/tools/r8/internal/r6;->b:Lcom/android/tools/r8/internal/eA;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/lZ;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/o6;Ljava/util/Map;Lcom/android/tools/r8/internal/k6;Lcom/android/tools/r8/internal/k6;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;)Lcom/android/tools/r8/internal/kK;
    .locals 0

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p4

    :cond_0
    sget-object p1, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    return-object p1
.end method
