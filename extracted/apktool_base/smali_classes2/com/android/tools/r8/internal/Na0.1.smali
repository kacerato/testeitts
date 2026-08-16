.class public final Lcom/android/tools/r8/internal/Na0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Gf0;

.field public final b:Lcom/android/tools/r8/internal/ny;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Gf0;Lcom/android/tools/r8/internal/ny;)V
    .locals 1

    const-string v0, "resourceRoot"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceTableProducer"

    invoke-static {p2, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Na0;->a:Lcom/android/tools/r8/internal/Gf0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Na0;->b:Lcom/android/tools/r8/internal/ny;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Tf0;)V
    .locals 5

    const-string v0, "model"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Na0;->b:Lcom/android/tools/r8/internal/ny;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/ny;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ci0;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/tools/r8/internal/jg0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/jg0;-><init>(Lcom/android/tools/r8/internal/ci0;Lcom/android/tools/r8/internal/fi;)V

    new-instance v0, Lcom/android/tools/r8/internal/ql0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/ql0;-><init>(Lcom/android/tools/r8/internal/By;)V

    new-instance v1, Lcom/android/tools/r8/internal/Ma0;

    invoke-direct {v1, p1, p0}, Lcom/android/tools/r8/internal/Ma0;-><init>(Lcom/android/tools/r8/internal/Tf0;Lcom/android/tools/r8/internal/Na0;)V

    new-instance p1, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    invoke-static {p1}, Lcom/android/tools/r8/internal/pl0;->a(Lcom/android/tools/r8/internal/nl0;)Lcom/android/tools/r8/internal/cx;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/bx;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/bx;-><init>(Lcom/android/tools/r8/internal/cx;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bx;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/bx;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/se0;

    iget-object v1, p1, Lcom/android/tools/r8/internal/se0;->c:Lcom/android/tools/r8/internal/Ug0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Ug0;->g:Ljava/util/List;

    const-string v2, "entry.configValueList"

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/tools/r8/internal/hf;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/hf;-><init>(Ljava/lang/Iterable;)V

    sget-object v1, Lcom/android/tools/r8/internal/ge0;->b:Lcom/android/tools/r8/internal/ge0;

    new-instance v3, Lcom/android/tools/r8/internal/Rs0;

    invoke-direct {v3, v2, v1}, Lcom/android/tools/r8/internal/Rs0;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;)V

    sget-object v1, Lcom/android/tools/r8/internal/ke0;->b:Lcom/android/tools/r8/internal/ke0;

    new-instance v2, Lcom/android/tools/r8/internal/Ax;

    sget-object v4, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/tools/r8/internal/Ax;-><init>(Lcom/android/tools/r8/internal/nl0;Lcom/android/tools/r8/internal/ny;Lcom/android/tools/r8/internal/ny;)V

    new-instance v1, Lcom/android/tools/r8/internal/zx;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/zx;-><init>(Lcom/android/tools/r8/internal/Ax;)V

    :goto_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zx;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zx;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/hh0;

    const-string v3, "it"

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/GJ;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/se0;->a(Lcom/android/tools/r8/internal/hh0;)V

    goto :goto_0

    :cond_1
    return-void
.end method
