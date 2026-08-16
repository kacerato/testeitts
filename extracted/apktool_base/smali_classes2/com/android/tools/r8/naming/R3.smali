.class public final synthetic Lcom/android/tools/r8/naming/R3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/android/tools/r8/naming/M0;

.field public final synthetic e:Lcom/android/tools/r8/naming/k$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/k$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/naming/R3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/android/tools/r8/naming/R3;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/naming/R3;->d:Lcom/android/tools/r8/naming/M0;

    iput-object p4, p0, Lcom/android/tools/r8/naming/R3;->e:Lcom/android/tools/r8/naming/k$b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/naming/R3;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/android/tools/r8/naming/R3;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/naming/R3;->d:Lcom/android/tools/r8/naming/M0;

    iget-object v3, p0, Lcom/android/tools/r8/naming/R3;->e:Lcom/android/tools/r8/naming/k$b;

    check-cast p1, Lcom/android/tools/r8/naming/k$b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/naming/r;->a(Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/naming/M0;Lcom/android/tools/r8/naming/k$b;Lcom/android/tools/r8/naming/k$b;)V

    return-void
.end method
