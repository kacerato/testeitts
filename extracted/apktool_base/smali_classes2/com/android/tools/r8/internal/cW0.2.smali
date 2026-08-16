.class public final synthetic Lcom/android/tools/r8/internal/cW0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/SJ;

.field public final synthetic c:Lcom/android/tools/r8/graph/H0;

.field public final synthetic d:Lcom/android/tools/r8/graph/Z4$c;

.field public final synthetic e:Lcom/android/tools/r8/graph/H5;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/SJ;Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cW0;->b:Lcom/android/tools/r8/internal/SJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/cW0;->c:Lcom/android/tools/r8/graph/H0;

    iput-object p3, p0, Lcom/android/tools/r8/internal/cW0;->d:Lcom/android/tools/r8/graph/Z4$c;

    iput-object p4, p0, Lcom/android/tools/r8/internal/cW0;->e:Lcom/android/tools/r8/graph/H5;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/cW0;->b:Lcom/android/tools/r8/internal/SJ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/cW0;->c:Lcom/android/tools/r8/graph/H0;

    iget-object v2, p0, Lcom/android/tools/r8/internal/cW0;->d:Lcom/android/tools/r8/graph/Z4$c;

    iget-object v3, p0, Lcom/android/tools/r8/internal/cW0;->e:Lcom/android/tools/r8/graph/H5;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/SJ;->a(Lcom/android/tools/r8/graph/H0;Lcom/android/tools/r8/graph/Z4$c;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/m80;

    move-result-object p1

    return-object p1
.end method
