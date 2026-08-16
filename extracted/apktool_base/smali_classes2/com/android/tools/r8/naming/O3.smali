.class public final synthetic Lcom/android/tools/r8/naming/O3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/naming/o;

.field public final synthetic c:Lcom/android/tools/r8/naming/k$b;

.field public final synthetic d:Lcom/android/tools/r8/naming/k$b;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/naming/o;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/O3;->b:Lcom/android/tools/r8/naming/o;

    iput-object p2, p0, Lcom/android/tools/r8/naming/O3;->c:Lcom/android/tools/r8/naming/k$b;

    iput-object p3, p0, Lcom/android/tools/r8/naming/O3;->d:Lcom/android/tools/r8/naming/k$b;

    iput-object p4, p0, Lcom/android/tools/r8/naming/O3;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/O3;->b:Lcom/android/tools/r8/naming/o;

    iget-object v1, p0, Lcom/android/tools/r8/naming/O3;->c:Lcom/android/tools/r8/naming/k$b;

    iget-object v2, p0, Lcom/android/tools/r8/naming/O3;->d:Lcom/android/tools/r8/naming/k$b;

    iget-object v3, p0, Lcom/android/tools/r8/naming/O3;->e:Ljava/util/List;

    check-cast p1, Lcom/android/tools/r8/naming/mappinginformation/e;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/o;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;Ljava/util/List;Lcom/android/tools/r8/naming/mappinginformation/e;)V

    return-void
.end method
