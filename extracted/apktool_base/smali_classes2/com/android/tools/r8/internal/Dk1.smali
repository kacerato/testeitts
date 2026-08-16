.class public final synthetic Lcom/android/tools/r8/internal/Dk1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/mX;

.field public final synthetic c:Lcom/android/tools/r8/internal/oX;

.field public final synthetic d:Lcom/android/tools/r8/graph/H2;

.field public final synthetic e:Lcom/android/tools/r8/internal/lX;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/mX;Lcom/android/tools/r8/internal/oX;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/lX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dk1;->b:Lcom/android/tools/r8/internal/mX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dk1;->c:Lcom/android/tools/r8/internal/oX;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dk1;->d:Lcom/android/tools/r8/graph/H2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Dk1;->e:Lcom/android/tools/r8/internal/lX;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dk1;->b:Lcom/android/tools/r8/internal/mX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dk1;->c:Lcom/android/tools/r8/internal/oX;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dk1;->d:Lcom/android/tools/r8/graph/H2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Dk1;->e:Lcom/android/tools/r8/internal/lX;

    check-cast p1, Lcom/android/tools/r8/graph/H2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/mX;->a(Lcom/android/tools/r8/internal/oX;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/lX;Lcom/android/tools/r8/graph/H2;)V

    return-void
.end method
