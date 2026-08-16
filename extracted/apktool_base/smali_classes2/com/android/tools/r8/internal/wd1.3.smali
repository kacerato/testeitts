.class public final synthetic Lcom/android/tools/r8/internal/wd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Cf;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/wd1;->b:Lcom/android/tools/r8/internal/Cf;

    iput-object p2, p0, Lcom/android/tools/r8/internal/wd1;->c:Lcom/android/tools/r8/graph/H2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd1;->b:Lcom/android/tools/r8/internal/Cf;

    iget-object v1, p0, Lcom/android/tools/r8/internal/wd1;->c:Lcom/android/tools/r8/graph/H2;

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/hm;->b(Lcom/android/tools/r8/internal/Cf;Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/internal/Gf;

    move-result-object v0

    return-object v0
.end method
