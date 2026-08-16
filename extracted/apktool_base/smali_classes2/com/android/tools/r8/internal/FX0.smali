.class public final synthetic Lcom/android/tools/r8/internal/FX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Tj0;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/Optional;

.field public final synthetic e:Lcom/android/tools/r8/internal/Mj0;

.field public final synthetic f:Ljava/util/OptionalInt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Tj0;Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/FX0;->b:Lcom/android/tools/r8/internal/Tj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/FX0;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/FX0;->d:Ljava/util/Optional;

    iput-object p4, p0, Lcom/android/tools/r8/internal/FX0;->e:Lcom/android/tools/r8/internal/Mj0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/FX0;->f:Ljava/util/OptionalInt;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/FX0;->b:Lcom/android/tools/r8/internal/Tj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/FX0;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/FX0;->d:Ljava/util/Optional;

    iget-object v3, p0, Lcom/android/tools/r8/internal/FX0;->e:Lcom/android/tools/r8/internal/Mj0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/FX0;->f:Ljava/util/OptionalInt;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Tj0;->a(Ljava/util/List;Ljava/util/Optional;Lcom/android/tools/r8/internal/Mj0;Ljava/util/OptionalInt;Ljava/util/List;)V

    return-void
.end method
