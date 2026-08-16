.class public final synthetic Lcom/android/tools/r8/internal/pS0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Jy;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Q1;

.field public final synthetic c:Lcom/android/tools/r8/internal/f6;

.field public final synthetic d:Lcom/android/tools/r8/internal/T1;

.field public final synthetic e:Lcom/android/tools/r8/internal/V1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Q1;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/pS0;->b:Lcom/android/tools/r8/internal/Q1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/pS0;->c:Lcom/android/tools/r8/internal/f6;

    iput-object p3, p0, Lcom/android/tools/r8/internal/pS0;->d:Lcom/android/tools/r8/internal/T1;

    iput-object p4, p0, Lcom/android/tools/r8/internal/pS0;->e:Lcom/android/tools/r8/internal/V1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/pS0;->b:Lcom/android/tools/r8/internal/Q1;

    iget-object v1, p0, Lcom/android/tools/r8/internal/pS0;->c:Lcom/android/tools/r8/internal/f6;

    iget-object v2, p0, Lcom/android/tools/r8/internal/pS0;->d:Lcom/android/tools/r8/internal/T1;

    iget-object v3, p0, Lcom/android/tools/r8/internal/pS0;->e:Lcom/android/tools/r8/internal/V1;

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Q1;->a(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/internal/V1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/j1;

    move-result-object p1

    return-object p1
.end method
