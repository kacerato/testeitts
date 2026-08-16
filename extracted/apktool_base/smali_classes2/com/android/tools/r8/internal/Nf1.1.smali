.class public final synthetic Lcom/android/tools/r8/internal/Nf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/jd;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/jd;Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Nf1;->b:Lcom/android/tools/r8/internal/jd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Nf1;->c:Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Nf1;->b:Lcom/android/tools/r8/internal/jd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Nf1;->c:Lcom/android/tools/r8/graph/M2;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/jd;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1
.end method
