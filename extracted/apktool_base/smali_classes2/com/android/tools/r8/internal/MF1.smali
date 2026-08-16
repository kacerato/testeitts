.class public final synthetic Lcom/android/tools/r8/internal/MF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/zu;

.field public final synthetic c:Lcom/android/tools/r8/graph/H2;

.field public final synthetic d:Ljava/util/Set;

.field public final synthetic e:Lcom/android/tools/r8/internal/Jo0;

.field public final synthetic f:Lcom/android/tools/r8/internal/kC;

.field public final synthetic g:Lcom/android/tools/r8/internal/SG;

.field public final synthetic h:Z

.field public final synthetic i:Lcom/android/tools/r8/internal/SG;

.field public final synthetic j:Lcom/android/tools/r8/internal/IC;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/zu;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Jo0;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/SG;ZLcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/IC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/MF1;->b:Lcom/android/tools/r8/internal/zu;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MF1;->c:Lcom/android/tools/r8/graph/H2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MF1;->d:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/tools/r8/internal/MF1;->e:Lcom/android/tools/r8/internal/Jo0;

    iput-object p5, p0, Lcom/android/tools/r8/internal/MF1;->f:Lcom/android/tools/r8/internal/kC;

    iput-object p6, p0, Lcom/android/tools/r8/internal/MF1;->g:Lcom/android/tools/r8/internal/SG;

    iput-boolean p7, p0, Lcom/android/tools/r8/internal/MF1;->h:Z

    iput-object p8, p0, Lcom/android/tools/r8/internal/MF1;->i:Lcom/android/tools/r8/internal/SG;

    iput-object p9, p0, Lcom/android/tools/r8/internal/MF1;->j:Lcom/android/tools/r8/internal/IC;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/android/tools/r8/internal/MF1;->b:Lcom/android/tools/r8/internal/zu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MF1;->c:Lcom/android/tools/r8/graph/H2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MF1;->d:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/tools/r8/internal/MF1;->e:Lcom/android/tools/r8/internal/Jo0;

    iget-object v4, p0, Lcom/android/tools/r8/internal/MF1;->f:Lcom/android/tools/r8/internal/kC;

    iget-object v5, p0, Lcom/android/tools/r8/internal/MF1;->g:Lcom/android/tools/r8/internal/SG;

    iget-boolean v6, p0, Lcom/android/tools/r8/internal/MF1;->h:Z

    iget-object v7, p0, Lcom/android/tools/r8/internal/MF1;->i:Lcom/android/tools/r8/internal/SG;

    iget-object v8, p0, Lcom/android/tools/r8/internal/MF1;->j:Lcom/android/tools/r8/internal/IC;

    move-object v9, p1

    check-cast v9, Lcom/android/tools/r8/graph/F5;

    move-object v10, p2

    check-cast v10, Lcom/android/tools/r8/internal/Zu;

    invoke-virtual/range {v0 .. v10}, Lcom/android/tools/r8/internal/zu;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Jo0;Lcom/android/tools/r8/internal/kC;Lcom/android/tools/r8/internal/SG;ZLcom/android/tools/r8/internal/SG;Lcom/android/tools/r8/internal/IC;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Zu;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    return-object p1
.end method
