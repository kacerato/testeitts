.class public abstract Lcom/android/tools/r8/internal/On;
.super Lcom/android/tools/r8/internal/Pn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Pn;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/tools/r8/graph/G0;)Lcom/android/tools/r8/internal/fv;
    .locals 2

    check-cast p1, Lcom/android/tools/r8/graph/F0;

    sget-object v0, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    return-object v1
.end method
