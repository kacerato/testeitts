.class public final synthetic Lcom/android/tools/r8/internal/ee1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/iZ;

.field public final synthetic c:Lcom/android/tools/r8/graph/H5;

.field public final synthetic d:Lcom/android/tools/r8/internal/ea;

.field public final synthetic e:Lcom/android/tools/r8/internal/Z70;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/iZ;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ee1;->b:Lcom/android/tools/r8/internal/iZ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ee1;->c:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/ee1;->d:Lcom/android/tools/r8/internal/ea;

    iput-object p4, p0, Lcom/android/tools/r8/internal/ee1;->e:Lcom/android/tools/r8/internal/Z70;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/ee1;->b:Lcom/android/tools/r8/internal/iZ;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ee1;->c:Lcom/android/tools/r8/graph/H5;

    iget-object v2, p0, Lcom/android/tools/r8/internal/ee1;->d:Lcom/android/tools/r8/internal/ea;

    iget-object v3, p0, Lcom/android/tools/r8/internal/ee1;->e:Lcom/android/tools/r8/internal/Z70;

    check-cast p1, Lcom/android/tools/r8/internal/W9;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/iZ;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/internal/W9;)V

    return-void
.end method
