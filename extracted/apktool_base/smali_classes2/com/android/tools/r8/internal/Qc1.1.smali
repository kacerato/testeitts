.class public final synthetic Lcom/android/tools/r8/internal/Qc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ZH;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/hb;

.field public final synthetic b:[Lcom/android/tools/r8/graph/M2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hb;[Lcom/android/tools/r8/graph/M2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qc1;->a:Lcom/android/tools/r8/internal/hb;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Qc1;->b:[Lcom/android/tools/r8/graph/M2;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qc1;->a:Lcom/android/tools/r8/internal/hb;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Qc1;->b:[Lcom/android/tools/r8/graph/M2;

    check-cast p2, Lcom/android/tools/r8/internal/jy;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/hb;->a([Lcom/android/tools/r8/graph/M2;ILcom/android/tools/r8/internal/jy;)V

    return-void
.end method
