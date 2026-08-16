.class public final synthetic Lcom/android/tools/r8/internal/zF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/GD;

.field public final synthetic b:Lcom/android/tools/r8/internal/VJ;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/GD;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zF0;->a:Lcom/android/tools/r8/internal/GD;

    iput-object p2, p0, Lcom/android/tools/r8/internal/zF0;->b:Lcom/android/tools/r8/internal/VJ;

    iput-object p3, p0, Lcom/android/tools/r8/internal/zF0;->c:Lcom/android/tools/r8/graph/H5;

    iput p4, p0, Lcom/android/tools/r8/internal/zF0;->d:I

    iput-object p5, p0, Lcom/android/tools/r8/internal/zF0;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/zF0;->a:Lcom/android/tools/r8/internal/GD;

    iget-object v1, p0, Lcom/android/tools/r8/internal/zF0;->b:Lcom/android/tools/r8/internal/VJ;

    iget-object v2, p0, Lcom/android/tools/r8/internal/zF0;->c:Lcom/android/tools/r8/graph/H5;

    iget v3, p0, Lcom/android/tools/r8/internal/zF0;->d:I

    iget-object v4, p0, Lcom/android/tools/r8/internal/zF0;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/GD;->b(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;ILjava/util/Set;)Z

    move-result v0

    return v0
.end method
