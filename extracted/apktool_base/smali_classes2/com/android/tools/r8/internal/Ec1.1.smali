.class public final synthetic Lcom/android/tools/r8/internal/Ec1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/hE;

.field public final synthetic c:Lcom/android/tools/r8/internal/AA;

.field public final synthetic d:Lcom/android/tools/r8/internal/eE;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/hE;Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/eE;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ec1;->b:Lcom/android/tools/r8/internal/hE;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ec1;->c:Lcom/android/tools/r8/internal/AA;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ec1;->d:Lcom/android/tools/r8/internal/eE;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ec1;->b:Lcom/android/tools/r8/internal/hE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ec1;->c:Lcom/android/tools/r8/internal/AA;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ec1;->d:Lcom/android/tools/r8/internal/eE;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/hE;->a(Lcom/android/tools/r8/internal/AA;Lcom/android/tools/r8/internal/eE;Ljava/util/List;)Lcom/android/tools/r8/internal/iE;

    move-result-object p1

    return-object p1
.end method
