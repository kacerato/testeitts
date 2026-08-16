.class public final synthetic Lcom/android/tools/r8/internal/Ks1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sd;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Lcom/android/tools/r8/internal/Bq;

.field public final synthetic e:Lcom/android/tools/r8/internal/UY;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/sd;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ks1;->b:Lcom/android/tools/r8/internal/sd;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ks1;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ks1;->d:Lcom/android/tools/r8/internal/Bq;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ks1;->e:Lcom/android/tools/r8/internal/UY;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ks1;->b:Lcom/android/tools/r8/internal/sd;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ks1;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ks1;->d:Lcom/android/tools/r8/internal/Bq;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ks1;->e:Lcom/android/tools/r8/internal/UY;

    check-cast p1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/sd;->c(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/UY;Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
