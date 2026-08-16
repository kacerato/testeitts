.class public final synthetic Lcom/android/tools/r8/internal/o81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/d80;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/internal/eu;

.field public final synthetic e:Lcom/android/tools/r8/internal/gu;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/d80;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/o81;->b:Lcom/android/tools/r8/internal/d80;

    iput-object p2, p0, Lcom/android/tools/r8/internal/o81;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/o81;->d:Lcom/android/tools/r8/internal/eu;

    iput-object p4, p0, Lcom/android/tools/r8/internal/o81;->e:Lcom/android/tools/r8/internal/gu;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/o81;->b:Lcom/android/tools/r8/internal/d80;

    iget-object v1, p0, Lcom/android/tools/r8/internal/o81;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/o81;->d:Lcom/android/tools/r8/internal/eu;

    iget-object v3, p0, Lcom/android/tools/r8/internal/o81;->e:Lcom/android/tools/r8/internal/gu;

    check-cast p1, Lcom/android/tools/r8/synthesis/W;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/d80;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/eu;Lcom/android/tools/r8/internal/gu;Lcom/android/tools/r8/synthesis/W;)V

    return-void
.end method
