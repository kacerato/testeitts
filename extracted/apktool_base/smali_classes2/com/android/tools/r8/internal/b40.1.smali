.class public final Lcom/android/tools/r8/internal/b40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/m80;

.field public final b:Lcom/android/tools/r8/internal/eX;

.field public final c:Lcom/android/tools/r8/internal/Ef;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/eX;Lcom/android/tools/r8/internal/Ef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/b40;->a:Lcom/android/tools/r8/internal/m80;

    iput-object p1, p0, Lcom/android/tools/r8/internal/b40;->b:Lcom/android/tools/r8/internal/eX;

    iput-object p2, p0, Lcom/android/tools/r8/internal/b40;->c:Lcom/android/tools/r8/internal/Ef;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/b40;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/b40;->a:Lcom/android/tools/r8/internal/m80;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-object p0
.end method
