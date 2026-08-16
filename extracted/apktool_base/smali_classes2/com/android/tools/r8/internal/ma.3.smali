.class public final Lcom/android/tools/r8/internal/ma;
.super Lcom/android/tools/r8/internal/DX;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    const/high16 v0, 0x90000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/DX;-><init>(ILcom/android/tools/r8/internal/DX;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/ma;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/ma;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final b(ILcom/android/tools/r8/internal/XQ;)V
    .locals 1

    iget-object p2, p0, Lcom/android/tools/r8/internal/ma;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/ma;->c:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
