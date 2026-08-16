.class public final synthetic Lcom/android/tools/r8/internal/CX0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Tj;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Tj;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/CX0;->b:Lcom/android/tools/r8/internal/Tj;

    iput-object p2, p0, Lcom/android/tools/r8/internal/CX0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/CX0;->b:Lcom/android/tools/r8/internal/Tj;

    iget-object v1, p0, Lcom/android/tools/r8/internal/CX0;->c:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Tj;->a(Ljava/util/List;Ljava/lang/Object;)Lcom/android/tools/r8/internal/Rj;

    move-result-object p1

    return-object p1
.end method
