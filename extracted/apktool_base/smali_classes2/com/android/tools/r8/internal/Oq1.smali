.class public final synthetic Lcom/android/tools/r8/internal/Oq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/qP;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/android/tools/r8/internal/oP;

.field public final synthetic d:Lcom/android/tools/r8/internal/DN;

.field public final synthetic e:Lcom/android/tools/r8/internal/QM;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/qP;Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Oq1;->a:Lcom/android/tools/r8/internal/qP;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Oq1;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Oq1;->c:Lcom/android/tools/r8/internal/oP;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Oq1;->d:Lcom/android/tools/r8/internal/DN;

    iput-object p5, p0, Lcom/android/tools/r8/internal/Oq1;->e:Lcom/android/tools/r8/internal/QM;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/Oq1;->a:Lcom/android/tools/r8/internal/qP;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Oq1;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Oq1;->c:Lcom/android/tools/r8/internal/oP;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Oq1;->d:Lcom/android/tools/r8/internal/DN;

    iget-object v4, p0, Lcom/android/tools/r8/internal/Oq1;->e:Lcom/android/tools/r8/internal/QM;

    move-object v5, p1

    check-cast v5, Lcom/android/tools/r8/internal/cP;

    move-object v6, p2

    check-cast v6, Ljava/util/Set;

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/qP;->a(Ljava/util/List;Lcom/android/tools/r8/internal/oP;Lcom/android/tools/r8/internal/DN;Lcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/cP;Ljava/util/Set;)V

    return-void
.end method
