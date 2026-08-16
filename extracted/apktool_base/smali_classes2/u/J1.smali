.class public final synthetic Lu/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/dex/w;

.field public final synthetic c:Lcom/android/tools/r8/dex/v;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/android/tools/r8/internal/h80;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/dex/w;Lcom/android/tools/r8/dex/v;Ljava/util/List;Lcom/android/tools/r8/internal/h80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/J1;->b:Lcom/android/tools/r8/dex/w;

    iput-object p2, p0, Lu/J1;->c:Lcom/android/tools/r8/dex/v;

    iput-object p3, p0, Lu/J1;->d:Ljava/util/List;

    iput-object p4, p0, Lu/J1;->e:Lcom/android/tools/r8/internal/h80;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lu/J1;->b:Lcom/android/tools/r8/dex/w;

    iget-object v1, p0, Lu/J1;->c:Lcom/android/tools/r8/dex/v;

    iget-object v2, p0, Lu/J1;->d:Ljava/util/List;

    iget-object v3, p0, Lu/J1;->e:Lcom/android/tools/r8/internal/h80;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/dex/w;->a(Lcom/android/tools/r8/dex/v;Ljava/util/List;Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method
